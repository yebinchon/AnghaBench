; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_deactivate_feature_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_deactivate_feature_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32**, i32 }
%struct.TYPE_7__ = type { i32*, i32* }

@spa_feature_table = common dso_local global %struct.TYPE_6__* null, align 8
@ZFEATURE_FLAG_PER_DATASET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_deactivate_feature_impl(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.TYPE_7__* @dmu_tx_pool(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_7__* @dmu_tx_pool(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spa_feature_table, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZFEATURE_FLAG_PER_DATASET, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spa_feature_table, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @zap_remove(i32* %29, i32 %30, i32 %35, i32* %36)
  %38 = call i32 @VERIFY0(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @spa_feature_decr(i32* %39, i64 %40, i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  store i32* null, i32** %47, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_remove(i32*, i32, i32, i32*) #1

declare dso_local i32 @spa_feature_decr(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
