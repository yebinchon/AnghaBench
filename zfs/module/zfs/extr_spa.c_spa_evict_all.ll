; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_evict_all.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_evict_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_evict_all() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  br label %3

3:                                                ; preds = %27, %0
  %4 = call %struct.TYPE_9__* @spa_next(i32* null)
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %1, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %8 = load i32, i32* @FTAG, align 4
  %9 = call i32 @spa_open_ref(%struct.TYPE_9__* %7, i32 %8)
  %10 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %12 = call i32 @spa_async_suspend(%struct.TYPE_9__* %11)
  %13 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = load i32, i32* @FTAG, align 4
  %16 = call i32 @spa_close(%struct.TYPE_9__* %14, i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @POOL_STATE_UNINITIALIZED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = call i32 @spa_unload(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %26 = call i32 @spa_deactivate(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %29 = call i32 @spa_remove(%struct.TYPE_9__* %28)
  br label %3

30:                                               ; preds = %3
  %31 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_9__* @spa_next(i32*) #1

declare dso_local i32 @spa_open_ref(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spa_unload(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_remove(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
