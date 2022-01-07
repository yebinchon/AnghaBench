; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseChromaticAdaptation.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseChromaticAdaptation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double*, double* }
%struct.TYPE_9__ = type { double*, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double*, double* } (double*, double*, %struct.TYPE_8__*)* @InverseChromaticAdaptation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double*, double* } @InverseChromaticAdaptation(double* %0, double* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_9__* %5 to { double*, double* }*
  %9 = getelementptr inbounds { double*, double* }, { double*, double* }* %8, i32 0, i32 0
  store double* %0, double** %9, align 8
  %10 = getelementptr inbounds { double*, double* }, { double*, double* }* %8, i32 0, i32 1
  store double* %1, double** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %16 = load double*, double** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %16, i64 %18
  %20 = load double, double* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fdiv double %30, %38
  %40 = fadd double %39, 1.000000e+00
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = fdiv double %20, %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %45, double* %50, align 8
  br label %51

51:                                               ; preds = %14
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %11

54:                                               ; preds = %11
  %55 = bitcast %struct.TYPE_9__* %4 to i8*
  %56 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = bitcast %struct.TYPE_9__* %4 to { double*, double* }*
  %58 = load { double*, double* }, { double*, double* }* %57, align 8
  ret { double*, double* } %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
