; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_synctask.c_dsl_sync_task_nowait_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_synctask.c_dsl_sync_task_nowait_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i8*, i32*, i32, i32, %struct.TYPE_7__* }

@KM_SLEEP = common dso_local global i32 0, align 4
@DST_AVG_BLKSHIFT = common dso_local global i32 0, align 4
@dsl_null_checkfunc = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i8*, i32, i32, i32*, i64)* @dsl_sync_task_nowait_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_sync_task_nowait_common(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i32, i32* @KM_SLEEP, align 4
  %18 = call %struct.TYPE_6__* @kmem_zalloc(i32 56, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %15, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %21, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @dmu_tx_get_txg(i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DST_AVG_BLKSHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @dsl_null_checkfunc, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %7
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  br label %56

53:                                               ; preds = %7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32* [ %52, %50 ], [ %55, %53 ]
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @txg_list_add_tail(i32* %58, %struct.TYPE_6__* %59, i32 %62)
  %64 = call i32 @VERIFY(i32 %63)
  ret void
}

declare dso_local %struct.TYPE_6__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @txg_list_add_tail(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
