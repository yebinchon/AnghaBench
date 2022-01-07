; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckD50Roundtrip.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckD50Roundtrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsD50X = common dso_local global double 0.000000e+00, align 8
@cmsD50Y = common dso_local global double 0.000000e+00, align 8
@cmsD50Z = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [28 x i8] c"D50 roundtrip |err| > (%f) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckD50Roundtrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckD50Roundtrip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double 0x3FEEDABFFF89E36E, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  store double 0x3FEA65A0026966CC, double* %4, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = load double, double* @cmsD50X, align 8
  %17 = call i32 @_cmsDoubleTo15Fixed16(i32 %15, double %16)
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @DbgThread()
  %19 = load double, double* @cmsD50Y, align 8
  %20 = call i32 @_cmsDoubleTo15Fixed16(i32 %18, double %19)
  store i32 %20, i32* %6, align 4
  %21 = call i32 (...) @DbgThread()
  %22 = load double, double* @cmsD50Z, align 8
  %23 = call i32 @_cmsDoubleTo15Fixed16(i32 %21, double %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @DbgThread()
  %25 = load i32, i32* %5, align 4
  %26 = call double @_cms15Fixed16toDouble(i32 %24, i32 %25)
  store double %26, double* %8, align 8
  %27 = call i32 (...) @DbgThread()
  %28 = load i32, i32* %6, align 4
  %29 = call double @_cms15Fixed16toDouble(i32 %27, i32 %28)
  store double %29, double* %9, align 8
  %30 = call i32 (...) @DbgThread()
  %31 = load i32, i32* %7, align 4
  %32 = call double @_cms15Fixed16toDouble(i32 %30, i32 %31)
  store double %32, double* %10, align 8
  %33 = load double, double* @cmsD50X, align 8
  %34 = load double, double* %8, align 8
  %35 = fsub double %33, %34
  %36 = call double @llvm.fabs.f64(double %35)
  store double %36, double* %11, align 8
  %37 = load double, double* @cmsD50Y, align 8
  %38 = load double, double* %9, align 8
  %39 = fsub double %37, %38
  %40 = call double @llvm.fabs.f64(double %39)
  store double %40, double* %12, align 8
  %41 = load double, double* @cmsD50Z, align 8
  %42 = load double, double* %10, align 8
  %43 = fsub double %41, %42
  %44 = call double @llvm.fabs.f64(double %43)
  store double %44, double* %13, align 8
  %45 = load double, double* %11, align 8
  %46 = load double, double* %11, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %12, align 8
  %49 = load double, double* %12, align 8
  %50 = fmul double %48, %49
  %51 = fadd double %47, %50
  %52 = load double, double* %13, align 8
  %53 = load double, double* %13, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %51, %54
  %56 = call double @sqrt(double %55) #4
  store double %56, double* %14, align 8
  %57 = load double, double* %14, align 8
  %58 = fcmp ogt double %57, 1.000000e-05
  br i1 %58, label %59, label %62

59:                                               ; preds = %0
  %60 = load double, double* %14, align 8
  %61 = call i32 @Fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), double %60)
  store i32 0, i32* %1, align 4
  br label %111

62:                                               ; preds = %0
  %63 = call i32 (...) @DbgThread()
  %64 = load double, double* %2, align 8
  %65 = call i32 @_cmsDoubleTo15Fixed16(i32 %63, double %64)
  store i32 %65, i32* %5, align 4
  %66 = call i32 (...) @DbgThread()
  %67 = load double, double* %3, align 8
  %68 = call i32 @_cmsDoubleTo15Fixed16(i32 %66, double %67)
  store i32 %68, i32* %6, align 4
  %69 = call i32 (...) @DbgThread()
  %70 = load double, double* %4, align 8
  %71 = call i32 @_cmsDoubleTo15Fixed16(i32 %69, double %70)
  store i32 %71, i32* %7, align 4
  %72 = call i32 (...) @DbgThread()
  %73 = load i32, i32* %5, align 4
  %74 = call double @_cms15Fixed16toDouble(i32 %72, i32 %73)
  store double %74, double* %8, align 8
  %75 = call i32 (...) @DbgThread()
  %76 = load i32, i32* %6, align 4
  %77 = call double @_cms15Fixed16toDouble(i32 %75, i32 %76)
  store double %77, double* %9, align 8
  %78 = call i32 (...) @DbgThread()
  %79 = load i32, i32* %7, align 4
  %80 = call double @_cms15Fixed16toDouble(i32 %78, i32 %79)
  store double %80, double* %10, align 8
  %81 = load double, double* %2, align 8
  %82 = load double, double* %8, align 8
  %83 = fsub double %81, %82
  %84 = call double @llvm.fabs.f64(double %83)
  store double %84, double* %11, align 8
  %85 = load double, double* %3, align 8
  %86 = load double, double* %9, align 8
  %87 = fsub double %85, %86
  %88 = call double @llvm.fabs.f64(double %87)
  store double %88, double* %12, align 8
  %89 = load double, double* %4, align 8
  %90 = load double, double* %10, align 8
  %91 = fsub double %89, %90
  %92 = call double @llvm.fabs.f64(double %91)
  store double %92, double* %13, align 8
  %93 = load double, double* %11, align 8
  %94 = load double, double* %11, align 8
  %95 = fmul double %93, %94
  %96 = load double, double* %12, align 8
  %97 = load double, double* %12, align 8
  %98 = fmul double %96, %97
  %99 = fadd double %95, %98
  %100 = load double, double* %13, align 8
  %101 = load double, double* %13, align 8
  %102 = fmul double %100, %101
  %103 = fadd double %99, %102
  %104 = call double @sqrt(double %103) #4
  store double %104, double* %14, align 8
  %105 = load double, double* %14, align 8
  %106 = fcmp ogt double %105, 1.000000e-05
  br i1 %106, label %107, label %110

107:                                              ; preds = %62
  %108 = load double, double* %14, align 8
  %109 = call i32 @Fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), double %108)
  store i32 0, i32* %1, align 4
  br label %111

110:                                              ; preds = %62
  store i32 1, i32* %1, align 4
  br label %111

111:                                              ; preds = %110, %107, %59
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32 @_cmsDoubleTo15Fixed16(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local double @_cms15Fixed16toDouble(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @Fail(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
