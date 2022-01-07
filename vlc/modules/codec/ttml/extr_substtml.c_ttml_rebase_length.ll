; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ttml_rebase_length.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ttml_rebase_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, double }

@TTML_UNIT_PERCENT = common dso_local global i64 0, align 8
@TTML_UNIT_CELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, double } (i32, i64, double, i64, double)* @ttml_rebase_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, double } @ttml_rebase_length(i32 %0, i64 %1, double %2, i64 %3, double %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_5__* %7 to { i64, double }*
  %11 = getelementptr inbounds { i64, double }, { i64, double }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds { i64, double }, { i64, double }* %10, i32 0, i32 1
  store double %2, double* %12, align 8
  %13 = bitcast %struct.TYPE_5__* %8 to { i64, double }*
  %14 = getelementptr inbounds { i64, double }, { i64, double }* %13, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds { i64, double }, { i64, double }* %13, i32 0, i32 1
  store double %4, double* %15, align 8
  store i32 %0, i32* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TTML_UNIT_PERCENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fdiv double %22, 1.000000e+02
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %23
  store double %26, double* %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  br label %48

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TTML_UNIT_CELL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = uitofp i32 %38 to double
  %40 = fdiv double %37, %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fmul double %42, %40
  store double %43, double* %41, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %35, %30
  br label %48

48:                                               ; preds = %47, %20
  %49 = bitcast %struct.TYPE_5__* %6 to i8*
  %50 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = bitcast %struct.TYPE_5__* %6 to { i64, double }*
  %52 = load { i64, double }, { i64, double }* %51, align 8
  ret { i64, double } %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
