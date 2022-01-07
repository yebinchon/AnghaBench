; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_init_check.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@app_context = common dso_local global i32* null, align 8
@VIM_NAME = common dso_local global i32 0, align 4
@VIM_CLASS = common dso_local global i32 0, align 4
@cmdline_options = common dso_local global i32 0, align 4
@CARDINAL = common dso_local global i32 0, align 4
@gui_argc = common dso_local global i32 0, align 4
@gui_argv = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@e_opendisp = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init_check() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @open_app_context()
  %3 = load i32*, i32** @app_context, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load i32*, i32** @app_context, align 8
  %7 = load i32, i32* @VIM_NAME, align 4
  %8 = load i32, i32* @VIM_CLASS, align 4
  %9 = load i32, i32* @cmdline_options, align 4
  %10 = load i32, i32* @cmdline_options, align 4
  %11 = call i32 @XtNumber(i32 %10)
  %12 = load i32, i32* @CARDINAL, align 4
  %13 = load i32, i32* @gui_argc, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @gui_argv, align 4
  %16 = call i32* @XtOpenDisplay(i32* %6, i32 0, i32 %7, i32 %8, i32 %9, i32 %11, i32 %14, i32 %15)
  store i32* %16, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  br label %17

17:                                               ; preds = %5, %0
  %18 = load i32*, i32** @app_context, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %25 = load i32, i32* @e_opendisp, align 4
  %26 = call i32 @_(i32 %25)
  %27 = call i32 @EMSG(i32 %26)
  %28 = load i32, i32* @FAIL, align 4
  store i32 %28, i32* %1, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @OK, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @open_app_context(...) #1

declare dso_local i32* @XtOpenDisplay(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XtNumber(i32) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
