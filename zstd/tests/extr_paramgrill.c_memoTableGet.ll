; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_memoTableGet.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_memoTableGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64* }

@strt_ind = common dso_local global i64 0, align 8
@NUM_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64*)* @memoTableGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memoTableGet(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @strt_ind, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %13
  %15 = bitcast %struct.TYPE_7__* %6 to i8*
  %16 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %46 [
    i32 130, label %19
    i32 128, label %29
    i32 129, label %45
  ]

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @memoTableIndDirect(%struct.TYPE_6__* %4, i32 %23, i32 %25)
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %47

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %33 = load i32, i32* @NUM_PARAMS, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @XXH64(i64** %32, i32 %36, i32 0)
  %38 = ashr i32 %37, 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %31, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %3, align 8
  br label %47

45:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

46:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %46, %45, %29, %19
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memoTableIndDirect(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @XXH64(i64**, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
