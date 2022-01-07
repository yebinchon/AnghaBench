; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabDoubleToFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabDoubleToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i64*, i32*, i64)* @UnrollLabDoubleToFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollLabDoubleToFloat(i32 %0, %struct.TYPE_3__* %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64* %2, i64** %9, align 8
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
  br i1 %19, label %20, label %55

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
  %31 = fptosi double %30 to i64
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 %31, i64* %33, align 8
  %34 = load double*, double** %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds double, double* %34, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fadd double %37, 1.280000e+02
  %39 = fdiv double %38, 2.550000e+02
  %40 = fptosi double %39 to i64
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  %43 = load double*, double** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 2
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fadd double %47, 1.280000e+02
  %49 = fdiv double %48, 2.550000e+02
  %50 = fptosi double %49 to i64
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 %50, i64* %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32* %54, i32** %6, align 8
  br label %89

55:                                               ; preds = %5
  %56 = load double*, double** %12, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  %58 = load double, double* %57, align 8
  %59 = fdiv double %58, 1.000000e+02
  %60 = fptosi double %59 to i64
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load double*, double** %12, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = fadd double %65, 1.280000e+02
  %67 = fdiv double %66, 2.550000e+02
  %68 = fptosi double %67 to i64
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 %68, i64* %70, align 8
  %71 = load double*, double** %12, align 8
  %72 = getelementptr inbounds double, double* %71, i64 2
  %73 = load double, double* %72, align 8
  %74 = fadd double %73, 1.280000e+02
  %75 = fdiv double %74, 2.550000e+02
  %76 = fptosi double %75 to i64
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @T_EXTRA(i32 %81)
  %83 = add nsw i32 3, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 8, %84
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %55, %20
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
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
