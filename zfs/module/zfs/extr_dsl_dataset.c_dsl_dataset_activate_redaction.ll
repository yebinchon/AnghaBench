; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_activate_redaction.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_activate_redaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.feature_type_uint64_array_arg** }
%struct.feature_type_uint64_array_arg = type { i32, i64 }

@KM_SLEEP = common dso_local global i32 0, align 4
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_activate_redaction(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.feature_type_uint64_array_arg*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @KM_SLEEP, align 4
  %15 = call %struct.feature_type_uint64_array_arg* @kmem_zalloc(i32 16, i32 %14)
  store %struct.feature_type_uint64_array_arg* %15, %struct.feature_type_uint64_array_arg** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %19 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @KM_SLEEP, align 4
  %28 = call i32 @kmem_alloc(i32 %26, i32 %27)
  %29 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %30 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %33 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @bcopy(i32* %31, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %22, %4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* @SPA_FEATURE_REDACTED_DATASETS, align 8
  %43 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @dsl_dataset_activate_feature(i32 %41, i64 %42, %struct.feature_type_uint64_array_arg* %43, i32* %44)
  %46 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %10, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.feature_type_uint64_array_arg**, %struct.feature_type_uint64_array_arg*** %48, align 8
  %50 = load i64, i64* @SPA_FEATURE_REDACTED_DATASETS, align 8
  %51 = getelementptr inbounds %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %49, i64 %50
  store %struct.feature_type_uint64_array_arg* %46, %struct.feature_type_uint64_array_arg** %51, align 8
  ret void
}

declare dso_local %struct.feature_type_uint64_array_arg* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kmem_alloc(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @dsl_dataset_activate_feature(i32, i64, %struct.feature_type_uint64_array_arg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
