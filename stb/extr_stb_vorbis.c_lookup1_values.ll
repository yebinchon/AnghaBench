; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_lookup1_values.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_lookup1_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lookup1_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup1_values(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sitofp i32 %7 to float
  %9 = call i64 @log(float %8)
  %10 = sitofp i64 %9 to float
  %11 = load i32, i32* %5, align 4
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %10, %12
  %14 = call i32 @exp(float %13)
  %15 = call i64 @floor(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 1.000000e+00
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pow(float %19, i32 %20)
  %22 = call i64 @floor(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %6, align 4
  %31 = sitofp i32 %30 to float
  %32 = fadd float %31, 1.000000e+00
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pow(float %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %50

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = sitofp i32 %39 to float
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pow(float %40, i32 %41)
  %43 = call i64 @floor(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %47, %37
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @floor(i32) #1

declare dso_local i32 @exp(float) #1

declare dso_local i64 @log(float) #1

declare dso_local i32 @pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
