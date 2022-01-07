; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/old_wordpad/extr_editwnd.c_InitEditWnd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/old_wordpad/extr_editwnd.c_InitEditWnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"RICHED20.DLL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RICHEDIT_CLASS = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @InitEditWnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitEditWnd(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32* @LoadLibrary(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @GetError(i32 0)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load i32, i32* @RICHEDIT_CLASS, align 4
  %15 = load i32, i32* @WS_CHILD, align 4
  %16 = load i32, i32* @WS_VISIBLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WS_VSCROLL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WS_HSCROLL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ES_MULTILINE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @hInstance, align 4
  %32 = call i32* @CreateWindowEx(i32 0, i32 %14, i32* null, i32 %27, i32 0, i32 0, i32 100, i32 100, i32 %30, i32* null, i32 %31, i32* null)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %13
  %40 = call i32 @GetError(i32 0)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %13
  %43 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %44 = call i64 @GetStockObject(i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @WM_SETFONT, align 4
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @MAKELPARAM(i32 %51, i32 0)
  %53 = call i32 @SendMessage(i32* %47, i32 %48, i32 %50, i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %39, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetError(i32) #1

declare dso_local i32* @CreateWindowEx(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @SendMessage(i32*, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
