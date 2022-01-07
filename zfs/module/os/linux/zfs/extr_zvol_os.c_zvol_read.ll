; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_read.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.bio* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bio = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@DMU_MAX_ACCESS = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zvol_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %17, %struct.bio** %5, align 8
  %18 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i32 @uio_from_bio(%struct.TYPE_15__* %6, %struct.bio* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i1 [ false, %1 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* @jiffies, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @READ, align 4
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = call i32 @bio_sectors(%struct.bio* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = call i32 @blk_generic_start_io_acct(i32 %42, i32 %43, i32 %45, i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %100, %31
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br i1 %66, label %67, label %101

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @DMU_MAX_ACCESS, align 4
  %71 = ashr i32 %70, 1
  %72 = call i64 @MIN(i64 %69, i32 %71)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %74, %76
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %79, %67
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @dmu_read_uio_dnode(i32 %87, %struct.TYPE_15__* %6, i64 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @ECKSUM, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EIO, align 4
  %98 = call i32 @SET_ERROR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %101

100:                                              ; preds = %84
  br label %56

101:                                              ; preds = %99, %65
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @zfs_rangelock_exit(i32 %104)
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %106, %108
  store i64 %109, i64* %12, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @dataset_kstats_update_read_kstats(i32* %113, i64 %114)
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @task_io_account_read(i64 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = call i32 @rw_exit(i32* %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @READ, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @blk_generic_end_io_acct(i32 %125, i32 %126, i32* %132, i64 %133)
  %135 = load %struct.bio*, %struct.bio** %5, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sub nsw i32 0, %136
  %138 = call i32 @BIO_END_IO(%struct.bio* %135, i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = call i32 @kmem_free(%struct.TYPE_14__* %139, i32 24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uio_from_bio(%struct.TYPE_15__*, %struct.bio*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @blk_generic_start_io_acct(i32, i32, i32, i32*) #2

declare dso_local i32 @bio_sectors(%struct.bio*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @dmu_read_uio_dnode(i32, %struct.TYPE_15__*, i64) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @zfs_rangelock_exit(i32) #2

declare dso_local i32 @dataset_kstats_update_read_kstats(i32*, i64) #2

declare dso_local i32 @task_io_account_read(i64) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @blk_generic_end_io_acct(i32, i32, i32*, i64) #2

declare dso_local i32 @BIO_END_IO(%struct.bio*, i32) #2

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
