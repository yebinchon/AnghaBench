; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalFlagsFixed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalFlagsFixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Testing for correct handling of GMEM_FIXED memory\00", align 1
@GMEM_FIXED = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Allocation handle: \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Testing initial allocation\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Testing for non-discarded and lock of 0\00", align 1
@GMEM_LOCKCOUNT = common dso_local global i32 0, align 4
@PASSED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Pointer from handle: \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Testing after a lock\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalFlagsFixed() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @SKIPPED, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GMEM_FIXED, align 4
  %7 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %8 = call i64 @GlobalAlloc(i32 %6, i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 0, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %0
  %12 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @OUTPUT_Handle(i64 %13)
  %15 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @GlobalFlags(i64 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @GMEM_LOCKCOUNT, align 4
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PASSED, align 4
  %31 = call i32 @TEST_CombineStatus(i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %23, %11
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @FAILED, align 4
  %35 = call i32 @TEST_CombineStatus(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @OUTPUT_Result(i32 %37)
  %39 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i64, i64* %1, align 8
  %41 = call i64 @GlobalLock(i64 %40)
  %42 = call i32 @OUTPUT_Handle(i64 %41)
  %43 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @GlobalFlags(i64 %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @GMEM_LOCKCOUNT, align 4
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load i32, i32* %2, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @PASSED, align 4
  %59 = call i32 @TEST_CombineStatus(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %51, %36
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @FAILED, align 4
  %63 = call i32 @TEST_CombineStatus(i32 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @OUTPUT_Result(i32 %65)
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @GlobalFree(i64 %67)
  br label %74

69:                                               ; preds = %0
  %70 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @FAILED, align 4
  %73 = call i32 @TEST_CombineStatus(i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

declare dso_local i32 @GlobalFlags(i64) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i32 @GlobalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
