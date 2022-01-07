; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_adjustParams.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_adjustParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@fadt_ind = common dso_local global i64 0, align 8
@strt_ind = common dso_local global i64 0, align 8
@NUM_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64)* @adjustParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @adjustParams(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast %struct.TYPE_6__* %8 to i8*
  %13 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @pvalsToCParams(i32* %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @ZSTD_adjustCParams(i32 %16, i64 %17, i64 %18)
  %20 = call i32* @cParamsToPVals(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = bitcast %struct.TYPE_6__* %5 to i8*
  %23 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @fadt_ind, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i64, i64* @strt_ind, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @NUM_PARAMS, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %34

51:                                               ; preds = %34
  %52 = bitcast %struct.TYPE_6__* %4 to i8*
  %53 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  ret i32* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cParamsToPVals(i32) #2

declare dso_local i32 @ZSTD_adjustCParams(i32, i64, i64) #2

declare dso_local i32 @pvalsToCParams(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
