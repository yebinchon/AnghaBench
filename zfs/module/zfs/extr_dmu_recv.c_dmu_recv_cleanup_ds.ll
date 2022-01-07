; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_cleanup_ds.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_cleanup_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@dmu_recv_tag = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dmu_recv_cleanup_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_recv_cleanup_ds(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %14 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @txg_wait_synced(i32 %23, i32 0)
  %25 = load i32, i32* @B_FALSE, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* @RW_READER, align 4
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @rrw_enter(i32* %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %17
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_11__* %40)
  %42 = call i32 @BP_IS_HOLE(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @rrw_exit(i32* %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @dmu_recv_tag, align 4
  %52 = call i32 @dsl_dataset_disown(%struct.TYPE_11__* %49, i32 %50, i32 %51)
  br label %70

53:                                               ; preds = %39, %17
  %54 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %5, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %6, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @rrw_exit(i32* %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i32 @dsl_dataset_name(%struct.TYPE_11__* %62, i8* %57)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @dmu_recv_tag, align 4
  %67 = call i32 @dsl_dataset_disown(%struct.TYPE_11__* %64, i32 %65, i32 %66)
  %68 = call i32 @dsl_destroy_head(i8* %57)
  %69 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %70

70:                                               ; preds = %53, %44
  ret void
}

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_11__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @dsl_dataset_disown(%struct.TYPE_11__*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dsl_destroy_head(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
