% JoA.cls - JoA期刊论文模板类文件
% 适配A4纸张，基于article类扩展
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JoA}[2026/02/21 JoA Journal Template v1.0]

% 继承基础article类（A4纸张）
\LoadClass[a4paper]{article}

% ===================== 基础包引入 =====================
\usepackage{ctex} % 中文支持
\usepackage{geometry} % 页面布局
\usepackage[utf8]{inputenc} % 编码
\usepackage[T1]{fontenc} % 字体编码
\usepackage{newtxtext, newtxmath} % 西文字体
\usepackage{amsmath} % 数学公式
\usepackage{graphicx} % 图片
\usepackage{float} % 浮动体固定
\usepackage{booktabs} % 表格线
\usepackage{caption} % 图表标题
\usepackage{tabularx} % 自适应表格
\usepackage{xcolor} % 颜色
\usepackage{titlesec} % 标题格式
\usepackage{setspace} % 行距
\usepackage{indentfirst} % 首行缩进
\usepackage{multicol} % 多列布局
\usepackage{cite} % 参考文献
\usepackage{fancyhdr} % 页眉页脚

% ===================== 页面布局配置 =====================
\geometry{
	left=2.54cm, 
	right=2.54cm, 
	top=3.8cm, 
	bottom=2.54cm, 
	headheight=2.5cm, 
	headsep=0.6cm
}

% ===================== 颜色定义 =====================
\definecolor{myred}{HTML}{C00000}

% ===================== 自定义命令 =====================
% 标题命令（18pt加粗居中）
\newcommand{\JoAtitle}[1]{%
	{\fontsize{18pt}{18pt}\selectfont \bfseries #1\par}
}

% 作者命令（12pt楷体）
\newcommand{\JoAauthor}[1]{%
	{\fontsize{12pt}{12pt}\selectfont \kaishu #1\par}
}

% 单位命令（12pt）
\newcommand{\JoAaffiliation}[1]{%
	{\fontsize{12pt}{12pt}\selectfont #1\par}
}

% 摘要命令（红色加粗标签 + 12pt正文）
\newcommand{\JoAabstract}[1]{%
	\noindent {\color{myred}\fontsize{12pt}{12pt}\selectfont \bfseries 摘 要：}%
	{\fontsize{12pt}{18pt}\selectfont #1\par}
}

% 关键词命令（红色加粗标签 + 12pt正文）
\newcommand{\JoAkeyword}[1]{%
	\noindent {\color{myred}\fontsize{12pt}{12pt}\selectfont \bfseries 关键词：}%
	{\fontsize{12pt}{18pt}\selectfont #1\par}
}

% 双语图表标题命令
\newcommand{\doublefigcaption}[2]{
	\caption{#1\\\textbf{Fig. \thefigure} #2}
}
\newcommand{\doubletblcaption}[2]{
	\caption{#1\\\textbf{Table. \thetable} #2}
}

% ===================== 全局格式配置 =====================
% 正文基础字体和行距
\renewcommand{\normalsize}{\fontsize{12pt}{18pt}\selectfont}
\setlength{\parskip}{0pt} % 段落间距
\onehalfspacing % 1.5倍行距
\setlength{\parindent}{2em} % 首行缩进2字符

% 图表标题格式
\captionsetup{
	figurename=图,
	tablename=表,
	labelsep=quad,
	justification=centering,
	font={small},
	skip=5pt
}

% 章节标题格式
\titleformat{\section}
{\color{myred}\bfseries\fontsize{12pt}{12pt}\selectfont}
{\thesection.}
{0.5em}
{}
\titlespacing*{\section}{0pt}{0.9\baselineskip}{1.0ex plus .2ex}

\titleformat{\subsection}
{\color{myred}\bfseries\fontsize{12pt}{12pt}\selectfont}
{\thesubsection}
{0.5em}
{}
\titlespacing*{\subsection}{0pt}{1.0ex plus .2ex minus .2ex}{1.0ex plus .2ex}

% 参考文献格式
\renewcommand{\refname}{参考文献（References）}
\makeatletter
\renewcommand{\thebibliography}[1]{%
	\section*{\refname}%
	\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
	\fontsize{9pt}{9pt}\selectfont
	\singlespacing
	\list{[\arabic{enumi}]}{%
		\settowidth\labelwidth{[#1]}%
		\leftmargin\labelwidth%
		\advance\leftmargin\labelsep%
		\usecounter{enumi}%
		\topsep=0pt
		\partopsep=0pt
		\itemsep=0pt
		\parsep=0pt
	}%
	\sloppy\clubpenalty4000\widowpenalty4000%
	\sfcode`\.=1000\relax
}
\makeatother

% 页眉页脚格式
\pagestyle{fancy}
\fancyhf{} % 清空默认页眉页脚
\fancyhead[C]{\includegraphics[width=\textwidth]{header.png}} % 页眉图片
\renewcommand{\headrulewidth}{0pt} % 隐藏页眉线
\fancyfoot[C]{\thepage} % 页脚居中页码

% 结束类文件定义
\endinput