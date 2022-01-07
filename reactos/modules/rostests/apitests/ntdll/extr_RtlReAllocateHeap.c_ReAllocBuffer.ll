; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlReAllocateHeap.c_ReAllocBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlReAllocateHeap.c_ReAllocBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RtlReAllocateHeap failed for size %lu (%s)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"CheckBuffer failed at size 0x%lx -> 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"HEAP_ZERO_MEMORY not respected for 0x%lx -> 0x%lx\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i32)* @ReAllocBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReAllocBuffer(i64* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** %8, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @RtlFillMemory(i64 %15, i64 %16, i32 122)
  %18 = call i32 (...) @RtlGetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @RtlReAllocateHeap(i32 %18, i32 %19, i64 %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %6, align 8
  store i64 %32, i64* %33, align 8
  %34 = call i32 (...) @RtlGetProcessHeap()
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @RtlSizeHeap(i32 %34, i32 0, i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ok_hex(i32 %36, i64 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @CheckBuffer(i64 %43, i64 %44, i32 122)
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @CheckBuffer(i64 %51, i64 %54, i32 0)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %57)
  br label %66

59:                                               ; preds = %31
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @CheckBuffer(i64 %60, i64 %61, i32 122)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %42
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @RtlFillMemory(i64, i64, i32) #1

declare dso_local i64 @RtlReAllocateHeap(i32, i32, i64, i64) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @skip(i8*, i64, i32) #1

declare dso_local i32 @ok_hex(i32, i64) #1

declare dso_local i32 @RtlSizeHeap(i32, i32, i64) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @CheckBuffer(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
