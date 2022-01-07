; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_pSetupGetField.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_pSetupGetField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Using A-functions instead of W\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@contents = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected valid INF file\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"FileBranchInfo\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to find first line\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to get field %i\0A\00", align 1
@getfield_resW = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Wrong string returned\0A\00", align 1
@getfield_resA = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to get field 3\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected length, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Expected NULL, got %p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pSetupGetField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pSetupGetField() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = call i32 @lstrcmpW(i32* null, i32* null)
  %13 = call i32* (...) @GetLastError()
  %14 = load i32*, i32** @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* @contents, align 4
  %21 = call i32* @test_file_contents(i32 %20, i32* %1)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @SetupFindFirstLineA(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %6)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %76, %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %79

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @pSetupGetFieldW(i32* %6, i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32**, i32*** @getfield_resW, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @lstrcmpW(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %75

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = call i32* @pSetupGetFieldA(i32* %6, i32 %57)
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** @getfield_resA, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @lstrcmpA(i32 %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %56, %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %31

79:                                               ; preds = %31
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  %83 = call i32* @pSetupGetFieldW(i32* %6, i32 3)
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = icmp ne i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @lstrlenW(i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 511
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 4096
  br label %95

95:                                               ; preds = %92, %82
  %96 = phi i1 [ true, %82 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = call i32* @pSetupGetFieldW(i32* %6, i32 4)
  store i32* %100, i32** %5, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = icmp eq i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %104)
  %106 = call i32* (...) @GetLastError()
  %107 = load i32*, i32** @ERROR_INVALID_PARAMETER, align 8
  %108 = icmp eq i32* %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32* (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32* %110)
  br label %137

112:                                              ; preds = %79
  %113 = call i32* @pSetupGetFieldA(i32* %6, i32 3)
  store i32* %113, i32** %4, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = icmp ne i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @lstrlenA(i32* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 511
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = call i32* @pSetupGetFieldA(i32* %6, i32 4)
  store i32* %125, i32** %4, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = icmp eq i32* %126, null
  %128 = zext i1 %127 to i32
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %129)
  %131 = call i32* (...) @GetLastError()
  %132 = load i32*, i32** @ERROR_INVALID_PARAMETER, align 8
  %133 = icmp eq i32* %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32* (...) @GetLastError()
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32* %135)
  br label %137

137:                                              ; preds = %112, %95
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @SetupCloseInfFile(i32* %138)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32* @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @test_file_contents(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SetupFindFirstLineA(i32*, i8*, i32*, i32*) #1

declare dso_local i32* @pSetupGetFieldW(i32*, i32) #1

declare dso_local i32* @pSetupGetFieldA(i32*, i32) #1

declare dso_local i32 @lstrcmpA(i32, i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @lstrlenA(i32*) #1

declare dso_local i32 @SetupCloseInfFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
