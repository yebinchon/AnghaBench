; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalReAllocMovable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalReAllocMovable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Testing GlobalReAlloc() on memory allocated as GMGM_MOVEABLE\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Allocating buffer\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Testing GlobalReAlloc on a unlocked block.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"GlobalReAlloc failed-- returned NULL\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Alloced Handle: \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ReAlloced Handle: \00", align 1
@PASSED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Subtest result:\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Testing GlobalReAlloc on a locked block.\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"GlobalReAlloc returned a different block.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalReAllocMovable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @SKIPPED, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @SKIPPED, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GMEM_MOVEABLE, align 4
  %11 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %12 = call i64 @GlobalAlloc(i32 %10, i64 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %0
  %16 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %19 = sub nsw i64 %18, 100
  %20 = call i64 @GlobalReAlloc(i64 %17, i64 %19, i32 0)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FAILED, align 4
  %27 = call i32 @TEST_CombineStatus(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @OUTPUT_Result(i32 %28)
  br label %57

30:                                               ; preds = %15
  %31 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @OUTPUT_Handle(i64 %32)
  %34 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @OUTPUT_Handle(i64 %35)
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @GlobalLock(i64 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i64, i64* %2, align 8
  store i64 %39, i64* %1, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PASSED, align 4
  %42 = call i32 @TEST_CombineStatus(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %46 = sub nsw i64 %45, 100
  %47 = call i32 @TEST_MemoryRead(i32 %44, i64 %46)
  %48 = call i32 @TEST_CombineStatus(i32 %43, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %52 = sub nsw i64 %51, 100
  %53 = call i32 @TEST_MemoryWrite(i32 %50, i64 %52)
  %54 = call i32 @TEST_CombineStatus(i32 %49, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @GlobalUnlock(i64 %55)
  br label %57

57:                                               ; preds = %30, %23
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @GlobalFree(i64 %58)
  br label %64

60:                                               ; preds = %0
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @FAILED, align 4
  %63 = call i32 @TEST_CombineStatus(i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @OUTPUT_Result(i32 %66)
  %68 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @TEST_CombineStatus(i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @SKIPPED, align 4
  store i32 %72, i32* %4, align 4
  %73 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @GMEM_MOVEABLE, align 4
  %75 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %76 = call i64 @GlobalAlloc(i32 %74, i64 %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = icmp ne i64 0, %77
  br i1 %78, label %79, label %133

79:                                               ; preds = %64
  %80 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i64, i64* %1, align 8
  %82 = call i32 @GlobalLock(i64 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i64, i64* %1, align 8
  %84 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %85 = sub nsw i64 %84, 100
  %86 = call i64 @GlobalReAlloc(i64 %83, i64 %85, i32 0)
  store i64 %86, i64* %2, align 8
  %87 = load i64, i64* %2, align 8
  %88 = icmp eq i64 0, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @FAILED, align 4
  %93 = call i32 @TEST_CombineStatus(i32 %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @OUTPUT_Result(i32 %94)
  br label %128

96:                                               ; preds = %79
  %97 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i64, i64* %1, align 8
  %99 = call i32 @OUTPUT_Handle(i64 %98)
  %100 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @OUTPUT_Handle(i64 %101)
  %103 = load i64, i64* %1, align 8
  %104 = load i64, i64* %2, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @GlobalLock(i64 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @PASSED, align 4
  %113 = call i32 @TEST_CombineStatus(i32 %111, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %117 = sub nsw i64 %116, 100
  %118 = call i32 @TEST_MemoryRead(i32 %115, i64 %117)
  %119 = call i32 @TEST_CombineStatus(i32 %114, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %123 = sub nsw i64 %122, 100
  %124 = call i32 @TEST_MemoryWrite(i32 %121, i64 %123)
  %125 = call i32 @TEST_CombineStatus(i32 %120, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i64, i64* %2, align 8
  %127 = call i32 @GlobalUnlock(i64 %126)
  br label %128

128:                                              ; preds = %108, %89
  %129 = load i64, i64* %1, align 8
  %130 = call i32 @GlobalUnlock(i64 %129)
  %131 = load i64, i64* %1, align 8
  %132 = call i32 @GlobalFree(i64 %131)
  br label %137

133:                                              ; preds = %64
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @FAILED, align 4
  %136 = call i32 @TEST_CombineStatus(i32 %134, i32 %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @OUTPUT_Result(i32 %139)
  %141 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @TEST_CombineStatus(i32 %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i64) #1

declare dso_local i64 @GlobalReAlloc(i64, i64, i32) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

declare dso_local i32 @GlobalLock(i64) #1

declare dso_local i32 @TEST_MemoryRead(i32, i64) #1

declare dso_local i32 @TEST_MemoryWrite(i32, i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @GlobalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
