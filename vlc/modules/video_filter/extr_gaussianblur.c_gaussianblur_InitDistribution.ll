; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_gaussianblur.c_gaussianblur_InitDistribution.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_gaussianblur.c_gaussianblur_InitDistribution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i64* }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @gaussianblur_InitDistribution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaussianblur_InitDistribution(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = fmul double 3.000000e+00, %12
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64* @xmalloc(i32 %20)
  store i64* %21, i64** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %60, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 0, %31
  %33 = sitofp i32 %32 to double
  %34 = load double, double* %3, align 8
  %35 = load double, double* %3, align 8
  %36 = fmul double %34, %35
  %37 = fdiv double %33, %36
  %38 = fptosi double %37 to i32
  %39 = call i32 @exp(i32 %38)
  %40 = sitofp i32 %39 to double
  %41 = load i32, i32* @M_PI, align 4
  %42 = sitofp i32 %41 to double
  %43 = fmul double 2.000000e+00, %42
  %44 = load double, double* %3, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %3, align 8
  %47 = fmul double %45, %46
  %48 = fdiv double %40, %47
  %49 = fptosi double %48 to i32
  %50 = call float @sqrt(i32 %49)
  store float %50, float* %7, align 4
  store float 1.000000e+00, float* %8, align 4
  %51 = load float, float* %7, align 4
  %52 = fmul float %51, 1.000000e+00
  %53 = fptosi float %52 to i64
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  store i64 %53, i64* %59, align 8
  br label %60

60:                                               ; preds = %28
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64* %67, i64** %69, align 8
  ret void
}

declare dso_local i64* @xmalloc(i32) #1

declare dso_local float @sqrt(i32) #1

declare dso_local i32 @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
