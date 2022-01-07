; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_DrawThemeParentBackground.c_Test_Messages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_DrawThemeParentBackground.c_Test_Messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TestProc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 116, i32 101, i32 115, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 84, i32 101, i32 115, i32 116, i32 32, i32 112, i32 97, i32 114, i32 101, i32 110, i32 116, i32 0], align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hWnd1 = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Expected CreateWindowW to succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i32] [i32 116, i32 101, i32 115, i32 116, i32 32, i32 119, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@WS_CHILD = common dso_local global i32 0, align 4
@hWnd2 = common dso_local global i32* null, align 8
@draw_parent_chain = common dso_local global i32 0, align 4
@empty_chain = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Messages() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TestProc, align 4
  %4 = call i32 @RegisterSimpleClass(i32 %3, i8* bitcast ([10 x i32]* @.str to i8*))
  %5 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %6 = load i32, i32* @WS_VISIBLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32* @CreateWindowW(i8* bitcast ([10 x i32]* @.str to i8*), i8* bitcast ([12 x i32]* @.str.1 to i8*), i32 %7, i32 100, i32 100, i32 200, i32 200, i32* null, i32* null, i32* null, i32* null)
  store i32* %8, i32** @hWnd1, align 8
  %9 = load i32*, i32** @hWnd1, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @WS_CHILD, align 4
  %14 = load i32, i32* @WS_VISIBLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** @hWnd1, align 8
  %17 = call i32* @CreateWindowW(i8* bitcast ([10 x i32]* @.str to i8*), i8* bitcast ([12 x i32]* @.str.3 to i8*), i32 %15, i32 0, i32 0, i32 100, i32 100, i32* %16, i32* null, i32* null, i32* null)
  store i32* %17, i32** @hWnd2, align 8
  %18 = load i32*, i32** @hWnd2, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (...) @FlushMessages()
  %23 = call i32 (...) @EMPTY_CACHE()
  %24 = load i32*, i32** @hWnd1, align 8
  %25 = call i32* @GetDC(i32* %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** @hWnd2, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @DrawThemeParentBackground(i32* %26, i32* %27, i32* null)
  %29 = call i32 (...) @FlushMessages()
  %30 = load i32, i32* @draw_parent_chain, align 4
  %31 = call i32 @COMPARE_CACHE(i32 %30)
  %32 = load i32*, i32** @hWnd1, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @DrawThemeParentBackground(i32* %32, i32* %33, i32* null)
  %35 = call i32 (...) @FlushMessages()
  %36 = load i32, i32* @empty_chain, align 4
  %37 = call i32 @COMPARE_CACHE(i32 %36)
  %38 = load i32*, i32** @hWnd1, align 8
  %39 = load i32, i32* @SW_SHOW, align 4
  %40 = call i32 @ShowWindow(i32* %38, i32 %39)
  %41 = load i32*, i32** @hWnd1, align 8
  %42 = call i32 @UpdateWindow(i32* %41)
  %43 = load i32*, i32** @hWnd2, align 8
  %44 = load i32, i32* @SW_SHOW, align 4
  %45 = call i32 @ShowWindow(i32* %43, i32 %44)
  %46 = load i32*, i32** @hWnd2, align 8
  %47 = call i32 @UpdateWindow(i32* %46)
  %48 = call i32 (...) @FlushMessages()
  %49 = call i32 (...) @EMPTY_CACHE()
  %50 = load i32*, i32** @hWnd2, align 8
  %51 = call i32 @DrawThemeParentBackground(i32* %50, i32* null, i32* null)
  %52 = call i32 (...) @FlushMessages()
  %53 = load i32, i32* @empty_chain, align 4
  %54 = call i32 @COMPARE_CACHE(i32 %53)
  %55 = load i32*, i32** @hWnd1, align 8
  %56 = call i32 @DrawThemeParentBackground(i32* %55, i32* null, i32* null)
  %57 = call i32 (...) @FlushMessages()
  %58 = load i32, i32* @empty_chain, align 4
  %59 = call i32 @COMPARE_CACHE(i32 %58)
  %60 = load i32*, i32** @hWnd2, align 8
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @DrawThemeParentBackground(i32* %60, i32* %61, i32* null)
  %63 = call i32 (...) @FlushMessages()
  %64 = load i32, i32* @draw_parent_chain, align 4
  %65 = call i32 @COMPARE_CACHE(i32 %64)
  %66 = load i32*, i32** @hWnd1, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @DrawThemeParentBackground(i32* %66, i32* %67, i32* null)
  %69 = call i32 (...) @FlushMessages()
  %70 = load i32, i32* @empty_chain, align 4
  %71 = call i32 @COMPARE_CACHE(i32 %70)
  %72 = call i32 @memset(i32* %2, i32 0, i32 4)
  %73 = load i32*, i32** @hWnd2, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @DrawThemeParentBackground(i32* %73, i32* %74, i32* %2)
  %76 = call i32 (...) @FlushMessages()
  %77 = load i32, i32* @draw_parent_chain, align 4
  %78 = call i32 @COMPARE_CACHE(i32 %77)
  %79 = load i32*, i32** @hWnd1, align 8
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @DrawThemeParentBackground(i32* %79, i32* %80, i32* %2)
  %82 = call i32 (...) @FlushMessages()
  %83 = load i32, i32* @empty_chain, align 4
  %84 = call i32 @COMPARE_CACHE(i32 %83)
  ret void
}

declare dso_local i32 @RegisterSimpleClass(i32, i8*) #1

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @FlushMessages(...) #1

declare dso_local i32 @EMPTY_CACHE(...) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @DrawThemeParentBackground(i32*, i32*, i32*) #1

declare dso_local i32 @COMPARE_CACHE(i32) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
