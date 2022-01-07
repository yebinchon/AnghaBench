; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_SetActiveWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_SetActiveWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Test SetActiveWindow\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create overlapped window\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to create popup window\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SetActiveWindow(0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to SetActiveWindow(0)\0A\00", align 1
@SetActiveWindowSeq0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"SetActiveWindow(0)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"SetActiveWindow(hwnd), hwnd visible\0A\00", align 1
@SetActiveWindowSeq1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"SetActiveWindow(hwnd), hwnd visible\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"SetActiveWindow(popup), hwnd visible, popup visible\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Failed to SetActiveWindow(popup), popup visible\0A\00", align 1
@SetActiveWindowSeq2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"SetActiveWindow(popup), hwnd visible, popup visible\00", align 1
@SW_HIDE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"SetActiveWindow(hwnd), hwnd not visible\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"SetActiveWindow(hwnd), hwnd not visible, previous is %p\0A\00", align 1
@SetActiveWindowSeq3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"SetActiveWindow(hwnd), hwnd not visible\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"SetActiveWindow(popup), hwnd not visible, popup not visible\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Failed to SetActiveWindow(popup)\0A\00", align 1
@SetActiveWindowSeq4 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [60 x i8] c"SetActiveWindow(popup), hwnd not visible, popup not visible\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetActiveWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetActiveWindow() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %5 = load i32, i32* @WS_VISIBLE, align 4
  %6 = or i32 %4, %5
  %7 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 100, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %7, i64* %1, align 8
  %8 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %9 = load i32, i32* @WS_VISIBLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WS_POPUP, align 4
  %12 = or i32 %10, %11
  %13 = load i64, i64* %1, align 8
  %14 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 100, i32 100, i32 200, i32 200, i64 %13, i32 0, i32 0, i32* null)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @SetForegroundWindow(i64 %23)
  %25 = call i32 (...) @flush_sequence()
  %26 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i64 @SetActiveWindow(i64 0)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* @SetActiveWindowSeq0, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @ok_sequence(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @flush_sequence()
  %37 = call i32 @trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @SetActiveWindow(i64 %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %1, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %0
  %44 = load i32, i32* @SetActiveWindowSeq1, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @ok_sequence(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %0
  %48 = call i32 (...) @flush_sequence()
  %49 = call i32 @trace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %50 = load i64, i64* %2, align 8
  %51 = call i64 @SetActiveWindow(i64 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %1, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %57 = load i32, i32* @SetActiveWindowSeq2, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @ok_sequence(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = call i32 (...) @flush_sequence()
  %61 = load i64, i64* %1, align 8
  %62 = load i32, i32* @SW_HIDE, align 4
  %63 = call i32 @ShowWindow(i64 %61, i32 %62)
  %64 = load i64, i64* %2, align 8
  %65 = load i32, i32* @SW_HIDE, align 4
  %66 = call i32 @ShowWindow(i64 %64, i32 %65)
  %67 = call i32 (...) @flush_sequence()
  %68 = call i32 @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %69 = load i64, i64* %1, align 8
  %70 = call i64 @SetActiveWindow(i64 %69)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = icmp eq i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %3, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @SetActiveWindowSeq3, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i32 @ok_sequence(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %78)
  %80 = call i32 (...) @flush_sequence()
  %81 = call i32 @trace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0))
  %82 = load i64, i64* %2, align 8
  %83 = call i64 @SetActiveWindow(i64 %82)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* %1, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %89 = load i32, i32* @SetActiveWindowSeq4, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i32 @ok_sequence(i32 %89, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i32 %90)
  %92 = call i32 (...) @flush_sequence()
  %93 = call i32 @trace(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %94 = load i64, i64* %1, align 8
  %95 = call i32 @DestroyWindow(i64 %94)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetForegroundWindow(i64) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @SetActiveWindow(i64) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
