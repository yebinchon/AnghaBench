; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_all_configs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_all_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@spa_config_generation = common dso_local global i64 0, align 8
@spa_namespace_lock = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @spa_all_configs(i64* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @spa_config_generation, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = call i32* (...) @fnvlist_alloc()
  store i32* %12, i32** %4, align 8
  %13 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  br label %14

14:                                               ; preds = %41, %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call %struct.TYPE_5__* @spa_next(%struct.TYPE_5__* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* @curproc, align 4
  %20 = call i64 @INGLOBALZONE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @spa_name(%struct.TYPE_5__* %23)
  %25 = call i64 @zone_dataset_visible(i32 %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22, %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @mutex_enter(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = call i32 @spa_name(%struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fnvlist_add_nvlist(i32* %31, i32 %33, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @mutex_exit(i32* %39)
  br label %41

41:                                               ; preds = %27, %22
  br label %14

42:                                               ; preds = %14
  %43 = load i64, i64* @spa_config_generation, align 8
  %44 = load i64*, i64** %3, align 8
  store i64 %43, i64* %44, align 8
  %45 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %46 = load i32*, i32** %4, align 8
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %42, %10
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_5__* @spa_next(%struct.TYPE_5__*) #1

declare dso_local i64 @INGLOBALZONE(i32) #1

declare dso_local i64 @zone_dataset_visible(i32, i32*) #1

declare dso_local i32 @spa_name(%struct.TYPE_5__*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
