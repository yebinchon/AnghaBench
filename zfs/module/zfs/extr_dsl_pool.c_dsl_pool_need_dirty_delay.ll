; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_need_dirty_delay.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_need_dirty_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@zfs_dirty_data_max = common dso_local global i32 0, align 4
@zfs_delay_min_dirty_percent = common dso_local global i32 0, align 4
@zfs_dirty_data_sync_percent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_pool_need_dirty_delay(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load i32, i32* @zfs_dirty_data_max, align 4
  %7 = load i32, i32* @zfs_delay_min_dirty_percent, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sdiv i32 %8, 100
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @zfs_dirty_data_max, align 4
  %12 = load i32, i32* @zfs_dirty_data_sync_percent, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 100
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @mutex_enter(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @mutex_exit(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = call i32 @txg_kick(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @txg_kick(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
