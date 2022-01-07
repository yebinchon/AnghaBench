; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalAllocNFree.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalAllocNFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Testing the GlobalAlloc and GlobalFree calls\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Allocate a buffer\00", align 1
@FAILED = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@PASSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Result for this run:\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestGlobalAllocNFree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SKIPPED, align 4
  store i32 %5, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %6 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @OutputAllocFlags(i32 %8)
  %10 = load i32, i32* @FAILED, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MEM_BLOCK_SIZE, align 4
  %13 = call i64 @GlobalAlloc(i32 %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 0, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GlobalFree(i64 %17)
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @PASSED, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @OUTPUT_Result(i32 %25)
  %27 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @OUTPUT_Banner(i8*) #1

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i32 @OutputAllocFlags(i32) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalFree(i64) #1

declare dso_local i32 @OUTPUT_Result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
