; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_should_flush_logs_on_unload.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_should_flush_logs_on_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@POOL_STATE_EXPORTED = common dso_local global i64 0, align 8
@zfs_keep_log_spacemaps_at_export = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @spa_should_flush_logs_on_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_should_flush_logs_on_unload(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %6 = call i32 @spa_feature_is_active(%struct.TYPE_6__* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @B_FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @spa_writeable(%struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @B_FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @B_FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i64 @spa_state(%struct.TYPE_6__* %24)
  %26 = load i64, i64* @POOL_STATE_EXPORTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load i64, i64* @zfs_keep_log_spacemaps_at_export, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @B_FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @B_TRUE, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %28, %21, %14, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_6__*) #1

declare dso_local i64 @spa_state(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
