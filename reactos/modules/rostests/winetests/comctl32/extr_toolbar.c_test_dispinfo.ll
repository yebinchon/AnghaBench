; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_dispinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_dispinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@TB_LOADIMAGES = common dso_local global i32 0, align 4
@IDB_HIST_SMALL_COLOR = common dso_local global i64 0, align 8
@HINST_COMMCTRL = common dso_local global i64 0, align 8
@TB_ADDBUTTONSA = common dso_local global i32 0, align 4
@TBNF_IMAGE = common dso_local global i64 0, align 8
@g_dwExpectedDispInfoMask = common dso_local global i64 0, align 8
@CCM_GETUNICODEFORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SW_SHOW = common dso_local global i32 0, align 4
@CCM_SETUNICODEFORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dispinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dispinfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x %struct.TYPE_4__], align 16
  %3 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %4 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 20, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %8 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 21, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %18 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store i32 -1, i32* %23, align 4
  %24 = call i32 @rebuild_toolbar(i32** %1)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @TB_LOADIMAGES, align 4
  %27 = load i64, i64* @IDB_HIST_SMALL_COLOR, align 8
  %28 = load i64, i64* @HINST_COMMCTRL, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @SendMessageA(i32* %25, i32 %26, i64 %27, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @TB_ADDBUTTONSA, align 4
  %33 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %2, i64 0, i64 0
  %34 = ptrtoint %struct.TYPE_4__* %33 to i32
  %35 = call i64 @SendMessageA(i32* %31, i32 %32, i64 2, i32 %34)
  %36 = load i64, i64* @TBNF_IMAGE, align 8
  store i64 %36, i64* @g_dwExpectedDispInfoMask, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @CCM_GETUNICODEFORMAT, align 4
  %39 = call i64 @SendMessageA(i32* %37, i32 %38, i64 0, i32 0)
  %40 = call i32 @compare(i64 %39, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @SW_SHOW, align 4
  %43 = call i32 @ShowWindow(i32* %41, i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @UpdateWindow(i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* @CCM_SETUNICODEFORMAT, align 4
  %48 = load i64, i64* @TRUE, align 8
  %49 = call i64 @SendMessageA(i32* %46, i32 %47, i64 %48, i32 0)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = call i32 @compare(i64 %50, i64 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @CCM_GETUNICODEFORMAT, align 4
  %55 = call i64 @SendMessageA(i32* %53, i32 %54, i64 0, i32 0)
  %56 = call i32 @compare(i64 %55, i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %1, align 8
  %58 = load i64, i64* @FALSE, align 8
  %59 = call i32 @InvalidateRect(i32* %57, i32* null, i64 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @UpdateWindow(i32* %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* @CCM_SETUNICODEFORMAT, align 4
  %64 = load i64, i64* @FALSE, align 8
  %65 = call i64 @SendMessageA(i32* %62, i32 %63, i64 %64, i32 0)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @TRUE, align 8
  %68 = call i32 @compare(i64 %66, i64 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* @CCM_GETUNICODEFORMAT, align 4
  %71 = call i64 @SendMessageA(i32* %69, i32 %70, i64 0, i32 0)
  %72 = call i32 @compare(i64 %71, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32*, i32** %1, align 8
  %74 = load i64, i64* @FALSE, align 8
  %75 = call i32 @InvalidateRect(i32* %73, i32* null, i64 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @UpdateWindow(i32* %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @DestroyWindow(i32* %78)
  store i64 0, i64* @g_dwExpectedDispInfoMask, align 8
  ret void
}

declare dso_local i32 @rebuild_toolbar(i32**) #1

declare dso_local i64 @SendMessageA(i32*, i32, i64, i32) #1

declare dso_local i32 @compare(i64, i64, i8*) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32*) #1

declare dso_local i32 @InvalidateRect(i32*, i32*, i64) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
