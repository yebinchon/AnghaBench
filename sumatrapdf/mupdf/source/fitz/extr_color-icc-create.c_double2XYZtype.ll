; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_double2XYZtype.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_double2XYZtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, float)* @double2XYZtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @double2XYZtype(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %7 = load float, float* %4, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store float 0.000000e+00, float* %4, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load float, float* %4, align 4
  %12 = fptosi float %11 to i16
  store i16 %12, i16* %5, align 2
  %13 = load float, float* %4, align 4
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = sitofp i32 %15 to float
  %17 = fsub float %13, %16
  %18 = fmul float %17, 6.553600e+04
  %19 = fptoui float %18 to i16
  store i16 %19, i16* %6, align 2
  %20 = load i16, i16* %5, align 2
  %21 = sext i16 %20 to i32
  %22 = shl i32 %21, 16
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
