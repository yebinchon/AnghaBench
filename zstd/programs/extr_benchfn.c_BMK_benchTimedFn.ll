; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_benchfn.c_BMK_benchTimedFn.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_benchfn.c_BMK_benchTimedFn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, double, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BMK_benchTimedFn(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = bitcast %struct.TYPE_7__* %9 to i8*
  %23 = bitcast %struct.TYPE_7__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  br label %24

24:                                               ; preds = %106, %91, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %107

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = call i32 @BMK_benchFunction(i32 %29, double %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @BMK_isSuccessful_runOutcome(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %111

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = call double @BMK_extract_runTime(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store double %41, double* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fmul double %44, %47
  store double %48, double* %12, align 8
  %49 = load double, double* %12, align 8
  %50 = fptoui double %49 to i64
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load double, double* %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %56, 50
  %58 = sitofp i32 %57 to double
  %59 = fcmp ogt double %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %39
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = call double @MIN(double %62, double %64)
  store double %65, double* %13, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sitofp i32 %66 to double
  %68 = load double, double* %13, align 8
  %69 = fdiv double %67, %68
  %70 = fptoui double %69 to i32
  %71 = add i32 %70, 1
  %72 = uitofp i32 %71 to double
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store double %72, double* %74, align 8
  br label %86

75:                                               ; preds = %39
  store i32 10, i32* %14, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = fcmp olt double %78, 0x41B9999999000000
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = fmul double %84, 1.000000e+01
  store double %85, double* %83, align 8
  br label %86

86:                                               ; preds = %75, %60
  %87 = load double, double* %12, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sitofp i32 %88 to double
  %90 = fcmp olt double %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  br label %24

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fcmp olt double %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = bitcast %struct.TYPE_7__* %9 to i8*
  %104 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  br label %105

105:                                              ; preds = %102, %96
  store i32 1, i32* %8, align 4
  br label %106

106:                                              ; preds = %105
  br label %24

107:                                              ; preds = %24
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = call i32 @BMK_setValid_runTime(double %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %37
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BMK_benchFunction(i32, double) #2

declare dso_local i32 @BMK_isSuccessful_runOutcome(i32) #2

declare dso_local double @BMK_extract_runTime(i32) #2

declare dso_local double @MIN(double, double) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @BMK_setValid_runTime(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
