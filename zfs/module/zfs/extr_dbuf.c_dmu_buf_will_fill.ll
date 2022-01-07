; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_will_fill.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_will_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }

@DMU_BONUS_BLKID = common dso_local global i64 0, align 8
@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_buf_will_fill(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DMU_BONUS_BLKID, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = call i32 @zfs_refcount_is_zero(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i64 @dmu_tx_private_ok(%struct.TYPE_10__* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %2
  %45 = phi i1 [ true, %2 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = call i32 @dbuf_noread(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i32 @dbuf_dirty(%struct.TYPE_11__* %50, %struct.TYPE_10__* %51)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i64 @dmu_tx_private_ok(%struct.TYPE_10__*) #1

declare dso_local i32 @dbuf_noread(%struct.TYPE_11__*) #1

declare dso_local i32 @dbuf_dirty(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
