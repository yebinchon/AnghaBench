; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_make_xattrdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_make_xattrdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_26__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }

@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@IS_XATTR = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@TX_MKXATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_make_xattrdir(%struct.TYPE_25__* %0, i32* %1, %struct.inode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode** %2, %struct.inode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %17 = call %struct.TYPE_26__* @ZTOZSB(%struct.TYPE_25__* %16)
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %10, align 8
  %18 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* null, %struct.inode** %18, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %21 = load i32, i32* @B_FALSE, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @zfs_zaccess(%struct.TYPE_25__* %19, i32 %20, i32 0, i32 %21, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %139

27:                                               ; preds = %4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = load i32, i32* @IS_XATTR, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @zfs_acl_ids_create(%struct.TYPE_25__* %28, i32 %29, i32* %30, i32* %31, i32* null, %struct.TYPE_27__* %14)
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %139

36:                                               ; preds = %27
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_26__* %37, %struct.TYPE_27__* %14, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = call i32 @zfs_acl_ids_free(%struct.TYPE_27__* %14)
  %45 = load i32, i32* @EDQUOT, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %139

47:                                               ; preds = %36
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @dmu_tx_create(i32 %50)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @dmu_tx_hold_sa_create(i32* %52, i64 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = call i32 @dmu_tx_hold_sa(i32* %60, i32 %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @dmu_tx_hold_zap(i32* %66, i32 %67, i32 %68, i32* null)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %47
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @zfs_fuid_txhold(%struct.TYPE_26__* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %47
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @TXG_WAIT, align 4
  %82 = call i32 @dmu_tx_assign(i32* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = call i32 @zfs_acl_ids_free(%struct.TYPE_27__* %14)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @dmu_tx_abort(i32* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %139

90:                                               ; preds = %79
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @IS_XATTR, align 4
  %96 = call i32 @zfs_mknode(%struct.TYPE_25__* %91, i32* %92, i32* %93, i32* %94, i32 %95, %struct.TYPE_25__** %11, %struct.TYPE_27__* %14)
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @zfs_fuid_sync(%struct.TYPE_26__* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %108 = call i32 @SA_ZPL_XATTR(%struct.TYPE_26__* %107)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i32*, i32** %12, align 8
  %112 = call i64 @sa_update(i32 %106, i32 %108, i64* %110, i32 8, i32* %111)
  %113 = icmp eq i64 0, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @VERIFY(i32 %114)
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %103
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* @TX_MKXATTR, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @zfs_log_create(i32 %123, i32* %124, i32 %125, %struct.TYPE_25__* %126, %struct.TYPE_25__* %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 %129, i32* %130)
  br label %132

132:                                              ; preds = %120, %103
  %133 = call i32 @zfs_acl_ids_free(%struct.TYPE_27__* %14)
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @dmu_tx_commit(i32* %134)
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %137 = call %struct.inode* @ZTOI(%struct.TYPE_25__* %136)
  %138 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %137, %struct.inode** %138, align 8
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %132, %85, %43, %34, %25
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_26__* @ZTOZSB(%struct.TYPE_25__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_25__*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_25__*, i32, i32*, i32*, i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_27__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_25__*, i32*, i32*, i32*, i32, %struct.TYPE_25__**, %struct.TYPE_27__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @sa_update(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_XATTR(%struct.TYPE_26__*) #1

declare dso_local i32 @zfs_log_create(i32, i32*, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
