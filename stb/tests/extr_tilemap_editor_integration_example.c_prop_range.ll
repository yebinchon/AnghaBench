; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_prop_range.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_prop_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prop_range.ranges = internal global [8 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float -1.500000e+01, float 1.500000e+01], [2 x float] [float -1.500000e+01, float 1.500000e+01], [2 x float] [float 0.000000e+00, float 6.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+01], [2 x float] [float 0.000000e+00, float 1.000000e+01], [2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i16*, i32)* @prop_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @prop_range(i32 %0, i16* %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i16*, i16** %6, align 8
  %9 = call i64 @is_platform(i16* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x [2 x float]], [8 x [2 x float]]* @prop_range.ranges, i64 0, i64 %13
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 %16
  %18 = load float, float* %17, align 4
  store float %18, float* %4, align 4
  br label %20

19:                                               ; preds = %3
  store float 0.000000e+00, float* %4, align 4
  br label %20

20:                                               ; preds = %19, %11
  %21 = load float, float* %4, align 4
  ret float %21
}

declare dso_local i64 @is_platform(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
