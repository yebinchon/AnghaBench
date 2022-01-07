; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog16val.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog16val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_LN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @sgilog16val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgilog16val(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 32767
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store float 0.000000e+00, float* %6, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @FZ_LN2, align 4
  %14 = sdiv i32 %13, 256
  %15 = sitofp i32 %14 to float
  %16 = load i32, i32* %5, align 4
  %17 = sitofp i32 %16 to float
  %18 = fadd float %17, 5.000000e-01
  %19 = fmul float %15, %18
  %20 = load i32, i32* @FZ_LN2, align 4
  %21 = mul nsw i32 %20, 64
  %22 = sitofp i32 %21 to float
  %23 = fsub float %19, %22
  %24 = fptosi float %23 to i32
  %25 = call float @expf(i32 %24)
  store float %25, float* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 32768
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load float, float* %6, align 4
  %31 = fneg float %30
  store float %31, float* %6, align 4
  br label %32

32:                                               ; preds = %29, %12
  br label %33

33:                                               ; preds = %32, %11
  %34 = load float, float* %6, align 4
  %35 = fcmp ole float %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %47

37:                                               ; preds = %33
  %38 = load float, float* %6, align 4
  %39 = fcmp oge float %38, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load float, float* %6, align 4
  %43 = call i32 @sqrtf(float %42)
  %44 = mul nsw i32 256, %43
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i32 [ 255, %40 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi i32 [ 0, %36 ], [ %46, %45 ]
  ret i32 %48
}

declare dso_local float @expf(i32) #1

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
