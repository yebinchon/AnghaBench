; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_rects_differ.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_rects_differ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, float)* @rects_differ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rects_differ(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store float %2, float* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %7, %9
  %11 = call float @fz_abs(i64 %10)
  %12 = load float, float* %5, align 4
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = call float @fz_abs(i64 %20)
  %22 = load float, float* %5, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %46

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = call float @fz_abs(i64 %30)
  %32 = load float, float* %5, align 4
  %33 = fcmp ogt float %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %46

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %37, %39
  %41 = call float @fz_abs(i64 %40)
  %42 = load float, float* %5, align 4
  %43 = fcmp ogt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %46

45:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %34, %24, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local float @fz_abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
