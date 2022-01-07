; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_commit_rl_updates.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_commit_rl_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.merge_data = type { i64, i32, i32, i32*, %struct.TYPE_5__*, i64* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }

@TXG_WAIT = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@redaction_list_update_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.merge_data*, i64, i64)* @commit_rl_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_rl_updates(%struct.TYPE_6__* %0, %struct.merge_data* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.merge_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.merge_data* %1, %struct.merge_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @spa_get_dsl(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @dmu_tx_create_dd(i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @dmu_tx_hold_space(i32* %18, i32 4)
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @TXG_WAIT, align 4
  %22 = call i32 @dmu_tx_assign(i32* %20, i32 %21)
  %23 = call i32 @VERIFY0(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @dmu_tx_get_txg(i32* %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %27 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %26, i32 0, i32 5
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @TXG_MASK, align 8
  %31 = and i64 %29, %30
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @dmu_tx_pool(i32* %36)
  %38 = load i32, i32* @redaction_list_update_sync, align 4
  %39 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %40 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @dsl_sync_task_nowait(i32 %37, i32 %38, %struct.merge_data* %39, i32 5, i32 %40, i32* %41)
  %43 = load i64, i64* @B_TRUE, align 8
  %44 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %45 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %44, i32 0, i32 5
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @TXG_MASK, align 8
  %49 = and i64 %47, %48
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %43, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %53 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %35, %4
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %57 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @TXG_MASK, align 8
  %61 = and i64 %59, %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %55, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %66 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @TXG_MASK, align 8
  %70 = and i64 %68, %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i64 %64, i64* %72, align 8
  %73 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %74 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @TXG_MASK, align 8
  %78 = and i64 %76, %77
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %81 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %80, i32 0, i32 2
  %82 = call i32 @list_move_tail(i32* %79, i32* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @dmu_tx_commit(i32* %83)
  %85 = call i32 (...) @gethrtime()
  %86 = load %struct.merge_data*, %struct.merge_data** %6, align 8
  %87 = getelementptr inbounds %struct.merge_data, %struct.merge_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_7__* @spa_get_dsl(i32) #1

declare dso_local i32 @dmu_tx_hold_space(i32*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i64 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @dsl_sync_task_nowait(i32, i32, %struct.merge_data*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_pool(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @gethrtime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
