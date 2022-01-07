; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_inactive.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@TXG_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_inactive(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.TYPE_8__* @ITOZ(%struct.inode* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.TYPE_9__* @ITOZSB(%struct.inode* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = call i32 @RW_WRITE_HELD(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* @RW_READER, align 4
  %21 = call i32 @rw_enter(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i32 @rw_exit(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %102

35:                                               ; preds = %22
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @B_FALSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @dmu_tx_create(i32 %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @B_FALSE, align 8
  %56 = call i32 @dmu_tx_hold_sa(i32* %51, i32* %54, i64 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i32 @zfs_sa_upgrade_txholds(i32* %57, %struct.TYPE_8__* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @TXG_WAIT, align 4
  %62 = call i32 @dmu_tx_assign(i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %46
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @dmu_tx_abort(i32* %66)
  br label %92

68:                                               ; preds = %46
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %72 = call i32 @ZFS_TIME_ENCODE(i32* %70, i32* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = call i32 @mutex_enter(i32* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i32 @SA_ZPL_ATIME(%struct.TYPE_9__* %79)
  %81 = bitcast [2 x i32]* %5 to i8*
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @sa_update(i32* %78, i32 %80, i8* %81, i32 8, i32* %82)
  %84 = load i64, i64* @B_FALSE, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = call i32 @mutex_exit(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @dmu_tx_commit(i32* %90)
  br label %92

92:                                               ; preds = %68, %65
  br label %93

93:                                               ; preds = %92, %40, %35
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = call i32 @zfs_zinactive(%struct.TYPE_8__* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = call i32 @rw_exit(i32* %100)
  br label %102

102:                                              ; preds = %34, %98, %93
  ret void
}

declare dso_local %struct.TYPE_8__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32*, i64) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @ZFS_TIME_ENCODE(i32*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @sa_update(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_ATIME(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zfs_zinactive(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
