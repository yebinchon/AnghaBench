; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_purgedir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_purgedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @zfs_purgedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_purgedir(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = call %struct.TYPE_20__* @ZTOZSB(%struct.TYPE_19__* %11)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zap_cursor_init(i32* %3, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %121, %1
  %21 = call i32 @zap_cursor_retrieve(i32* %3, %struct.TYPE_22__* %4)
  store i32 %21, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %20
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ZFS_DIRENT_OBJ(i32 %26)
  %28 = call i32 @zfs_zget(%struct.TYPE_20__* %24, i32 %27, %struct.TYPE_19__** %5)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %121

34:                                               ; preds = %23
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = call %struct.TYPE_18__* @ZTOI(%struct.TYPE_19__* %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISREG(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = call %struct.TYPE_18__* @ZTOI(%struct.TYPE_19__* %42)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISLNK(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i1 [ true, %34 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @dmu_tx_create(i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = call i32 @dmu_tx_hold_sa(i32* %56, i32 %59, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dmu_tx_hold_zap(i32* %62, i32 %65, i32 %66, i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @B_FALSE, align 4
  %75 = call i32 @dmu_tx_hold_sa(i32* %70, i32 %73, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @dmu_tx_hold_zap(i32* %76, i32 %79, i32 %80, i32* null)
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = call i32 @zfs_sa_upgrade_txholds(i32* %82, %struct.TYPE_19__* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @dmu_tx_mark_netfree(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @TXG_WAIT, align 4
  %89 = call i32 @dmu_tx_assign(i32* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %48
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @dmu_tx_abort(i32* %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = call %struct.TYPE_18__* @ZTOI(%struct.TYPE_19__* %95)
  %97 = call i32 @zfs_iput_async(%struct.TYPE_18__* %96)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %121

100:                                              ; preds = %48
  %101 = call i32 @bzero(%struct.TYPE_21__* %8, i32 16)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i32* %105, i32** %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @zfs_link_destroy(%struct.TYPE_21__* %8, %struct.TYPE_19__* %107, i32* %108, i32 0, i32* null)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %112, %100
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @dmu_tx_commit(i32* %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = call %struct.TYPE_18__* @ZTOI(%struct.TYPE_19__* %118)
  %120 = call i32 @zfs_iput_async(%struct.TYPE_18__* %119)
  br label %121

121:                                              ; preds = %115, %92, %31
  %122 = call i32 @zap_cursor_advance(i32* %3)
  br label %20

123:                                              ; preds = %20
  %124 = call i32 @zap_cursor_fini(i32* %3)
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @ENOENT, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_20__* @ZTOZSB(%struct.TYPE_19__*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_20__*, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @ZFS_DIRENT_OBJ(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_18__* @ZTOI(%struct.TYPE_19__*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_iput_async(%struct.TYPE_18__*) #1

declare dso_local i32 @bzero(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @zfs_link_destroy(%struct.TYPE_21__*, %struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
