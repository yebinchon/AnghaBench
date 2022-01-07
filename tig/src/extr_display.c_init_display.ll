; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_init_display.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"TIG_NO_DISPLAY\00", align 1
@opt_tty = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't initialize display without tty\00", align 1
@done_display = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to register done_display\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@cursed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to open tty for output\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to initialize curses\00", align 1
@stdscr = common dso_local global i32 0, align 4
@status_win = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to create status window\00", align 1
@LINE_STATUS = common dso_local global i32 0, align 4
@opt_mouse = common dso_local global i32 0, align 4
@opt_tab_size = common dso_local global i32 0, align 4
@TABSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"XTERM_VERSION\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TERM_PROGRAM\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gnome-terminal\00", align 1
@use_scroll_status_wclear = common dso_local global i32 0, align 4
@use_scroll_redrawwin = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"xrvt-xpm\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Apple_Terminal\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"iTerm.app\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_display() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i8* %6, null
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @done_display, align 4
  %17 = call i64 @atexit(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @STDIN_FILENO, align 4
  %26 = call i64 @isatty(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call i32 (...) @initscr()
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* @cursed, align 4
  br label %55

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32* [ %38, %37 ], [ %40, %39 ]
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt_tty, i32 0, i32 0), align 8
  %50 = call i32 @newterm(i32* null, i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @cursed, align 4
  br label %55

55:                                               ; preds = %47, %28
  %56 = load i32, i32* @cursed, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 (...) @set_terminal_modes()
  %62 = call i32 (...) @init_colors()
  %63 = load i32, i32* @stdscr, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @getmaxyx(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @newwin(i32 1, i32 %67, i32 %69, i32 0)
  store i32 %70, i32* @status_win, align 4
  %71 = load i32, i32* @status_win, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %60
  %74 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %60
  %76 = load i32, i32* @status_win, align 4
  %77 = call i32 @keypad(i32 %76, i32 1)
  %78 = load i32, i32* @status_win, align 4
  %79 = load i32, i32* @LINE_STATUS, align 4
  %80 = call i32 @get_line_attr(i32* null, i32 %79)
  %81 = call i32 @wbkgdset(i32 %78, i32 %80)
  %82 = load i32, i32* @opt_mouse, align 4
  %83 = call i32 @enable_mouse(i32 %82)
  %84 = load i32, i32* @opt_tab_size, align 4
  store i32 %84, i32* @TABSIZE, align 4
  %85 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %97

88:                                               ; preds = %75
  %89 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %95

93:                                               ; preds = %88
  %94 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i8* [ %92, %91 ], [ %94, %93 ]
  br label %97

97:                                               ; preds = %95, %87
  %98 = phi i8* [ null, %87 ], [ %96, %95 ]
  store i8* %98, i8** %2, align 8
  %99 = load i8*, i8** %2, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** %2, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 1, i32* @use_scroll_status_wclear, align 4
  store i32 0, i32* @use_scroll_redrawwin, align 4
  br label %124

106:                                              ; preds = %101, %97
  %107 = load i8*, i8** %2, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i8*, i8** %2, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i8*, i8** %2, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %2, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117, %113, %109
  store i32 0, i32* @use_scroll_redrawwin, align 4
  store i32 0, i32* @use_scroll_status_wclear, align 4
  br label %123

122:                                              ; preds = %117, %106
  store i32 1, i32* @use_scroll_redrawwin, align 4
  store i32 0, i32* @use_scroll_status_wclear, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123, %105
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @newterm(i32*, i32*, i32*) #1

declare dso_local i32 @set_terminal_modes(...) #1

declare dso_local i32 @init_colors(...) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @wbkgdset(i32, i32) #1

declare dso_local i32 @get_line_attr(i32*, i32) #1

declare dso_local i32 @enable_mouse(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
