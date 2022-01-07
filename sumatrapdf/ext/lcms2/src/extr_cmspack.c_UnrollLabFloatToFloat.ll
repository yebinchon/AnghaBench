; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabFloatToFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabFloatToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, double*, i32*, i64)* @UnrollLabFloatToFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollLabFloatToFloat(i32 %0, %struct.TYPE_3__* %1, double* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store double* %2, double** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = bitcast i32* %13 to double*
  store double* %14, double** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @T_PLANAR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @PixelSize(i32 %23)
  %25 = load i64, i64* %11, align 8
  %26 = udiv i64 %25, %24
  store i64 %26, i64* %11, align 8
  %27 = load double*, double** %12, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, 1.000000e+02
  %31 = load double*, double** %9, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  store double %30, double* %32, align 8
  %33 = load double*, double** %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds double, double* %33, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fadd double %36, 1.280000e+02
  %38 = fdiv double %37, 2.550000e+02
  %39 = load double*, double** %9, align 8
  %40 = getelementptr inbounds double, double* %39, i64 1
  store double %38, double* %40, align 8
  %41 = load double*, double** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = mul i64 %42, 2
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fadd double %45, 1.280000e+02
  %47 = fdiv double %46, 2.550000e+02
  %48 = load double*, double** %9, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  store double %47, double* %49, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32* %51, i32** %6, align 8
  br label %83

52:                                               ; preds = %5
  %53 = load double*, double** %12, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, 1.000000e+02
  %57 = load double*, double** %9, align 8
  %58 = getelementptr inbounds double, double* %57, i64 0
  store double %56, double* %58, align 8
  %59 = load double*, double** %12, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, 1.280000e+02
  %63 = fdiv double %62, 2.550000e+02
  %64 = load double*, double** %9, align 8
  %65 = getelementptr inbounds double, double* %64, i64 1
  store double %63, double* %65, align 8
  %66 = load double*, double** %12, align 8
  %67 = getelementptr inbounds double, double* %66, i64 2
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, 1.280000e+02
  %70 = fdiv double %69, 2.550000e+02
  %71 = load double*, double** %9, align 8
  %72 = getelementptr inbounds double, double* %71, i64 2
  store double %70, double* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @T_EXTRA(i32 %75)
  %77 = add nsw i32 3, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 8, %78
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %52, %20
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i64 @T_PLANAR(i32) #1

declare dso_local i64 @PixelSize(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
