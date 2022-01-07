; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_gamma_is_valid.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_gamma_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_GAMMA = common dso_local global float 0.000000e+00, align 4
@MAX_GAMMA = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*)* @gamma_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gamma_is_valid(float* %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = getelementptr inbounds float, float* %3, i64 0
  %5 = load float, float* %4, align 4
  %6 = load float, float* @MIN_GAMMA, align 4
  %7 = fcmp olt float %5, %6
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load float*, float** %2, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float, float* @MAX_GAMMA, align 4
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load float*, float** %2, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load float, float* @MIN_GAMMA, align 4
  %19 = fcmp olt float %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load float*, float** %2, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  %24 = load float, float* @MAX_GAMMA, align 4
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load float*, float** %2, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = load float, float* @MIN_GAMMA, align 4
  %31 = fcmp olt float %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load float*, float** %2, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = load float, float* @MAX_GAMMA, align 4
  %37 = fcmp ogt float %35, %36
  br label %38

38:                                               ; preds = %32, %26, %20, %14, %8, %1
  %39 = phi i1 [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %37, %32 ]
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
