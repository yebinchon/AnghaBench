; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvCommConfigDialogW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvCommConfigDialogW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@fmt_comA = common dso_local global i8* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"*W not implemented\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"returned %u with %u for '%s'\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"returned %u with %u for '%s' (expected ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"returned %u with %u for '%s' (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"returned %u with %u (expected ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_BADKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"returned %u with %u (expected ERROR_BADKEY)\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"returned %u with %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drvCommConfigDialogW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drvCommConfigDialogW() #0 {
  %1 = alloca [3 x %struct.TYPE_5__], align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %75, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %78

10:                                               ; preds = %7
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %12 = load i8*, i8** @fmt_comA, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sprintf(i32* %11, i8* %12, i32 %13)
  %15 = load i32, i32* @CP_ACP, align 4
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @MultiByteToWideChar(i32 %15, i32 0, i32* %16, i32 -1, i32* %17, i32 %19)
  store i32 12, i32* %6, align 4
  %21 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %22 = call i32 @ZeroMemory(%struct.TYPE_5__* %21, i32 12)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %25 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %26 = call i32 @pGetDefaultCommConfigW(i32* %24, %struct.TYPE_5__* %25, i32* %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %10
  %31 = call i32 @win_skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %119

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load i64, i64* @winetest_interactive, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %42 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %43 = call i32 @pCommConfigDialogW(i32* %41, i32* null, %struct.TYPE_5__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (...) @GetLastError()
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %47 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %39, %36
  %49 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %50 = call i32 @ZeroMemory(%struct.TYPE_5__* %49, i32 12)
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %53 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %54 = call i32 @pCommConfigDialogW(i32* %52, i32* null, %struct.TYPE_5__* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %62 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32* %61)
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %65 = call i32 @pCommConfigDialogW(i32* %64, i32* null, %struct.TYPE_5__* null)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (...) @GetLastError()
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %73 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %48, %32
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %7

78:                                               ; preds = %7
  %79 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %80 = call i32 @ZeroMemory(%struct.TYPE_5__* %79, i32 12)
  %81 = call i32 @SetLastError(i32 -559038737)
  %82 = load i32*, i32** @emptyW, align 8
  %83 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %84 = call i32 @pCommConfigDialogW(i32* %82, i32* null, %struct.TYPE_5__* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %90)
  %92 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %93 = call i32 @ZeroMemory(%struct.TYPE_5__* %92, i32 12)
  %94 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 4, i32* %95, align 4
  %96 = call i32 @SetLastError(i32 -559038737)
  %97 = load i32*, i32** @emptyW, align 8
  %98 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %99 = call i32 @pCommConfigDialogW(i32* %97, i32* null, %struct.TYPE_5__* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @ERROR_BADKEY, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %105)
  %107 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %108 = call i32 @ZeroMemory(%struct.TYPE_5__* %107, i32 12)
  %109 = call i32 @SetLastError(i32 -559038737)
  %110 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %111 = call i32 @pCommConfigDialogW(i32* null, i32* null, %struct.TYPE_5__* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 (...) @GetLastError()
  %118 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %78, %30
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetDefaultCommConfigW(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @pCommConfigDialogW(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @trace(i8*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
