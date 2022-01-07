; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_fill_NEON.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_NEON.c_THFloatVector_fill_NEON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, i32)* @THFloatVector_fill_NEON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_fill_NEON(float* %0, float %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load float, float* %5, align 4
  %16 = load float*, float** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds float, float* %16, i64 %17
  store float %15, float* %18, align 4
  %19 = load float, float* %5, align 4
  %20 = load float*, float** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %21, 1
  %23 = getelementptr inbounds float, float* %20, i64 %22
  store float %19, float* %23, align 4
  %24 = load float, float* %5, align 4
  %25 = load float*, float** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 2
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float %24, float* %28, align 4
  %29 = load float, float* %5, align 4
  %30 = load float*, float** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 3
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float %29, float* %33, align 4
  br label %34

34:                                               ; preds = %14
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 4
  store i64 %36, i64* %7, align 8
  br label %8

37:                                               ; preds = %8
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load float, float* %5, align 4
  %45 = load float*, float** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds float, float* %45, i64 %46
  store float %44, float* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %38

51:                                               ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
