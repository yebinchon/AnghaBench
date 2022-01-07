; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_tryown.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_tryown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4
@zfs_allow_redacted_dataset_mount = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dsl_dataset_tryown(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dsl_pool_config_held(i32 %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @mutex_enter(i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i64 @DS_IS_INCONSISTENT(%struct.TYPE_8__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %33 = call i64 @dsl_dataset_feature_is_active(%struct.TYPE_8__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @zfs_allow_redacted_dataset_mount, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35, %30, %23
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @dsl_dataset_long_hold(%struct.TYPE_8__* %43, i8* %44)
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %38, %35, %26, %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @mutex_exit(i32* %49)
  %51 = load i64, i64* %7, align 8
  ret i64 %51
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @DS_IS_INCONSISTENT(%struct.TYPE_8__*) #1

declare dso_local i64 @dsl_dataset_feature_is_active(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dsl_dataset_long_hold(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
