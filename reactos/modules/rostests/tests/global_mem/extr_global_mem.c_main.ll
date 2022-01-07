; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Testing GlobalXXX memory management functions.\00", align 1
@GPTR = common dso_local global i32 0, align 4
@GHND = common dso_local global i32 0, align 4
@GMEM_FIXED = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Skipping any further tests.  GlobalAlloc/Free fails.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Test suite result\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i64, i64* @SKIPPED, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %6, align 8
  %10 = load i32, i32* @GPTR, align 4
  %11 = call i32 @TestGlobalAllocNFree(i32 %10)
  %12 = call i64 @TEST_CombineStatus(i64 %9, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @GHND, align 4
  %15 = call i32 @TestGlobalAllocNFree(i32 %14)
  %16 = call i64 @TEST_CombineStatus(i64 %13, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @GMEM_FIXED, align 4
  %19 = call i32 @TestGlobalAllocNFree(i32 %18)
  %20 = call i64 @TEST_CombineStatus(i64 %17, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @GMEM_MOVEABLE, align 4
  %23 = call i32 @TestGlobalAllocNFree(i32 %22)
  %24 = call i64 @TEST_CombineStatus(i64 %21, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* @FAILED, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @OUTPUT_Result(i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %2
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @GPTR, align 4
  %37 = call i32 @TestGlobalLockNUnlock(i32 %36)
  %38 = call i64 @TEST_CombineStatus(i64 %35, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @GHND, align 4
  %41 = call i32 @TestGlobalLockNUnlock(i32 %40)
  %42 = call i64 @TEST_CombineStatus(i64 %39, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @GMEM_FIXED, align 4
  %45 = call i32 @TestGlobalLockNUnlock(i32 %44)
  %46 = call i64 @TEST_CombineStatus(i64 %43, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @GMEM_MOVEABLE, align 4
  %49 = call i32 @TestGlobalLockNUnlock(i32 %48)
  %50 = call i64 @TEST_CombineStatus(i64 %47, i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 (...) @TestGlobalReAlloc()
  %53 = call i64 @TEST_CombineStatus(i64 %51, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 (...) @TestGlobalFlags()
  %56 = call i64 @TEST_CombineStatus(i64 %54, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (...) @TestGlobalHandle()
  %59 = call i64 @TEST_CombineStatus(i64 %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 (...) @TestGlobalSize()
  %62 = call i64 @TEST_CombineStatus(i64 %60, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 (...) @TestGlobalDiscard()
  %65 = call i64 @TEST_CombineStatus(i64 %63, i32 %64)
  store i64 %65, i64* %6, align 8
  %66 = call i32 @OUTPUT_Banner(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @OUTPUT_Result(i64 %67)
  %69 = load i64, i64* %6, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %34, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @OUTPUT_Banner(i8*) #1

declare dso_local i64 @TEST_CombineStatus(i64, i32) #1

declare dso_local i32 @TestGlobalAllocNFree(i32) #1

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i32 @OUTPUT_Result(i64) #1

declare dso_local i32 @TestGlobalLockNUnlock(i32) #1

declare dso_local i32 @TestGlobalReAlloc(...) #1

declare dso_local i32 @TestGlobalFlags(...) #1

declare dso_local i32 @TestGlobalHandle(...) #1

declare dso_local i32 @TestGlobalSize(...) #1

declare dso_local i32 @TestGlobalDiscard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
