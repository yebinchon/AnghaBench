; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvCommConfigDialogA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvCommConfigDialogA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@fmt_comA = common dso_local global i8* null, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"*A not implemented\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"returned %u with %u for '%s'\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@emptyA = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_BADKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"returned %u with %u (expected ERROR_BADKEY)\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"returned %u with %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drvCommConfigDialogA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drvCommConfigDialogA() #0 {
  %1 = alloca [3 x %struct.TYPE_5__], align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %68, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %71

9:                                                ; preds = %6
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %11 = load i8*, i8** @fmt_comA, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @sprintf(i32* %10, i8* %11, i32 %12)
  store i32 12, i32* %5, align 4
  %14 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %15 = call i32 @ZeroMemory(%struct.TYPE_5__* %14, i32 12)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %18 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %19 = call i32 @pGetDefaultCommConfigA(i32* %17, %struct.TYPE_5__* %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %112

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load i64, i64* @winetest_interactive, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %35 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %36 = call i32 @pCommConfigDialogA(i32* %34, i32* null, %struct.TYPE_5__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (...) @GetLastError()
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %40 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %32, %29
  %42 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %43 = call i32 @ZeroMemory(%struct.TYPE_5__* %42, i32 12)
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %47 = call i32 @pCommConfigDialogA(i32* %45, i32* null, %struct.TYPE_5__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (...) @GetLastError()
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %55 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32* %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %58 = call i32 @pCommConfigDialogA(i32* %57, i32* null, %struct.TYPE_5__* null)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (...) @GetLastError()
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %66 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %41, %25
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %6

71:                                               ; preds = %6
  %72 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %73 = call i32 @ZeroMemory(%struct.TYPE_5__* %72, i32 12)
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32*, i32** @emptyA, align 8
  %76 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %77 = call i32 @pCommConfigDialogA(i32* %75, i32* null, %struct.TYPE_5__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  %85 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %86 = call i32 @ZeroMemory(%struct.TYPE_5__* %85, i32 12)
  %87 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 4, i32* %88, align 4
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = load i32*, i32** @emptyA, align 8
  %91 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %92 = call i32 @pCommConfigDialogA(i32* %90, i32* null, %struct.TYPE_5__* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ERROR_BADKEY, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  %100 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %101 = call i32 @ZeroMemory(%struct.TYPE_5__* %100, i32 12)
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %104 = call i32 @pCommConfigDialogA(i32* null, i32* null, %struct.TYPE_5__* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %4, align 4
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %108, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %71, %23
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetDefaultCommConfigA(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @pCommConfigDialogA(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @trace(i8*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
