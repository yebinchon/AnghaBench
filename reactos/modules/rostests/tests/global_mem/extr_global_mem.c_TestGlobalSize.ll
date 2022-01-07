; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Testing GlobalSize()\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Testing GlobalSize with a block of GMEM_FIXED memory\00", align 1
@GMEM_FIXED = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i64 0, align 8
@PASSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"GlobalSize returned:\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed!\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Result from subtest:\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Testing GlobalSize with a block of GMEM_MOVEABLE memory\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Testing GlobalSize with discarded memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Test result:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalSize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  %5 = load i32, i32* @SKIPPED, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @SKIPPED, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @GMEM_FIXED, align 4
  %10 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %11 = call i64 @GlobalAlloc(i32 %9, i64 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 0, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %0
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @GlobalSize(i64 %15)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PASSED, align 4
  %23 = call i32 @TEST_CombineStatus(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %14
  %25 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @OUTPUT_HexDword(i64 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FAILED, align 4
  %30 = call i32 @TEST_CombineStatus(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @GlobalFree(i64 %32)
  br label %39

34:                                               ; preds = %0
  %35 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @FAILED, align 4
  %38 = call i32 @TEST_CombineStatus(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @OUTPUT_Result(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @TEST_CombineStatus(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @GMEM_MOVEABLE, align 4
  %48 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %49 = call i64 @GlobalAlloc(i32 %47, i64 %48)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = icmp ne i64 0, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %39
  %53 = load i64, i64* %1, align 8
  %54 = call i64 @GlobalSize(i64 %53)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %56 = load i64, i64* %2, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PASSED, align 4
  %61 = call i32 @TEST_CombineStatus(i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %52
  %63 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @OUTPUT_HexDword(i64 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @FAILED, align 4
  %68 = call i32 @TEST_CombineStatus(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i64, i64* %1, align 8
  %71 = call i32 @GlobalFree(i64 %70)
  br label %77

72:                                               ; preds = %39
  %73 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @FAILED, align 4
  %76 = call i32 @TEST_CombineStatus(i32 %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @OUTPUT_Result(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @TEST_CombineStatus(i32 %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @GMEM_MOVEABLE, align 4
  %86 = call i64 @GlobalAlloc(i32 %85, i64 0)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = icmp ne i64 0, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %77
  %90 = load i64, i64* %1, align 8
  %91 = call i64 @GlobalSize(i64 %90)
  store i64 %91, i64* %2, align 8
  %92 = load i64, i64* %2, align 8
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @PASSED, align 4
  %97 = call i32 @TEST_CombineStatus(i32 %95, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %105

98:                                               ; preds = %89
  %99 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @OUTPUT_HexDword(i64 %100)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @FAILED, align 4
  %104 = call i32 @TEST_CombineStatus(i32 %102, i32 %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %94
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @GlobalFree(i64 %106)
  br label %113

108:                                              ; preds = %77
  %109 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @FAILED, align 4
  %112 = call i32 @TEST_CombineStatus(i32 %110, i32 %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %105
  %114 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @OUTPUT_Result(i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @TEST_CombineStatus(i32 %117, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @OUTPUT_Result(i32 %121)
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @OUTPUT_Banner(i8*) #1

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i64) #1

declare dso_local i64 @GlobalSize(i64) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @OUTPUT_HexDword(i64) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
