; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-vidmode.c_vidmode_set_temperature.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-vidmode.c_vidmode_set_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"X request failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"XF86VidModeSetGammaRamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @vidmode_set_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidmode_set_temperature(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 3, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call double* @malloc(i32 %21)
  store double* %22, double** %9, align 8
  %23 = load double*, double** %9, align 8
  %24 = icmp eq double* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %137

27:                                               ; preds = %3
  %28 = load double*, double** %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 0, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %28, i64 %33
  store double* %34, double** %10, align 8
  %35 = load double*, double** %9, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %35, i64 %40
  store double* %41, double** %11, align 8
  %42 = load double*, double** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %42, i64 %47
  store double* %48, double** %12, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %27
  %52 = load double*, double** %9, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 3, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(double* %52, i32 %55, i32 %62)
  br label %102

64:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = sitofp i32 %72 to double
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %73, %77
  %79 = load i32, i32* @UINT16_MAX, align 4
  %80 = add nsw i32 %79, 1
  %81 = sitofp i32 %80 to double
  %82 = fmul double %78, %81
  store double %82, double* %14, align 8
  %83 = load double, double* %14, align 8
  %84 = load double*, double** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  store double %83, double* %87, align 8
  %88 = load double, double* %14, align 8
  %89 = load double*, double** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  store double %88, double* %92, align 8
  %93 = load double, double* %14, align 8
  %94 = load double*, double** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  br label %98

98:                                               ; preds = %71
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %65

101:                                              ; preds = %65
  br label %102

102:                                              ; preds = %101, %51
  %103 = load double*, double** %10, align 8
  %104 = load double*, double** %11, align 8
  %105 = load double*, double** %12, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sitofp i32 %108 to double
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @colorramp_fill(double* %103, double* %104, double* %105, double %109, i32* %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sitofp i32 %120 to double
  %122 = load double*, double** %10, align 8
  %123 = load double*, double** %11, align 8
  %124 = load double*, double** %12, align 8
  %125 = call i32 @XF86VidModeSetGammaRamp(i32 %114, i32 %117, double %121, double* %122, double* %123, double* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %102
  %129 = load i32, i32* @stderr, align 4
  %130 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %131 = call i32 @fprintf(i32 %129, i8* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %132 = load double*, double** %9, align 8
  %133 = call i32 @free(double* %132)
  store i32 -1, i32* %4, align 4
  br label %137

134:                                              ; preds = %102
  %135 = load double*, double** %9, align 8
  %136 = call i32 @free(double* %135)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %128, %25
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local double* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(double*, i32, i32) #1

declare dso_local i32 @colorramp_fill(double*, double*, double*, double, i32*) #1

declare dso_local i32 @XF86VidModeSetGammaRamp(i32, i32, double, double*, double*, double*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
