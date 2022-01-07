; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_write2.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_write2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_write2(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = call i32 @byteswap_uint64_array(%struct.TYPE_11__* %21, i32 24)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @zfs_zget(%struct.TYPE_10__* %24, i32 %27, %struct.TYPE_9__** %10)
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %72, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %33
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @dmu_tx_create(i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @B_FALSE, align 4
  %59 = call i32 @dmu_tx_hold_sa(i32* %54, i32 %57, i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @TXG_WAIT, align 4
  %62 = call i32 @dmu_tx_assign(i32* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %46
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = call i32 @ZTOI(%struct.TYPE_9__* %66)
  %68 = call i32 @iput(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ERESTART, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @dmu_tx_wait(i32* %73)
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @dmu_tx_abort(i32* %75)
  br label %33

77:                                               ; preds = %65
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @dmu_tx_abort(i32* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %104

81:                                               ; preds = %46
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = call i32 @SA_ZPL_SIZE(%struct.TYPE_10__* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = bitcast i64* %88 to i8*
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @sa_update(i32 %84, i32 %86, i8* %89, i32 8, i32* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @zil_replaying(i32 %94, i32* %95)
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @dmu_tx_commit(i32* %97)
  br label %99

99:                                               ; preds = %81, %33
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = call i32 @ZTOI(%struct.TYPE_9__* %100)
  %102 = call i32 @iput(i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %77, %30
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_10__*, i32, %struct.TYPE_9__**) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ZTOI(%struct.TYPE_9__*) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @sa_update(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @zil_replaying(i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
