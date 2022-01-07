; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_CreateStep.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_CreateStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @CreateStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateStep() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = call i64* @calloc(i32 4096, i32 8)
  store i64* %6, i64** %3, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %38

10:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 4096
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 2.550000e+02
  %18 = fdiv double %17, 4.095000e+03
  store double %18, double* %5, align 8
  %19 = load double, double* %5, align 8
  %20 = call double @DecodeAbTIFF(double %19)
  store double %20, double* %5, align 8
  %21 = load double, double* %5, align 8
  %22 = fmul double %21, 2.570000e+02
  %23 = fadd double %22, 5.000000e-01
  %24 = call i64 @floor(double %23)
  %25 = load i64*, i64** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i64*, i64** %3, align 8
  %34 = call i32* @cmsBuildTabulatedToneCurve16(i32 0, i32 4096, i64* %33)
  store i32* %34, i32** %2, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = call i32 @free(i64* %35)
  %37 = load i32*, i32** %2, align 8
  store i32* %37, i32** %1, align 8
  br label %38

38:                                               ; preds = %32, %9
  %39 = load i32*, i32** %1, align 8
  ret i32* %39
}

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local double @DecodeAbTIFF(double) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
