; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_createtoolbarex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_createtoolbarex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hMainWnd = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@IDB_BITMAP_128x15 = common dso_local global i32 0, align 4
@TB_GETBUTTONSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createtoolbarex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createtoolbarex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = bitcast [3 x i32]* %2 to i32**
  %4 = call i32 @ZeroMemory(i32** %3, i32 12)
  %5 = load i32, i32* @hMainWnd, align 4
  %6 = load i32, i32* @WS_VISIBLE, align 4
  %7 = call i32 @GetModuleHandleA(i32* null)
  %8 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %10 = call i32 @pCreateToolbarEx(i32 %5, i32 %6, i32 1, i32 16, i32 %7, i32 %8, i32* %9, i32 3, i32 20, i32 20, i32 16, i32 16, i32 4)
  store i32 %10, i32* %1, align 4
  %11 = call i32 @CHECK_IMAGELIST(i32 16, i32 20, i32 20)
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %14 = call i64 @SendMessageA(i32 %12, i32 %13, i32 0, i32 0)
  %15 = trunc i64 %14 to i32
  %16 = call i32 @compare(i32 %15, i32 1703963, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @DestroyWindow(i32 %17)
  %19 = load i32, i32* @hMainWnd, align 4
  %20 = load i32, i32* @WS_VISIBLE, align 4
  %21 = call i32 @GetModuleHandleA(i32* null)
  %22 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %24 = call i32 @pCreateToolbarEx(i32 %19, i32 %20, i32 1, i32 16, i32 %21, i32 %22, i32* %23, i32 3, i32 4, i32 4, i32 16, i32 16, i32 4)
  store i32 %24, i32* %1, align 4
  %25 = call i32 @CHECK_IMAGELIST(i32 32, i32 4, i32 4)
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %28 = call i64 @SendMessageA(i32 %26, i32 %27, i32 0, i32 0)
  %29 = trunc i64 %28 to i32
  %30 = call i32 @compare(i32 %29, i32 655371, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @DestroyWindow(i32 %31)
  %33 = load i32, i32* @hMainWnd, align 4
  %34 = load i32, i32* @WS_VISIBLE, align 4
  %35 = call i32 @GetModuleHandleA(i32* null)
  %36 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %38 = call i32 @pCreateToolbarEx(i32 %33, i32 %34, i32 1, i32 16, i32 %35, i32 %36, i32* %37, i32 3, i32 0, i32 8, i32 12, i32 12, i32 4)
  store i32 %38, i32* %1, align 4
  %39 = call i32 @CHECK_IMAGELIST(i32 16, i32 12, i32 12)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %42 = call i64 @SendMessageA(i32 %40, i32 %41, i32 0, i32 0)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @compare(i32 %43, i32 1179667, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @DestroyWindow(i32 %45)
  %47 = load i32, i32* @hMainWnd, align 4
  %48 = load i32, i32* @WS_VISIBLE, align 4
  %49 = call i32 @GetModuleHandleA(i32* null)
  %50 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %52 = call i32 @pCreateToolbarEx(i32 %47, i32 %48, i32 1, i32 16, i32 %49, i32 %50, i32* %51, i32 3, i32 -1, i32 8, i32 12, i32 12, i32 4)
  store i32 %52, i32* %1, align 4
  %53 = call i32 @CHECK_IMAGELIST(i32 16, i32 12, i32 8)
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %56 = call i64 @SendMessageA(i32 %54, i32 %55, i32 0, i32 0)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @compare(i32 %57, i32 917523, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @DestroyWindow(i32 %59)
  %61 = load i32, i32* @hMainWnd, align 4
  %62 = load i32, i32* @WS_VISIBLE, align 4
  %63 = call i32 @GetModuleHandleA(i32* null)
  %64 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %66 = call i32 @pCreateToolbarEx(i32 %61, i32 %62, i32 1, i32 16, i32 %63, i32 %64, i32* %65, i32 3, i32 -1, i32 8, i32 -1, i32 12, i32 4)
  store i32 %66, i32* %1, align 4
  %67 = call i32 @CHECK_IMAGELIST(i32 16, i32 16, i32 8)
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %70 = call i64 @SendMessageA(i32 %68, i32 %69, i32 0, i32 0)
  %71 = trunc i64 %70 to i32
  %72 = call i32 @compare(i32 %71, i32 917527, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @DestroyWindow(i32 %73)
  %75 = load i32, i32* @hMainWnd, align 4
  %76 = load i32, i32* @WS_VISIBLE, align 4
  %77 = call i32 @GetModuleHandleA(i32* null)
  %78 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %80 = call i32 @pCreateToolbarEx(i32 %75, i32 %76, i32 1, i32 16, i32 %77, i32 %78, i32* %79, i32 3, i32 0, i32 0, i32 12, i32 -1, i32 4)
  store i32 %80, i32* %1, align 4
  %81 = call i32 @CHECK_IMAGELIST(i32 16, i32 12, i32 16)
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %84 = call i64 @SendMessageA(i32 %82, i32 %83, i32 0, i32 0)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @compare(i32 %85, i32 1441811, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @DestroyWindow(i32 %87)
  %89 = load i32, i32* @hMainWnd, align 4
  %90 = load i32, i32* @WS_VISIBLE, align 4
  %91 = call i32 @GetModuleHandleA(i32* null)
  %92 = load i32, i32* @IDB_BITMAP_128x15, align 4
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %94 = call i32 @pCreateToolbarEx(i32 %89, i32 %90, i32 1, i32 16, i32 %91, i32 %92, i32* %93, i32 3, i32 0, i32 0, i32 0, i32 12, i32 4)
  store i32 %94, i32* %1, align 4
  %95 = call i32 @CHECK_IMAGELIST(i32 16, i32 16, i32 16)
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %98 = call i64 @SendMessageA(i32 %96, i32 %97, i32 0, i32 0)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @compare(i32 %99, i32 1441815, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @DestroyWindow(i32 %101)
  ret void
}

declare dso_local i32 @ZeroMemory(i32**, i32) #1

declare dso_local i32 @pCreateToolbarEx(i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @CHECK_IMAGELIST(i32, i32, i32) #1

declare dso_local i32 @compare(i32, i32, i8*) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
