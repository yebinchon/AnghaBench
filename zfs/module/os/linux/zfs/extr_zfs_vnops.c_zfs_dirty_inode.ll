; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32********, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32********, i32 }
%struct.TYPE_15__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_dirty_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32****, align 8
  %10 = alloca [2 x i32****], align 16
  %11 = alloca [2 x i32****], align 16
  %12 = alloca [2 x i32****], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_14__* @ITOZ(%struct.inode* %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_15__* @ITOZSB(%struct.inode* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = call i64 @zfs_is_readonly(%struct.TYPE_15__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @dmu_objset_is_snapshot(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %123

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = call i32 @ZFS_ENTER(%struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @dmu_tx_create(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @B_FALSE, align 4
  %44 = call i32 @dmu_tx_hold_sa(i32* %39, i32 %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = call i32 @zfs_sa_upgrade_txholds(i32* %45, %struct.TYPE_14__* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @TXG_WAIT, align 4
  %50 = call i32 @dmu_tx_assign(i32* %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @dmu_tx_abort(i32* %54)
  br label %119

56:                                               ; preds = %30
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = call i32 @mutex_enter(i32* %58)
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = call i32 @SA_ZPL_MODE(%struct.TYPE_15__* %65)
  %67 = bitcast i32***** %9 to i32******
  %68 = call i32 @SA_ADD_BULK_ATTR(i32* %63, i32 %64, i32 %66, i32* null, i32****** %67, i32 8)
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = call i32 @SA_ZPL_ATIME(%struct.TYPE_15__* %71)
  %73 = bitcast [2 x i32****]* %10 to i32******
  %74 = call i32 @SA_ADD_BULK_ATTR(i32* %69, i32 %70, i32 %72, i32* null, i32****** %73, i32 16)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = call i32 @SA_ZPL_MTIME(%struct.TYPE_15__* %77)
  %79 = bitcast [2 x i32****]* %11 to i32******
  %80 = call i32 @SA_ADD_BULK_ATTR(i32* %75, i32 %76, i32 %78, i32* null, i32****** %79, i32 16)
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = call i32 @SA_ZPL_CTIME(%struct.TYPE_15__* %83)
  %85 = bitcast [2 x i32****]* %12 to i32******
  %86 = call i32 @SA_ADD_BULK_ATTR(i32* %81, i32 %82, i32 %84, i32* null, i32****** %85, i32 16)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  %89 = getelementptr inbounds [2 x i32****], [2 x i32****]* %10, i64 0, i64 0
  %90 = call i32 @ZFS_TIME_ENCODE(i32* %88, i32***** %89)
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  %93 = getelementptr inbounds [2 x i32****], [2 x i32****]* %11, i64 0, i64 0
  %94 = call i32 @ZFS_TIME_ENCODE(i32* %92, i32***** %93)
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = getelementptr inbounds [2 x i32****], [2 x i32****]* %12, i64 0, i64 0
  %98 = call i32 @ZFS_TIME_ENCODE(i32* %96, i32***** %97)
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32********, i32********* %100, align 8
  %102 = bitcast i32******** %101 to i32****
  store i32**** %102, i32***** %9, align 8
  %103 = load i32****, i32***** %9, align 8
  %104 = bitcast i32**** %103 to i32********
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32******** %104, i32********* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %111 = load i32, i32* %15, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @sa_bulk_update(i32 %109, i32* %110, i32 %111, i32* %112)
  store i32 %113, i32* %14, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = call i32 @mutex_exit(i32* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @dmu_tx_commit(i32* %117)
  br label %119

119:                                              ; preds = %56, %53
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = call i32 @ZFS_EXIT(%struct.TYPE_15__* %120)
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_14__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_15__* @ITOZSB(%struct.inode*) #1

declare dso_local i64 @zfs_is_readonly(%struct.TYPE_15__*) #1

declare dso_local i64 @dmu_objset_is_snapshot(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_15__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_14__*) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32******, i32) #1

declare dso_local i32 @SA_ZPL_MODE(%struct.TYPE_15__*) #1

declare dso_local i32 @SA_ZPL_ATIME(%struct.TYPE_15__*) #1

declare dso_local i32 @SA_ZPL_MTIME(%struct.TYPE_15__*) #1

declare dso_local i32 @SA_ZPL_CTIME(%struct.TYPE_15__*) #1

declare dso_local i32 @ZFS_TIME_ENCODE(i32*, i32*****) #1

declare dso_local i32 @sa_bulk_update(i32, i32*, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
