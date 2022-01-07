; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash.c_geohashDecode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash.c_geohashDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { double, double }
%struct.TYPE_12__ = type { double, double }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geohashDecode(double %0, double %1, double %2, double %3, i64 %4, i32 %5, %struct.TYPE_16__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = bitcast %struct.TYPE_14__* %9 to { double, double }*
  %20 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  store double %0, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  store double %1, double* %21, align 8
  %22 = bitcast %struct.TYPE_14__* %10 to { double, double }*
  %23 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 0
  store double %2, double* %23, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 1
  store double %3, double* %24, align 8
  %25 = bitcast %struct.TYPE_15__* %11 to { i64, i32 }*
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  store i64 %4, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  store i32 %5, i32* %27, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %12, align 8
  %28 = bitcast %struct.TYPE_15__* %11 to { i64, i32 }*
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @HASHISZERO(i64 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %7
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %37 = icmp eq %struct.TYPE_16__* null, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  %39 = bitcast %struct.TYPE_14__* %10 to { double, double }*
  %40 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = call i64 @RANGEISZERO(double %41, double %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = bitcast %struct.TYPE_14__* %9 to { double, double }*
  %48 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = call i64 @RANGEISZERO(double %49, double %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %38, %35, %7
  store i32 0, i32* %8, align 4
  br label %138

55:                                               ; preds = %46
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = bitcast %struct.TYPE_15__* %57 to i8*
  %59 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @deinterleave64(i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = fsub double %66, %68
  store double %69, double* %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fsub double %71, %73
  store double %74, double* %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sitofp i32 %75 to double
  store double %76, double* %17, align 8
  %77 = load i32, i32* %14, align 4
  %78 = ashr i32 %77, 32
  %79 = sitofp i32 %78 to double
  store double %79, double* %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = load double, double* %17, align 8
  %83 = fmul double %82, 1.000000e+00
  %84 = load i64, i64* %13, align 8
  %85 = shl i64 1, %84
  %86 = uitofp i64 %85 to double
  %87 = fdiv double %83, %86
  %88 = load double, double* %15, align 8
  %89 = fmul double %87, %88
  %90 = fadd double %81, %89
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store double %90, double* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load double, double* %17, align 8
  %97 = fadd double %96, 1.000000e+00
  %98 = fmul double %97, 1.000000e+00
  %99 = load i64, i64* %13, align 8
  %100 = shl i64 1, %99
  %101 = uitofp i64 %100 to double
  %102 = fdiv double %98, %101
  %103 = load double, double* %15, align 8
  %104 = fmul double %102, %103
  %105 = fadd double %95, %104
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store double %105, double* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = load double, double* %18, align 8
  %112 = fmul double %111, 1.000000e+00
  %113 = load i64, i64* %13, align 8
  %114 = shl i64 1, %113
  %115 = uitofp i64 %114 to double
  %116 = fdiv double %112, %115
  %117 = load double, double* %16, align 8
  %118 = fmul double %116, %117
  %119 = fadd double %110, %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store double %119, double* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %124 = load double, double* %123, align 8
  %125 = load double, double* %18, align 8
  %126 = fadd double %125, 1.000000e+00
  %127 = fmul double %126, 1.000000e+00
  %128 = load i64, i64* %13, align 8
  %129 = shl i64 1, %128
  %130 = uitofp i64 %129 to double
  %131 = fdiv double %127, %130
  %132 = load double, double* %16, align 8
  %133 = fmul double %131, %132
  %134 = fadd double %124, %133
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store double %134, double* %137, align 8
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %55, %54
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i64 @HASHISZERO(i64, i32) #1

declare dso_local i64 @RANGEISZERO(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @deinterleave64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
