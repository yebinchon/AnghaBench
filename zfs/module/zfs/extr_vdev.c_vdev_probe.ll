; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_probe.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_20__*, i8*, i8*, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@ZIO_FLAG_PROBE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_AGGREGATE = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@vdev_probe_done = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_ASYNC_PROBE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_pad2 = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_OFF = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @vdev_probe(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZIO_FLAG_PROBE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %150

29:                                               ; preds = %21, %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = call i32 @mutex_enter(i32* %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %8, align 8
  %36 = icmp eq %struct.TYPE_20__* %35, null
  br i1 %36, label %37, label %91

37:                                               ; preds = %29
  %38 = load i32, i32* @KM_SLEEP, align 4
  %39 = call %struct.TYPE_22__* @kmem_zalloc(i32 4, i32 %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %7, align 8
  %40 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %41 = load i32, i32* @ZIO_FLAG_PROBE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ZIO_FLAG_DONT_AGGREGATE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @SCL_ZIO, align 4
  %53 = load i32, i32* @RW_WRITER, align 4
  %54 = call i64 @spa_config_held(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %37
  %57 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** @B_FALSE, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @B_FALSE, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %56, %37
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = load i32, i32* @vdev_probe_done, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %77 = or i32 %75, %76
  %78 = call %struct.TYPE_20__* @zio_null(i32* null, i32* %69, %struct.TYPE_21__* %70, i32 %71, %struct.TYPE_22__* %72, i32 %77)
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %8, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 3
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = icmp ne %struct.TYPE_20__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %68
  %84 = load i32, i32* @B_TRUE, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @SPA_ASYNC_PROBE, align 4
  %89 = call i32 @spa_async_request(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %68
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = icmp ne %struct.TYPE_20__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = call i32 @zio_add_child(%struct.TYPE_20__* %95, %struct.TYPE_20__* %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = call i32 @mutex_exit(i32* %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = icmp eq %struct.TYPE_22__* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = icmp ne %struct.TYPE_20__* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %150

109:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %139, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @VDEV_LABELS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @vdev_label_t, align 4
  %122 = load i32, i32* @vl_pad2, align 4
  %123 = call i32 @offsetof(i32 %121, i32 %122)
  %124 = call i32 @vdev_label_offset(i32 %119, i32 %120, i32 %123)
  %125 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %126 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %127 = load i32, i32* @B_TRUE, align 4
  %128 = call i32 @abd_alloc_for_io(i32 %126, i32 %127)
  %129 = load i32, i32* @ZIO_CHECKSUM_OFF, align 4
  %130 = load i32, i32* @vdev_probe_done, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %132 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @B_TRUE, align 4
  %137 = call %struct.TYPE_20__* @zio_read_phys(%struct.TYPE_20__* %115, %struct.TYPE_21__* %116, i32 %124, i32 %125, i32 %128, i32 %129, i32 %130, %struct.TYPE_22__* %131, i32 %132, i32 %135, i32 %136)
  %138 = call i32 @zio_nowait(%struct.TYPE_20__* %137)
  br label %139

139:                                              ; preds = %114
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %110

142:                                              ; preds = %110
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = icmp eq %struct.TYPE_20__* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %146, %struct.TYPE_20__** %3, align 8
  br label %150

147:                                              ; preds = %142
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = call i32 @zio_nowait(%struct.TYPE_20__* %148)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %150

150:                                              ; preds = %147, %145, %104, %28
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %151
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_22__* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @spa_config_held(i32*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @zio_null(i32*, i32*, %struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @spa_async_request(i32*, i32) #1

declare dso_local i32 @zio_add_child(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @zio_read_phys(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @vdev_label_offset(i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @abd_alloc_for_io(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
