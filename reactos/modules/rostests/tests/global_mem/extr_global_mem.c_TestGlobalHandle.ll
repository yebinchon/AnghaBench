; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Testing GlobalHandle()\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Testing GlobalHandle with a block of GMEM_FIXED memory\00", align 1
@GMEM_FIXED = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Allocation handle: \00", align 1
@PASSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GlobalHandle returned:\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Result from subtest:\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Testing GlobalHandle with a block of GMEM_MOVEABLE memory\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Global Handle test results:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalHandle() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i32, i32* @SKIPPED, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @SKIPPED, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GMEM_FIXED, align 4
  %11 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %12 = call i64 @GlobalAlloc(i32 %10, i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %0
  %16 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @OUTPUT_Handle(i64 %17)
  %19 = load i64, i64* %1, align 8
  %20 = call i64 @GlobalHandle(i64 %19)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PASSED, align 4
  %27 = call i32 @TEST_CombineStatus(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %15
  %29 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @OUTPUT_Handle(i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @FAILED, align 4
  %34 = call i32 @TEST_CombineStatus(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @GlobalFree(i64 %36)
  br label %43

38:                                               ; preds = %0
  %39 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FAILED, align 4
  %42 = call i32 @TEST_CombineStatus(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @OUTPUT_Result(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TEST_CombineStatus(i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @SKIPPED, align 4
  store i32 %50, i32* %4, align 4
  %51 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* @GMEM_MOVEABLE, align 4
  %53 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %54 = call i64 @GlobalAlloc(i32 %52, i32 %53)
  store i64 %54, i64* %1, align 8
  %55 = load i64, i64* %1, align 8
  %56 = icmp ne i64 0, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %43
  %58 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* %1, align 8
  %60 = call i32 @OUTPUT_Handle(i64 %59)
  %61 = load i64, i64* %1, align 8
  %62 = call i64 @GlobalLock(i64 %61)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @GlobalHandle(i64 %63)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* %2, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PASSED, align 4
  %71 = call i32 @TEST_CombineStatus(i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %57
  %73 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i64, i64* %2, align 8
  %75 = call i32 @OUTPUT_Handle(i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @FAILED, align 4
  %78 = call i32 @TEST_CombineStatus(i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %68
  %80 = load i64, i64* %1, align 8
  %81 = call i32 @GlobalUnlock(i64 %80)
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @GlobalFree(i64 %82)
  br label %89

84:                                               ; preds = %43
  %85 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @FAILED, align 4
  %88 = call i32 @TEST_CombineStatus(i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @OUTPUT_Result(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @TEST_CombineStatus(i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @OUTPUT_Result(i32 %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @OUTPUT_Banner(i8*) #1

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

declare dso_local i64 @GlobalHandle(i64) #1

declare dso_local i32 @TEST_CombineStatus(i32, i32) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
