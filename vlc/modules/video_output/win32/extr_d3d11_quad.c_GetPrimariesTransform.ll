; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_GetPrimariesTransform.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_GetPrimariesTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie1931_primaries = type { i32 }

@STANDARD_PRIMARIES = common dso_local global %struct.cie1931_primaries* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i64, i64)* @GetPrimariesTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetPrimariesTransform(double* %0, i64 %1, i64 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cie1931_primaries*, align 8
  %8 = alloca %struct.cie1931_primaries*, align 8
  %9 = alloca [9 x double], align 16
  %10 = alloca [9 x double], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** @STANDARD_PRIMARIES, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %14, i64 %15
  store %struct.cie1931_primaries* %16, %struct.cie1931_primaries** %7, align 8
  %17 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** @STANDARD_PRIMARIES, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %17, i64 %18
  store %struct.cie1931_primaries* %19, %struct.cie1931_primaries** %8, align 8
  %20 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %7, align 8
  %21 = getelementptr inbounds [9 x double], [9 x double]* %9, i64 0, i64 0
  %22 = call i32 @GetRGB2XYZMatrix(%struct.cie1931_primaries* %20, double* %21)
  %23 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %7, align 8
  %24 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %23, i32 0, i32 0
  %25 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %8, align 8
  %26 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %25, i32 0, i32 0
  %27 = getelementptr inbounds [9 x double], [9 x double]* %9, i64 0, i64 0
  %28 = call i32 @ChromaticAdaptation(i32* %24, i32* %26, double* %27)
  %29 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %8, align 8
  %30 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 0
  %31 = call i32 @GetXYZ2RGBMatrix(%struct.cie1931_primaries* %29, double* %30)
  %32 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 0
  %33 = getelementptr inbounds [9 x double], [9 x double]* %9, i64 0, i64 0
  %34 = call i32 @Float3x3Multiply(double* %32, double* %33)
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %64, %3
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %36, 3
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %40, 3
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 3
  %46 = add i64 %43, %45
  %47 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %4, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = mul i64 %51, 4
  %53 = add i64 %50, %52
  %54 = getelementptr inbounds double, double* %49, i64 %53
  store double %48, double* %54, align 8
  br label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load double*, double** %4, align 8
  %60 = load i64, i64* %11, align 8
  %61 = mul i64 %60, 4
  %62 = add i64 3, %61
  %63 = getelementptr inbounds double, double* %59, i64 %62
  store double 0.000000e+00, double* %63, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %35

67:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i64, i64* %13, align 8
  %70 = icmp ult i64 %69, 4
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %72, 3
  %74 = zext i1 %73 to i32
  %75 = sitofp i32 %74 to double
  %76 = load double*, double** %4, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 12
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double %75, double* %79, align 8
  br label %80

80:                                               ; preds = %71
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %68

83:                                               ; preds = %68
  ret void
}

declare dso_local i32 @GetRGB2XYZMatrix(%struct.cie1931_primaries*, double*) #1

declare dso_local i32 @ChromaticAdaptation(i32*, i32*, double*) #1

declare dso_local i32 @GetXYZ2RGBMatrix(%struct.cie1931_primaries*, double*) #1

declare dso_local i32 @Float3x3Multiply(double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
