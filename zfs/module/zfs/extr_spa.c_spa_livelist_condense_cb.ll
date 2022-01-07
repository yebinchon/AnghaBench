; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_livelist_condense_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_livelist_condense_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i8*, i8*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32 }

@zfs_livelist_condense_zthr_pause = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@zfs_livelist_condense_sync_pause = common dso_local global i64 0, align 8
@TXG_NOWAIT = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@spa_livelist_condense_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@zfs_livelist_condense_zthr_cancel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_livelist_condense_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i64, i64* @zfs_livelist_condense_zthr_pause, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @zthr_has_waiters(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @zthr_iscancelled(i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i1 [ false, %13 ], [ %26, %24 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 @delay(i32 1)
  br label %13

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %7, align 8
  %42 = load i32, i32* @KM_SLEEP, align 4
  %43 = call %struct.TYPE_16__* @kmem_alloc(i32 32, i32 %42)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = call i32 @bplist_create(i32* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @dsl_process_sub_livelist(i32* %48, i32* %50, i32* %51, i8** %8)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %31
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @dsl_process_sub_livelist(i32* %57, i32* %59, i32* %60, i8** %9)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %55, %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %125

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i64, i64* @zfs_livelist_condense_sync_pause, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @zthr_has_waiters(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @zthr_iscancelled(i32* %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ true, %69 ], [ %76, %73 ]
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %77, %66
  %81 = phi i1 [ false, %66 ], [ %79, %77 ]
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = call i32 @delay(i32 1)
  br label %66

84:                                               ; preds = %80
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = call %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_15__* %85)
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @dmu_tx_create_dd(i32 %88)
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @dmu_tx_mark_netfree(i32* %90)
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @dmu_tx_hold_space(i32* %92, i32 1)
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* @TXG_NOWAIT, align 4
  %96 = load i32, i32* @TXG_NOTHROTTLE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @dmu_tx_assign(i32* %94, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %84
  %102 = load i32, i32* @B_TRUE, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %108, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = call %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_15__* %115)
  %117 = load i32, i32* @spa_livelist_condense_sync, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @dsl_sync_task_nowait(%struct.TYPE_18__* %116, i32 %117, %struct.TYPE_16__* %118, i32 0, i32 %119, i32* %120)
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @dmu_tx_commit(i32* %122)
  br label %155

124:                                              ; preds = %84
  br label %125

125:                                              ; preds = %124, %62
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = call i32 @bplist_clear(i32* %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = call i32 @bplist_destroy(i32* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = call i32 @kmem_free(%struct.TYPE_16__* %136, i32 32)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = call i32 @dmu_buf_rele(i32 %143, %struct.TYPE_15__* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @EINTR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %125
  %153 = load i32, i32* @zfs_livelist_condense_zthr_cancel, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @zfs_livelist_condense_zthr_cancel, align 4
  br label %155

155:                                              ; preds = %101, %152, %125
  ret void
}

declare dso_local i64 @zthr_has_waiters(i32*) #1

declare dso_local i64 @zthr_iscancelled(i32*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local %struct.TYPE_16__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @bplist_create(i32*) #1

declare dso_local i32 @dsl_process_sub_livelist(i32*, i32*, i32*, i8**) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_15__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_hold_space(i32*, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_18__*, i32, %struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bplist_clear(i32*) #1

declare dso_local i32 @bplist_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @dmu_buf_rele(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
