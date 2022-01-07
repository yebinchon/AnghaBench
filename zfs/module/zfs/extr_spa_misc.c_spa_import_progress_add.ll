; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_import_progress_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_import_progress_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@spa_import_progress_list = common dso_local global %struct.TYPE_14__* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_import_progress_add(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** @spa_import_progress_list, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load i32, i32* @KM_SLEEP, align 4
  %8 = call %struct.TYPE_13__* @kmem_zalloc(i32 12, i32 %7)
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = call i32 @spa_guid(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %17 = call i32 @nvlist_lookup_string(i32 %15, i32 %16, i8** %5)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = call i8* @spa_name(%struct.TYPE_12__* %21)
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @spa_strdup(i8* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @spa_load_state(%struct.TYPE_12__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = call i32 @mutex_enter(i32* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = call i32 @procfs_list_add(%struct.TYPE_15__* %37, %struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = call i32 @mutex_exit(i32* %46)
  ret void
}

declare dso_local %struct.TYPE_13__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_12__*) #1

declare dso_local i32 @nvlist_lookup_string(i32, i32, i8**) #1

declare dso_local i8* @spa_name(%struct.TYPE_12__*) #1

declare dso_local i32 @spa_strdup(i8*) #1

declare dso_local i32 @spa_load_state(%struct.TYPE_12__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @procfs_list_add(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
