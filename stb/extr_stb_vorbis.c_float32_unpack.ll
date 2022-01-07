; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_float32_unpack.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_float32_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32)* @float32_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @float32_unpack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 2097151
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, -2147483648
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 2145386496
  %13 = ashr i32 %12, 21
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = sitofp i32 %17 to double
  %19 = fneg double %18
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = sitofp i32 %21 to double
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi double [ %19, %16 ], [ %22, %20 ]
  store double %24, double* %6, align 8
  %25 = load double, double* %6, align 8
  %26 = fptrunc double %25 to float
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 788
  %29 = call i64 @ldexp(float %26, i32 %28)
  %30 = sitofp i64 %29 to float
  ret float %30
}

declare dso_local i64 @ldexp(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
