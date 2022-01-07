; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-blend.c_fz_soft_light_byte.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-blend.c_fz_soft_light_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fz_soft_light_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fz_soft_light_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 1
  %13 = sub nsw i32 255, %12
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @fz_mul255(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 255, %16
  %18 = call i32 @fz_mul255(i32 %15, i32 %17)
  %19 = sub nsw i32 %10, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 4
  %26 = sub nsw i32 %25, 3060
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @fz_mul255(i32 %26, i32 %27)
  %29 = add nsw i32 %28, 1020
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @fz_mul255(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float 2.550000e+02, %34
  %36 = call i64 @sqrtf(float %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 1
  %42 = sub nsw i32 %41, 255
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @fz_mul255(i32 %42, i32 %45)
  %47 = add nsw i32 %39, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @fz_mul255(i32, i32) #1

declare dso_local i64 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
