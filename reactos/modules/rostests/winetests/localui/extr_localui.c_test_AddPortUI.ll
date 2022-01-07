; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_test_AddPortUI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_test_AddPortUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_UNKNOWN_PORT = common dso_local global i64 0, align 8
@ERROR_INVALID_PRINTER_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or ERROR_INVALID_PRINTER_NAME)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@does_not_existW = common dso_local global i32* null, align 8
@winetest_interactive = common dso_local global i64 0, align 8
@localportW = common dso_local global i32* null, align 8
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [114 x i8] c"got %d with %u and %p (expected '!= 0' or '0' with: ERROR_CANCELLED, ERROR_ACCESS_DENIED or ERROR_NOT_SUPPORTED)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddPortUI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddPortUI() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i64 @pAddPortUI(i32* null, i32* null, i32* null, i32** null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  br label %17

17:                                               ; preds = %15, %0
  %18 = phi i1 [ false, %0 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, i64, i64, ...) @ok(i32 %19, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = load i32*, i32** @emptyW, align 8
  %25 = call i64 @pAddPortUI(i32* null, i32* null, i32* %24, i32** null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %17
  %29 = call i64 (...) @GetLastError()
  %30 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %17
  %39 = phi i1 [ false, %17 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i64, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = load i32*, i32** @does_not_existW, align 8
  %46 = call i64 @pAddPortUI(i32* null, i32* null, i32* %45, i32** null)
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %38
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  br label %59

59:                                               ; preds = %57, %38
  %60 = phi i1 [ false, %38 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, i64, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %63)
  %65 = load i64, i64* @winetest_interactive, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %59
  %68 = call i32 @SetLastError(i32 -559038737)
  store i32* null, i32** %2, align 8
  %69 = load i32*, i32** @localportW, align 8
  %70 = call i64 @pAddPortUI(i32* null, i32* null, i32* %69, i32** %2)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* %1, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = call i64 (...) @GetLastError()
  %75 = load i64, i64* @ERROR_CANCELLED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = call i64 (...) @GetLastError()
  %79 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = call i64 (...) @GetLastError()
  %83 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77, %73, %67
  %86 = phi i1 [ true, %77 ], [ true, %73 ], [ true, %67 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %1, align 8
  %89 = call i64 (...) @GetLastError()
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 (i32, i8*, i64, i64, ...) @ok(i32 %87, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89, i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @GlobalFree(i32* %92)
  br label %94

94:                                               ; preds = %85, %59
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pAddPortUI(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
