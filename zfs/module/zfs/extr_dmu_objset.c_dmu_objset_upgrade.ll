; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_upgrade.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@upgrade_tag = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@dmu_objset_upgrade_task_cb = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @dmu_objset_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_objset_upgrade(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @dmu_objset_pool(%struct.TYPE_8__* %11)
  %13 = call i32 @dsl_pool_config_held(i32 %12)
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32 @dmu_objset_ds(%struct.TYPE_8__* %15)
  %17 = load i32, i32* @upgrade_tag, align 4
  %18 = call i32 @dsl_dataset_long_hold(i32 %16, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = call i32 @mutex_enter(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load i32, i32* @B_FALSE, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @dmu_objset_upgrade_task_cb, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load i32, i32* @TQ_SLEEP, align 4
  %46 = call i64 @taskq_dispatch(i32 %42, i32 %43, %struct.TYPE_8__* %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TASKQID_INVALID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %31
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = call i32 @dmu_objset_ds(%struct.TYPE_8__* %55)
  %57 = load i32, i32* @upgrade_tag, align 4
  %58 = call i32 @dsl_dataset_long_rele(i32 %56, i32 %57)
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %54, %31
  br label %63

63:                                               ; preds = %62, %26, %10
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = call i32 @mutex_exit(i32* %65)
  br label %67

67:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_dataset_long_hold(i32, i32) #1

declare dso_local i32 @dmu_objset_ds(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @taskq_dispatch(i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @dsl_dataset_long_rele(i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
