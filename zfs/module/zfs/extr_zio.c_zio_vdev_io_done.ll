; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_vdev_io_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_vdev_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_18__*)*, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }

@vdev_mirror_ops = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@B_FALSE = common dso_local global i64 0, align 8
@ZIO_CHILD_VDEV_BIT = common dso_local global i32 0, align 4
@ZIO_WAIT_DONE = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_TRIM = common dso_local global i64 0, align 8
@zio_injection_enabled = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*)* @zio_vdev_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @zio_vdev_io_done(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = icmp ne %struct.TYPE_19__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.TYPE_20__* [ %15, %12 ], [ @vdev_mirror_ops, %16 ]
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %5, align 8
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = load i32, i32* @ZIO_CHILD_VDEV_BIT, align 4
  %22 = load i32, i32* @ZIO_WAIT_DONE, align 4
  %23 = call i64 @zio_wait_for_children(%struct.TYPE_18__* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %153

26:                                               ; preds = %17
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZIO_TYPE_READ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZIO_TYPE_TRIM, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32, %26
  %45 = phi i1 [ true, %32 ], [ true, %26 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = call i64 (...) @gethrtime()
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %136

63:                                               ; preds = %60
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %63
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = call i32 @vdev_queue_io_done(%struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = call i32 @vdev_cache_write(%struct.TYPE_18__* %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i64, i64* @zio_injection_enabled, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = load i32, i32* @EIO, align 4
  %93 = load i32, i32* @EILSEQ, align 4
  %94 = call i64 @zio_handle_device_injections(%struct.TYPE_19__* %90, %struct.TYPE_18__* %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %89, %84, %81
  %98 = load i64, i64* @zio_injection_enabled, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = load i32, i32* @EIO, align 4
  %108 = call i64 @zio_handle_label_injection(%struct.TYPE_18__* %106, i32 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %100, %97
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ZIO_TYPE_TRIM, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = call i32 @vdev_accessible(%struct.TYPE_19__* %123, %struct.TYPE_18__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @ENXIO, align 4
  %129 = call i64 @SET_ERROR(i32 %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %134

132:                                              ; preds = %122
  %133 = load i64, i64* @B_TRUE, align 8
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %132, %127
  br label %135

135:                                              ; preds = %134, %116, %111
  br label %136

136:                                              ; preds = %135, %63, %60
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = call i32 %139(%struct.TYPE_18__* %140)
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = call i32* @vdev_probe(%struct.TYPE_19__* %145, %struct.TYPE_18__* %146)
  %148 = icmp eq i32* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 @VERIFY(i32 %149)
  br label %151

151:                                              ; preds = %144, %136
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %2, align 8
  br label %153

153:                                              ; preds = %151, %25
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %154
}

declare dso_local i64 @zio_wait_for_children(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @vdev_queue_io_done(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_cache_write(%struct.TYPE_18__*) #1

declare dso_local i64 @zio_handle_device_injections(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @zio_handle_label_injection(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vdev_accessible(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @SET_ERROR(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @vdev_probe(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
