; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_NonlinearCompression.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_NonlinearCompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, double*, double }
%struct.TYPE_6__ = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_6__*)* @NonlinearCompression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NonlinearCompression(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %3
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %71

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %12 = load double*, double** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fmul double -1.000000e+00, %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %22, %28
  %30 = fdiv double %29, 1.000000e+02
  %31 = call double @pow(double %30, double 4.200000e-01) #3
  store double %31, double* %6, align 8
  %32 = load double, double* %6, align 8
  %33 = fmul double -4.000000e+02, %32
  %34 = load double, double* %6, align 8
  %35 = fadd double %34, 2.713000e+01
  %36 = fdiv double %33, %35
  %37 = fadd double %36, 1.000000e-01
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %39 = load double*, double** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double %37, double* %42, align 8
  br label %67

43:                                               ; preds = %10
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double %46, %52
  %54 = fdiv double %53, 1.000000e+02
  %55 = call double @pow(double %54, double 4.200000e-01) #3
  store double %55, double* %6, align 8
  %56 = load double, double* %6, align 8
  %57 = fmul double 4.000000e+02, %56
  %58 = load double, double* %6, align 8
  %59 = fadd double %58, 2.713000e+01
  %60 = fdiv double %57, %59
  %61 = fadd double %60, 1.000000e-01
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  store double %61, double* %66, align 8
  br label %67

67:                                               ; preds = %43, %18
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %7

71:                                               ; preds = %7
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = fmul double 2.000000e+00, %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %78 = load double*, double** %77, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  %80 = load double, double* %79, align 8
  %81 = fadd double %76, %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %83 = load double*, double** %82, align 8
  %84 = getelementptr inbounds double, double* %83, i64 2
  %85 = load double, double* %84, align 8
  %86 = fdiv double %85, 2.000000e+01
  %87 = fadd double %81, %86
  %88 = fsub double %87, 3.050000e-01
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = fmul double %88, %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store double %92, double* %93, align 8
  %94 = bitcast %struct.TYPE_7__* %0 to i8*
  %95 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
