; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_unload_zfeature.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_unload_zfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.feature_type_uint64_array_arg** }
%struct.feature_type_uint64_array_arg = type { i32, %struct.feature_type_uint64_array_arg* }

@spa_feature_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid zfeature type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @unload_zfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_zfeature(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.feature_type_uint64_array_arg*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spa_feature_table, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 129, label %11
    i32 128, label %12
  ]

11:                                               ; preds = %2
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.feature_type_uint64_array_arg**, %struct.feature_type_uint64_array_arg*** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %15, i64 %16
  %18 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %17, align 8
  store %struct.feature_type_uint64_array_arg* %18, %struct.feature_type_uint64_array_arg** %5, align 8
  %19 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %5, align 8
  %20 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %19, i32 0, i32 1
  %21 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %20, align 8
  %22 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %5, align 8
  %23 = getelementptr inbounds %struct.feature_type_uint64_array_arg, %struct.feature_type_uint64_array_arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @kmem_free(%struct.feature_type_uint64_array_arg* %21, i32 %27)
  %29 = load %struct.feature_type_uint64_array_arg*, %struct.feature_type_uint64_array_arg** %5, align 8
  %30 = call i32 @kmem_free(%struct.feature_type_uint64_array_arg* %29, i32 16)
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spa_feature_table, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %12, %11
  ret void
}

declare dso_local i32 @kmem_free(%struct.feature_type_uint64_array_arg*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
