; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_getstring.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_getstring.answer = internal constant [4 x i8] c"STR\00", align 1
@test_getstring.answerW = internal constant [4 x i8] c"STR\00", align 1
@TOOLBARCLASSNAMEA = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Toolbar creation problem\0A\00", align 1
@TB_GETSTRINGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"TB_GETSTRINGA and TB_GETSTRINGW need 5.80\0A\00", align 1
@TB_GETSTRINGW = common dso_local global i32 0, align 4
@TB_ADDSTRINGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getstring() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %5 = load i32, i32* @TOOLBARCLASSNAMEA, align 4
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @hMainWnd, align 4
  %10 = call i32 @GetModuleHandleA(i32* null)
  %11 = call i32* @CreateWindowExA(i32 0, i32 %5, i32* null, i32 %8, i32 0, i32 0, i32 0, i32 0, i32 %9, i32 5, i32 %10, i32* null)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @TB_GETSTRINGA, align 4
  %18 = call i32 @MAKEWPARAM(i32 0, i32 0)
  %19 = call i64 @SendMessageA(i32* %16, i32 %17, i32 %18, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = call i32 @win_skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @DestroyWindow(i32* %24)
  br label %80

26:                                               ; preds = %0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @expect(i32 -1, i64 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @TB_GETSTRINGW, align 4
  %31 = call i32 @MAKEWPARAM(i32 0, i32 0)
  %32 = call i64 @SendMessageW(i32* %29, i32 %30, i32 %31, i32 0)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @expect(i32 -1, i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @TB_ADDSTRINGA, align 4
  %37 = call i64 @SendMessageA(i32* %35, i32 %36, i32 0, i32 ptrtoint ([4 x i8]* @test_getstring.answer to i32))
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @expect(i32 0, i64 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @TB_GETSTRINGA, align 4
  %42 = call i32 @MAKEWPARAM(i32 0, i32 0)
  %43 = call i64 @SendMessageA(i32* %40, i32 %41, i32 %42, i32 0)
  store i64 %43, i64* %4, align 8
  %44 = call i32 @lstrlenA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answer, i64 0, i64 0))
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @expect(i32 %44, i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* @TB_GETSTRINGW, align 4
  %49 = call i32 @MAKEWPARAM(i32 0, i32 0)
  %50 = call i64 @SendMessageW(i32* %47, i32 %48, i32 %49, i32 0)
  store i64 %50, i64* %4, align 8
  %51 = call i32 @lstrlenA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answer, i64 0, i64 0))
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @expect(i32 %51, i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @TB_GETSTRINGA, align 4
  %56 = call i32 @MAKEWPARAM(i32 10, i32 0)
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %58 = ptrtoint i8* %57 to i32
  %59 = call i64 @SendMessageA(i32* %54, i32 %55, i32 %56, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = call i32 @lstrlenA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answer, i64 0, i64 0))
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @expect(i32 %60, i64 %61)
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %64 = call i64 @lstrcmpA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answer, i64 0, i64 0), i8* %63)
  %65 = call i32 @expect(i32 0, i64 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @TB_GETSTRINGW, align 4
  %68 = call i32 @MAKEWPARAM(i32 10, i32 0)
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %70 = ptrtoint i8* %69 to i32
  %71 = call i64 @SendMessageW(i32* %66, i32 %67, i32 %68, i32 %70)
  store i64 %71, i64* %4, align 8
  %72 = call i32 @lstrlenA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answer, i64 0, i64 0))
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @expect(i32 %72, i64 %73)
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %76 = call i64 @lstrcmpW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_getstring.answerW, i64 0, i64 0), i8* %75)
  %77 = call i32 @expect(i32 0, i64 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @DestroyWindow(i32* %78)
  br label %80

80:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32* @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @expect(i32, i64) #1

declare dso_local i64 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i64 @lstrcmpA(i8*, i8*) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
