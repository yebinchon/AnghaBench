; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-w32gdi.c_w32gdi_set_temperature.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-w32gdi.c_w32gdi_set_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unable to open device context.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@GAMMA_RAMP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAX_ATTEMPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to set gamma ramps.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @w32gdi_set_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w32gdi_set_temperature(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = call i32* @GetDC(i32* null)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fputs(i32 %21, i32 %22)
  store i32 -1, i32* %4, align 4
  br label %141

24:                                               ; preds = %3
  %25 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %26 = mul nsw i32 3, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call double* @malloc(i32 %29)
  store double* %30, double** %10, align 8
  %31 = load double*, double** %10, align 8
  %32 = icmp eq double* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @ReleaseDC(i32* null, i32* %35)
  store i32 -1, i32* %4, align 4
  br label %141

37:                                               ; preds = %24
  %38 = load double*, double** %10, align 8
  %39 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %40 = mul nsw i32 0, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %38, i64 %41
  store double* %42, double** %11, align 8
  %43 = load double*, double** %10, align 8
  %44 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %45 = mul nsw i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  store double* %47, double** %12, align 8
  %48 = load double*, double** %10, align 8
  %49 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  store double* %52, double** %13, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %37
  %56 = load double*, double** %10, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %61 = mul nsw i32 3, %60
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(double* %56, i32 %59, i32 %64)
  br label %100

66:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = sitofp i32 %72 to double
  %74 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  %77 = load i32, i32* @UINT16_MAX, align 4
  %78 = add nsw i32 %77, 1
  %79 = sitofp i32 %78 to double
  %80 = fmul double %76, %79
  store double %80, double* %15, align 8
  %81 = load double, double* %15, align 8
  %82 = load double*, double** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %81, double* %85, align 8
  %86 = load double, double* %15, align 8
  %87 = load double*, double** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  store double %86, double* %90, align 8
  %91 = load double, double* %15, align 8
  %92 = load double*, double** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  store double %91, double* %95, align 8
  br label %96

96:                                               ; preds = %71
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %67

99:                                               ; preds = %67
  br label %100

100:                                              ; preds = %99, %55
  %101 = load double*, double** %11, align 8
  %102 = load double*, double** %12, align 8
  %103 = load double*, double** %13, align 8
  %104 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @colorramp_fill(double* %101, double* %102, double* %103, i32 %104, i32* %105)
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %8, align 8
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %122, %100
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @MAX_ATTEMPTS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  br i1 %117, label %118, label %125

118:                                              ; preds = %116
  %119 = load i32*, i32** %9, align 8
  %120 = load double*, double** %10, align 8
  %121 = call i64 @SetDeviceGammaRamp(i32* %119, double* %120)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %108

125:                                              ; preds = %116
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 @fputs(i32 %129, i32 %130)
  %132 = load double*, double** %10, align 8
  %133 = call i32 @free(double* %132)
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @ReleaseDC(i32* null, i32* %134)
  store i32 -1, i32* %4, align 4
  br label %141

136:                                              ; preds = %125
  %137 = load double*, double** %10, align 8
  %138 = call i32 @free(double* %137)
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @ReleaseDC(i32* null, i32* %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %136, %128, %33, %20
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local double* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

declare dso_local i32 @memcpy(double*, i32, i32) #1

declare dso_local i32 @colorramp_fill(double*, double*, double*, i32, i32*) #1

declare dso_local i64 @SetDeviceGammaRamp(i32*, double*) #1

declare dso_local i32 @free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
