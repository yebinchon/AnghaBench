; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_read.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@RL_READER = common dso_local global i32 0, align 4
@zfs_read_chunk_size = common dso_local global i64 0, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FRSYNC = common dso_local global i32 0, align 4
@UIOTYPE_ZEROCOPY = common dso_local global i64 0, align 8
@UIO_XUIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_read(%struct.inode* %0, %struct.TYPE_20__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_17__* @ITOZ(%struct.inode* %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.TYPE_18__* @ITOZSB(%struct.inode* %22)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %13, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %25 = call i32 @ZFS_ENTER(%struct.TYPE_18__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %27 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %36 = call i32 @ZFS_EXIT(%struct.TYPE_18__* %35)
  %37 = load i32, i32* @EACCES, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %189

39:                                               ; preds = %4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %46 = call i32 @ZFS_EXIT(%struct.TYPE_18__* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %189

49:                                               ; preds = %39
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %56 = call i32 @ZFS_EXIT(%struct.TYPE_18__* %55)
  store i32 0, i32* %5, align 4
  br label %189

57:                                               ; preds = %49
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65, %62
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @zil_commit(i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %73, %65, %57
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @RL_READER, align 4
  %91 = call i32* @zfs_rangelock_enter(i32* %83, i64 %86, i32 %89, i32 %90)
  store i32* %91, i32** %14, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %183

100:                                              ; preds = %81
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ASSERT(i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = call i32 @MIN(i32 %112, i64 %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %169, %100
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %173

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  %127 = load i64, i64* @zfs_read_chunk_size, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i64, i64* @zfs_read_chunk_size, align 8
  %133 = call i64 @P2PHASE(i32 %131, i64 %132)
  %134 = sub nsw i64 %127, %133
  %135 = call i32 @MIN(i32 %126, i64 %134)
  store i32 %135, i32* %17, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %125
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @O_DIRECT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %149 = call i32 @mappedread(%struct.inode* %146, i32 %147, %struct.TYPE_20__* %148)
  store i32 %149, i32* %10, align 4
  br label %158

150:                                              ; preds = %140, %125
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sa_get_db(i32 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @dmu_read_uio_dbuf(i32 %154, %struct.TYPE_20__* %155, i32 %156)
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %150, %145
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @ECKSUM, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @EIO, align 4
  %167 = call i32 @SET_ERROR(i32 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %165, %161
  br label %173

169:                                              ; preds = %158
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %15, align 4
  br label %122

173:                                              ; preds = %168, %122
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %18, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @dataset_kstats_update_read_kstats(i32* %178, i32 %179)
  %181 = load i32, i32* %18, align 4
  %182 = call i32 @task_io_account_read(i32 %181)
  br label %183

183:                                              ; preds = %173, %99
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @zfs_rangelock_exit(i32* %184)
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %187 = call i32 @ZFS_EXIT(%struct.TYPE_18__* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %183, %54, %44, %34
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_17__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_18__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_18__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_17__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_18__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zil_commit(i64, i32) #1

declare dso_local i32* @zfs_rangelock_enter(i32*, i64, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @P2PHASE(i32, i64) #1

declare dso_local i32 @mappedread(%struct.inode*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @dmu_read_uio_dbuf(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @sa_get_db(i32) #1

declare dso_local i32 @dataset_kstats_update_read_kstats(i32*, i32) #1

declare dso_local i32 @task_io_account_read(i32) #1

declare dso_local i32 @zfs_rangelock_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
