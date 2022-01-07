; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_get_uint64_array_feature.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_get_uint64_array_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.feature_type_uint64_array_arg** }
%struct.feature_type_uint64_array_arg = type { i32, i32* }

@spa_feature_table = common dso_local global %struct.TYPE_6__* null, align 8
@ZFEATURE_TYPE_UINT64_ARRAY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_get_uint64_array_feature(%struct.TYPE_5__* %0, i64 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.feature_type_uint64_array_arg*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spa_feature_table, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ZFEATURE_TYPE_UINT64_ARRAY, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @dsl_dataset_feature_is_active(%struct.TYPE_5__* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.feature_type_uint64_array_arg**, %struct.feature_type_uint64_array_arg*** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %28, i64 %29
  %31 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %30, align 8
  store %struct.feature_type_uint64_array_arg* %31, %struct.feature_type_uint64_array_arg** %10, align 8
  %32 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %33 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  %36 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %37 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @B_TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @dsl_dataset_feature_is_active(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
