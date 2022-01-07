; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.bio* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__*, i32, i32*, i32, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.bio = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@DMU_MAX_ACCESS = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zvol_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.bio*, %struct.bio** %19, align 8
  store %struct.bio* %20, %struct.bio** %5, align 8
  %21 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = call i32 @uio_from_bio(%struct.TYPE_18__* %6, %struct.bio* %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br label %34

34:                                               ; preds = %29, %1
  %35 = phi i1 [ false, %1 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* @jiffies, align 8
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @WRITE, align 4
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = call i32 @bio_sectors(%struct.bio* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = call i32 @blk_generic_start_io_acct(i32 %51, i32 %52, i32 %54, i32* %60)
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i64 @bio_is_fua(%struct.bio* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %34
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %65, %34
  %74 = phi i1 [ true, %34 ], [ %72, %65 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %147, %73
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp slt i64 %85, %86
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i1 [ false, %79 ], [ %87, %83 ]
  br i1 %89, label %90, label %148

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @DMU_MAX_ACCESS, align 4
  %94 = ashr i32 %93, 1
  %95 = call i64 @MIN(i64 %92, i32 %94)
  store i64 %95, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = call i32* @dmu_tx_create(%struct.TYPE_12__* %100)
  store i32* %101, i32** %14, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sub nsw i64 %103, %104
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %13, align 8
  %110 = sub nsw i64 %108, %109
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %107, %90
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* @ZVOL_OBJ, align 4
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @dmu_tx_hold_write(i32* %112, i32 %113, i64 %114, i64 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* @TXG_WAIT, align 4
  %119 = call i32 @dmu_tx_assign(i32* %117, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @dmu_tx_abort(i32* %123)
  br label %148

125:                                              ; preds = %111
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @dmu_write_uio_dnode(i32 %128, %struct.TYPE_18__* %6, i64 %129, i32* %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @zvol_log_write(%struct.TYPE_16__* %135, i32* %136, i64 %137, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %125
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @dmu_tx_commit(i32* %142)
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %148

147:                                              ; preds = %141
  br label %79

148:                                              ; preds = %146, %122, %88
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @zfs_rangelock_exit(i32 %151)
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %153, %155
  store i64 %156, i64* %15, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i64, i64* %15, align 8
  %162 = call i32 @dataset_kstats_update_write_kstats(i32* %160, i64 %161)
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @task_io_account_write(i64 %163)
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %148
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @ZVOL_OBJ, align 4
  %172 = call i32 @zil_commit(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %148
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 3
  %176 = call i32 @rw_exit(i32* %175)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @WRITE, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @blk_generic_end_io_acct(i32 %181, i32 %182, i32* %188, i64 %189)
  %191 = load %struct.bio*, %struct.bio** %5, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sub nsw i32 0, %192
  %194 = call i32 @BIO_END_IO(%struct.bio* %191, i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = call i32 @kmem_free(%struct.TYPE_17__* %195, i32 24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uio_from_bio(%struct.TYPE_18__*, %struct.bio*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @blk_generic_start_io_acct(i32, i32, i32, i32*) #2

declare dso_local i32 @bio_sectors(%struct.bio*) #2

declare dso_local i64 @bio_is_fua(%struct.bio*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32* @dmu_tx_create(%struct.TYPE_12__*) #2

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i64, i64) #2

declare dso_local i32 @dmu_tx_assign(i32*, i32) #2

declare dso_local i32 @dmu_tx_abort(i32*) #2

declare dso_local i32 @dmu_write_uio_dnode(i32, %struct.TYPE_18__*, i64, i32*) #2

declare dso_local i32 @zvol_log_write(%struct.TYPE_16__*, i32*, i64, i64, i32) #2

declare dso_local i32 @dmu_tx_commit(i32*) #2

declare dso_local i32 @zfs_rangelock_exit(i32) #2

declare dso_local i32 @dataset_kstats_update_write_kstats(i32*, i64) #2

declare dso_local i32 @task_io_account_write(i64) #2

declare dso_local i32 @zil_commit(i32*, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @blk_generic_end_io_acct(i32, i32, i32*, i64) #2

declare dso_local i32 @BIO_END_IO(%struct.bio*, i32) #2

declare dso_local i32 @kmem_free(%struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
