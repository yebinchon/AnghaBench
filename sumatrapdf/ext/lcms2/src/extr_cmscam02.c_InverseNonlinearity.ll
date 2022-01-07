; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseNonlinearity.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseNonlinearity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double }
%struct.TYPE_7__ = type { double*, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double*, double* } (double*, double*, %struct.TYPE_6__*)* @InverseNonlinearity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double*, double* } @InverseNonlinearity(double* %0, double* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = bitcast %struct.TYPE_7__* %5 to { double*, double* }*
  %10 = getelementptr inbounds { double*, double* }, { double*, double* }* %9, i32 0, i32 0
  store double* %0, double** %10, align 8
  %11 = getelementptr inbounds { double*, double* }, { double*, double* }* %9, i32 0, i32 1
  store double* %1, double** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %59, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fsub double %21, 1.000000e-01
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store double -1.000000e+00, double* %8, align 8
  br label %26

25:                                               ; preds = %15
  store double 1.000000e+00, double* %8, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load double, double* %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fdiv double 1.000000e+02, %30
  %32 = fmul double %27, %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fsub double %38, 1.000000e-01
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = fmul double 2.713000e+01, %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fsub double %47, 1.000000e-01
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = fsub double 4.000000e+02, %49
  %51 = fdiv double %41, %50
  %52 = call double @pow(double %51, double 0x40030C30C30C30C3) #4
  %53 = fmul double %32, %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %53, double* %58, align 8
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %12

62:                                               ; preds = %12
  %63 = bitcast %struct.TYPE_7__* %4 to i8*
  %64 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = bitcast %struct.TYPE_7__* %4 to { double*, double* }*
  %66 = load { double*, double* }, { double*, double* }* %65, align 8
  ret { double*, double* } %66
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
