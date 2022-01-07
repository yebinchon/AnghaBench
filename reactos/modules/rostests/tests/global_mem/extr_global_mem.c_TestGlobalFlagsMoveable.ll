; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalFlagsMoveable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalFlagsMoveable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Test for the proper lock count\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Testing initial allocation\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Testing for a lock of 0\00", align 1
@GMEM_LOCKCOUNT = common dso_local global i32 0, align 4
@PASSED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Pointer from handle: \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Testing after a lock\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Testing for a lock of 1\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Testing after an unlock\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed!\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Test for discarded memory\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Allocating an empty moveable block---automatically marked as discarded\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Allocation handle: \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Testing for a discarded flag\00", align 1
@GMEM_DISCARDED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"Flags:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalFlagsMoveable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @SKIPPED, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GMEM_MOVEABLE, align 4
  %7 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %8 = call i64 @GlobalAlloc(i32 %6, i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 0, %9
  br i1 %10, label %11, label %75

11:                                               ; preds = %0
  %12 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @GlobalFlags(i64 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @GMEM_LOCKCOUNT, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PASSED, align 4
  %23 = call i32 @TEST_CombineStatus(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FAILED, align 4
  %27 = call i32 @TEST_CombineStatus(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @OUTPUT_Result(i32 %29)
  %31 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i64, i64* %1, align 8
  %33 = call i64 @GlobalLock(i64 %32)
  %34 = call i32 @OUTPUT_Handle(i64 %33)
  %35 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @GlobalFlags(i64 %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @GMEM_LOCKCOUNT, align 4
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @PASSED, align 4
  %46 = call i32 @TEST_CombineStatus(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @FAILED, align 4
  %50 = call i32 @TEST_CombineStatus(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @OUTPUT_Result(i32 %52)
  %54 = load i64, i64* %1, align 8
  %55 = call i32 @GlobalUnlock(i64 %54)
  %56 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %57 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @GlobalFlags(i64 %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* @GMEM_LOCKCOUNT, align 4
  %61 = load i32, i32* %2, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PASSED, align 4
  %67 = call i32 @TEST_CombineStatus(i32 %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %51
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @FAILED, align 4
  %71 = call i32 @TEST_CombineStatus(i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @OUTPUT_Result(i32 %73)
  br label %80

75:                                               ; preds = %0
  %76 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @FAILED, align 4
  %79 = call i32 @TEST_CombineStatus(i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %82 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %83 = load i32, i32* @GMEM_MOVEABLE, align 4
  %84 = call i64 @GlobalAlloc(i32 %83, i32 0)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = icmp ne i64 0, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %80
  %88 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i64, i64* %1, align 8
  %90 = call i32 @OUTPUT_Handle(i64 %89)
  %91 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %92 = load i64, i64* %1, align 8
  %93 = call i32 @GlobalFlags(i64 %92)
  store i32 %93, i32* %2, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @GMEM_DISCARDED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 0, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @PASSED, align 4
  %101 = call i32 @TEST_CombineStatus(i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %87
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @FAILED, align 4
  %105 = call i32 @TEST_CombineStatus(i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @OUTPUT_HexDword(i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @OUTPUT_Result(i32 %110)
  %112 = load i64, i64* %1, align 8
  %113 = call i32 @GlobalFree(i64 %112)
  br label %119

114:                                              ; preds = %80
  %115 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @FAILED, align 4
  %118 = call i32 @TEST_CombineStatus(i32 %116, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %106
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @GlobalFlags(i64) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @OUTPUT_HexDword(i32) #1

declare dso_local i32 @GlobalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
