; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistoQueuePush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistoQueuePush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_8__*, i32**, i32, i32, double)* @HistoQueuePush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @HistoQueuePush(%struct.TYPE_8__* %0, i32** %1, i32 %2, i32 %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store double 0.000000e+00, double* %6, align 8
  br label %83

24:                                               ; preds = %5
  %25 = load double, double* %11, align 8
  %26 = fcmp ole double %25, 0.000000e+00
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load double, double* %11, align 8
  %54 = call i32 @HistoQueueUpdatePair(i32* %51, i32* %52, double %53, %struct.TYPE_7__* %14)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = load double, double* %11, align 8
  %58 = fcmp oge double %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  store double 0.000000e+00, double* %6, align 8
  br label %83

60:                                               ; preds = %36
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %66
  %69 = bitcast %struct.TYPE_7__* %68 to i8*
  %70 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %78
  %80 = call i32 @HistoQueueUpdateHead(%struct.TYPE_8__* %71, %struct.TYPE_7__* %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %82 = load double, double* %81, align 8
  store double %82, double* %6, align 8
  br label %83

83:                                               ; preds = %60, %59, %23
  %84 = load double, double* %6, align 8
  ret double %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HistoQueueUpdatePair(i32*, i32*, double, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HistoQueueUpdateHead(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
