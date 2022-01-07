; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalDiscard.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalDiscard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Testing GlobalDiscard()\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Allocation handle: \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GlobalDiscard returned NULL\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Flags from the new memory block.\00", align 1
@GMEM_DISCARDED = common dso_local global i32 0, align 4
@PASSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Block is not marked as discardable.\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed!\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Result from subtest:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalDiscard() #0 {
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
  %8 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GMEM_MOVEABLE, align 4
  %10 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %11 = call i64 @GlobalAlloc(i32 %9, i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 0, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %0
  %15 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @OUTPUT_Handle(i64 %16)
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @GlobalDiscard(i64 %18)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FAILED, align 4
  %26 = call i32 @TEST_CombineStatus(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %14
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @GlobalFlags(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @OUTPUT_HexDword(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GMEM_DISCARDED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 0, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PASSED, align 4
  %40 = call i32 @TEST_CombineStatus(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %27
  %42 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FAILED, align 4
  %45 = call i32 @TEST_CombineStatus(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @GlobalFree(i64 %48)
  br label %55

50:                                               ; preds = %0
  %51 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FAILED, align 4
  %54 = call i32 @TEST_CombineStatus(i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @OUTPUT_Result(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @TEST_CombineStatus(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @OUTPUT_Result(i32 %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @OUTPUT_Banner(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

declare dso_local i64 @GlobalDiscard(i64) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @GlobalFlags(i64) #1

declare dso_local i32 @OUTPUT_HexDword(i32) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
