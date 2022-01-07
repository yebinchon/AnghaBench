; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_points_differ.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_points_differ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, float)* @points_differ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @points_differ(i64 %0, i64 %1, i64 %2, i64 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca float, align 4
  %10 = bitcast %struct.TYPE_4__* %7 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = bitcast %struct.TYPE_4__* %8 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %3, i64* %15, align 8
  store float %4, float* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = call float @fz_abs(i64 %20)
  %22 = load float, float* %9, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %36

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = call float @fz_abs(i64 %30)
  %32 = load float, float* %9, align 4
  %33 = fcmp ogt float %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %34, %24
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local float @fz_abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
