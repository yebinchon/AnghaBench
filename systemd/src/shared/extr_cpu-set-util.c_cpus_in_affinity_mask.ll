; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_cpu-set-util.c_cpus_in_affinity_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_cpu-set-util.c_cpus_in_affinity_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpus_in_affinity_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 16, i64* %2, align 8
  br label %6

6:                                                ; preds = %54, %0
  %7 = load i64, i64* %2, align 8
  %8 = call i32* @CPU_ALLOC(i64 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %57

14:                                               ; preds = %6
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @CPU_ALLOC_SIZE(i64 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @sched_getaffinity(i32 0, i32 %16, i32* %17)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @CPU_ALLOC_SIZE(i64 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @CPU_COUNT_S(i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @CPU_FREE(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %57

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %1, align 4
  br label %57

34:                                               ; preds = %14
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @CPU_FREE(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %1, align 4
  br label %57

45:                                               ; preds = %34
  %46 = load i64, i64* %2, align 8
  %47 = load i32, i32* @SIZE_MAX, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %1, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = mul i64 %55, 2
  store i64 %56, i64* %2, align 8
  br label %6

57:                                               ; preds = %51, %43, %32, %29, %11
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32* @CPU_ALLOC(i64) #1

declare dso_local i64 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @CPU_ALLOC_SIZE(i64) #1

declare dso_local i32 @CPU_COUNT_S(i32, i32*) #1

declare dso_local i32 @CPU_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
