; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_log_sm_set_blocklimit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_log_sm_set_blocklimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@zfs_unflushed_log_block_pct = common dso_local global i32 0, align 4
@zfs_unflushed_log_block_min = common dso_local global i32 0, align 4
@zfs_unflushed_log_block_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_log_sm_set_blocklimit(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %6 = call i32 @spa_feature_is_active(%struct.TYPE_8__* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @spa_log_sm_blocklimit(%struct.TYPE_8__* %9)
  %11 = call i32 @ASSERT0(i32 %10)
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i32 @spa_total_metaslabs(%struct.TYPE_8__* %13)
  %15 = load i32, i32* @zfs_unflushed_log_block_pct, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sdiv i32 %16, 100
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @zfs_unflushed_log_block_min, align 4
  %20 = call i32 @MAX(i32 %18, i32 %19)
  %21 = load i32, i32* @zfs_unflushed_log_block_max, align 4
  %22 = call i32 @MIN(i32 %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @spa_log_sm_blocklimit(%struct.TYPE_8__*) #1

declare dso_local i32 @spa_total_metaslabs(%struct.TYPE_8__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
