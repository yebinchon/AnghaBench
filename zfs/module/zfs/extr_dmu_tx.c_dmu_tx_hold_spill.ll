; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_spill.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@THT_SPILL = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_hold_spill(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @THT_SPILL, align 4
  %12 = call %struct.TYPE_7__* @dmu_tx_hold_object_impl(%struct.TYPE_6__* %6, i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @zfs_refcount_add_many(i32* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.TYPE_7__* @dmu_tx_hold_object_impl(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfs_refcount_add_many(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
