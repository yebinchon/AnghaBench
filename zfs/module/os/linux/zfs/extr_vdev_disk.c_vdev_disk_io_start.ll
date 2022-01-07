; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_io_start.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_io_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32* }

@ENXIO = common dso_local global i8* null, align 8
@RW_READER = common dso_local global i32 0, align 4
@zfs_nocacheflush = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i8* null, align 8
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BLKDEV_DISCARD_SECURE = common dso_local global i64 0, align 8
@ZIO_TRIM_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @vdev_disk_io_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_disk_io_start(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i8*, i8** @ENXIO, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @zio_interrupt(%struct.TYPE_11__* %21)
  br label %174

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* @RW_READER, align 4
  %27 = call i32 @rw_enter(i32* %25, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = call i32 @rw_exit(i32* %34)
  %36 = load i8*, i8** @ENXIO, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call i32 @zio_interrupt(%struct.TYPE_11__* %40)
  br label %174

42:                                               ; preds = %23
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %135 [
    i32 131, label %46
    i32 128, label %108
    i32 130, label %110
    i32 129, label %112
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i32 @vdev_readable(%struct.TYPE_12__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = call i32 @rw_exit(i32* %52)
  %54 = load i8*, i8** @ENXIO, align 8
  %55 = call i8* @SET_ERROR(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 @zio_interrupt(%struct.TYPE_11__* %59)
  br label %174

61:                                               ; preds = %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %96 [
    i32 132, label %65
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @zfs_nocacheflush, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %102

69:                                               ; preds = %65
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** @ENOTSUP, align 8
  %76 = call i8* @SET_ERROR(i8* %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %102

80:                                               ; preds = %69
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = call i32 @vdev_disk_io_flush(i32* %83, %struct.TYPE_11__* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = call i32 @rw_exit(i32* %90)
  br label %174

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %102

96:                                               ; preds = %61
  %97 = load i8*, i8** @ENOTSUP, align 8
  %98 = call i8* @SET_ERROR(i8* %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %92, %74, %68
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = call i32 @rw_exit(i32* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = call i32 @zio_execute(%struct.TYPE_11__* %106)
  br label %174

108:                                              ; preds = %42
  %109 = load i32, i32* @WRITE, align 4
  store i32 %109, i32* %6, align 4
  br label %146

110:                                              ; preds = %42
  %111 = load i32, i32* @READ, align 4
  store i32 %111, i32* %6, align 4
  br label %146

112:                                              ; preds = %42
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 9
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 9
  %124 = load i32, i32* @GFP_NOFS, align 4
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @blkdev_issue_discard(i32* %115, i32 %119, i32 %123, i32 %124, i64 %125)
  %127 = sub nsw i32 0, %126
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = call i32 @rw_exit(i32* %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %134 = call i32 @zio_interrupt(%struct.TYPE_11__* %133)
  br label %174

135:                                              ; preds = %42
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = call i32 @rw_exit(i32* %137)
  %139 = load i8*, i8** @ENOTSUP, align 8
  %140 = call i8* @SET_ERROR(i8* %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %145 = call i32 @zio_interrupt(%struct.TYPE_11__* %144)
  br label %174

146:                                              ; preds = %110, %108
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = call i32 @zio_handle_io_delay(%struct.TYPE_11__* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @__vdev_disk_physio(i32* %153, %struct.TYPE_11__* %154, i32 %157, i32 %160, i32 %161, i32 0)
  store i32 %162, i32* %7, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = call i32 @rw_exit(i32* %164)
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %146
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %173 = call i32 @zio_interrupt(%struct.TYPE_11__* %172)
  br label %174

174:                                              ; preds = %16, %32, %50, %88, %102, %112, %135, %168, %146
  ret void
}

declare dso_local i32 @zio_interrupt(%struct.TYPE_11__*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_12__*) #1

declare dso_local i8* @SET_ERROR(i8*) #1

declare dso_local i32 @vdev_disk_io_flush(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @zio_execute(%struct.TYPE_11__*) #1

declare dso_local i32 @blkdev_issue_discard(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @zio_handle_io_delay(%struct.TYPE_11__*) #1

declare dso_local i32 @__vdev_disk_physio(i32*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
