; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/math/amd64/extr_sqrt.c_sqrt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/math/amd64/extr_sqrt.c_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double* }
%union.anon.0 = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sqrt(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca %union.anon.0, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store double %0, double* %3, align 8
  %8 = bitcast %union.anon* %4 to %struct.TYPE_8__*
  %9 = load double, double* %3, align 8
  %10 = call double* @_mm_set_sd(double %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store double* %10, double** %11, align 8
  %12 = bitcast %struct.TYPE_8__* %8 to i8*
  %13 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = bitcast %union.anon* %4 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @_mm_cvtsi128_si64(i32 %15)
  %17 = bitcast %union.anon.0* %5 to i64*
  store i64 %16, i64* %17, align 8
  %18 = bitcast %union.anon.0* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -9223372036854775808
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = bitcast %union.anon.0* %5 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, -9223372036854775808
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = bitcast %union.anon.0* %5 to i64*
  store i64 -2251799813685248, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = bitcast %union.anon.0* %5 to double*
  %30 = load double, double* %29, align 8
  store double %30, double* %2, align 8
  br label %58

31:                                               ; preds = %1
  %32 = bitcast %union.anon.0* %5 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %33, 9218868437227405312
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = bitcast %union.anon.0* %5 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, 2251799813685248
  store i64 %38, i64* %36, align 8
  %39 = bitcast %union.anon.0* %5 to double*
  %40 = load double, double* %39, align 8
  store double %40, double* %2, align 8
  br label %58

41:                                               ; preds = %31
  %42 = bitcast %union.anon* %4 to %struct.TYPE_8__*
  %43 = bitcast %union.anon* %4 to %struct.TYPE_8__*
  %44 = bitcast %union.anon* %4 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  %49 = call double* @_mm_sqrt_sd(double* %46, double* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store double* %49, double** %50, align 8
  %51 = bitcast %struct.TYPE_8__* %42 to i8*
  %52 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = bitcast %union.anon* %4 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  %57 = load double, double* %56, align 8
  store double %57, double* %2, align 8
  br label %58

58:                                               ; preds = %41, %35, %28
  %59 = load double, double* %2, align 8
  ret double %59
}

declare dso_local double* @_mm_set_sd(double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @_mm_cvtsi128_si64(i32) #1

declare dso_local double* @_mm_sqrt_sd(double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
