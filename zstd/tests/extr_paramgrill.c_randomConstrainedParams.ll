; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_randomConstrainedParams.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_randomConstrainedParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }
%struct.TYPE_8__ = type { i64, i64* }

@strt_ind = common dso_local global i64 0, align 8
@NUM_PARAMS = common dso_local global i32 0, align 4
@g_rand = common dso_local global i32 0, align 4
@rangetable = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i64)* @randomConstrainedParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomConstrainedParams(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 %12
  %14 = bitcast %struct.TYPE_8__* %8 to i8*
  %15 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @strt_ind, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %16, i64* %21, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %69, %3
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NUM_PARAMS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @strt_ind, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %57

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @FUZ_rand(i32* @g_rand)
  %46 = load i32*, i32** @rangetable, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %45, %49
  %51 = call i64 @rangeMap(i64 %44, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %42
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @memoTableGet(%struct.TYPE_8__* %61, i64* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %22

72:                                               ; preds = %67, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rangeMap(i64, i32) #2

declare dso_local i32 @FUZ_rand(i32*) #2

declare dso_local i32 @memoTableGet(%struct.TYPE_8__*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
