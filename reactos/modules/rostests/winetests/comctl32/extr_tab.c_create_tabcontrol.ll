; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_create_tabcontrol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_create_tabcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@create_tabcontrol.text1 = internal global [6 x i8] c"Tab 1\00", align 1
@create_tabcontrol.text2 = internal global [11 x i8] c"Wide Tab 2\00", align 1
@create_tabcontrol.text3 = internal global [4 x i8] c"T 3\00", align 1
@WC_TABCONTROLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TestTab\00", align 1
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@TCS_FOCUSNEVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to create tab wnd\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@hFont = common dso_local global i64 0, align 8
@TCM_INSERTITEMA = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @create_tabcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_tabcontrol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @WC_TABCONTROLA, align 4
  %8 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %9 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @TCS_FOCUSNEVER, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @CreateWindowA(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14, i32 10, i32 10, i32 300, i32 100, i32* null, i32* null, i32* null, i32 0)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @GWL_STYLE, align 4
  %22 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %23 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @TCS_FOCUSNEVER, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @SetWindowLongA(i32* %20, i32 %21, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @WM_SETFONT, align 4
  %32 = load i64, i64* @hFont, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @SendMessageA(i32* %30, i32 %31, i32 0, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @create_tabcontrol.text1, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @TCM_INSERTITEMA, align 4
  %41 = ptrtoint %struct.TYPE_2__* %6 to i32
  %42 = call i32 @SendMessageA(i32* %39, i32 %40, i32 0, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @create_tabcontrol.text2, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @TCM_INSERTITEMA, align 4
  %47 = ptrtoint %struct.TYPE_2__* %6 to i32
  %48 = call i32 @SendMessageA(i32* %45, i32 %46, i32 1, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_tabcontrol.text3, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 2, i32* %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @TCM_INSERTITEMA, align 4
  %53 = ptrtoint %struct.TYPE_2__* %6 to i32
  %54 = call i32 @SendMessageA(i32* %51, i32 %52, i32 2, i32 %53)
  %55 = load i64, i64* @winetest_interactive, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %2
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @SW_SHOW, align 4
  %60 = call i32 @ShowWindow(i32* %58, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @RDW_UPDATENOW, align 4
  %63 = call i32 @RedrawWindow(i32* %61, i32* null, i32 0, i32 %62)
  %64 = call i32 @Sleep(i32 1000)
  br label %65

65:                                               ; preds = %57, %2
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32* @CreateWindowA(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SetWindowLongA(i32*, i32, i32) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @RedrawWindow(i32*, i32*, i32, i32) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
