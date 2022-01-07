; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_shm.c_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_shm.c_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.wl_surface* }
%struct.wl_surface = type { i32 }
%struct.TYPE_12__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, %struct.picture_buffer_t* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.picture_buffer_t = type { i32, i64 }
%struct.buffer_data = type { i32*, %struct.TYPE_19__* }
%struct.wl_shm_pool = type { i32 }
%struct.wl_buffer = type { i32 }

@WL_SHM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@buffer_cbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*, i32*, i32)* @Prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Prepare(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.wl_display*, align 8
  %11 = alloca %struct.wl_surface*, align 8
  %12 = alloca %struct.picture_buffer_t*, align 8
  %13 = alloca %struct.buffer_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wl_shm_pool*, align 8
  %18 = alloca %struct.wl_buffer*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @VLC_UNUSED(i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.wl_display*, %struct.wl_display** %28, align 8
  store %struct.wl_display* %29, %struct.wl_display** %10, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.wl_surface*, %struct.wl_surface** %34, align 8
  store %struct.wl_surface* %35, %struct.wl_surface** %11, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.picture_buffer_t*, %struct.picture_buffer_t** %37, align 8
  store %struct.picture_buffer_t* %38, %struct.picture_buffer_t** %12, align 8
  %39 = load %struct.picture_buffer_t*, %struct.picture_buffer_t** %12, align 8
  %40 = getelementptr inbounds %struct.picture_buffer_t, %struct.picture_buffer_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %161

44:                                               ; preds = %4
  %45 = call %struct.buffer_data* @malloc(i32 16)
  store %struct.buffer_data* %45, %struct.buffer_data** %13, align 8
  %46 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %47 = icmp eq %struct.buffer_data* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %161

52:                                               ; preds = %44
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %55 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %54, i32 0, i32 1
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %59 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.picture_buffer_t*, %struct.picture_buffer_t** %12, align 8
  %61 = getelementptr inbounds %struct.picture_buffer_t, %struct.picture_buffer_t* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %15, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = mul i64 %72, %73
  store i64 %74, i64* %16, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.picture_buffer_t*, %struct.picture_buffer_t** %12, align 8
  %79 = getelementptr inbounds %struct.picture_buffer_t, %struct.picture_buffer_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %81, %82
  %84 = call %struct.wl_shm_pool* @wl_shm_create_pool(i32 %77, i32 %80, i64 %83)
  store %struct.wl_shm_pool* %84, %struct.wl_shm_pool** %17, align 8
  %85 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %17, align 8
  %86 = icmp eq %struct.wl_shm_pool* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %52
  %88 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %89 = call i32 @free(%struct.buffer_data* %88)
  br label %161

90:                                               ; preds = %52
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 4, %99
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %106, %111
  %113 = add i64 %101, %112
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %95, %90
  %117 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %17, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* @WL_SHM_FORMAT_XRGB8888, align 4
  %129 = call %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool* %117, i64 %118, i32 %122, i32 %126, i64 %127, i32 %128)
  store %struct.wl_buffer* %129, %struct.wl_buffer** %18, align 8
  %130 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %17, align 8
  %131 = call i32 @wl_shm_pool_destroy(%struct.wl_shm_pool* %130)
  %132 = load %struct.wl_buffer*, %struct.wl_buffer** %18, align 8
  %133 = icmp eq %struct.wl_buffer* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %136 = call i32 @free(%struct.buffer_data* %135)
  br label %161

137:                                              ; preds = %116
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %139 = call i32 @picture_Hold(%struct.TYPE_19__* %138)
  %140 = load %struct.wl_buffer*, %struct.wl_buffer** %18, align 8
  %141 = load %struct.buffer_data*, %struct.buffer_data** %13, align 8
  %142 = call i32 @wl_buffer_add_listener(%struct.wl_buffer* %140, i32* @buffer_cbs, %struct.buffer_data* %141)
  %143 = load %struct.wl_surface*, %struct.wl_surface** %11, align 8
  %144 = load %struct.wl_buffer*, %struct.wl_buffer** %18, align 8
  %145 = call i32 @wl_surface_attach(%struct.wl_surface* %143, %struct.wl_buffer* %144, i32 0, i32 0)
  %146 = load %struct.wl_surface*, %struct.wl_surface** %11, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @wl_surface_damage(%struct.wl_surface* %146, i32 0, i32 0, i32 %149, i32 %152)
  %154 = load %struct.wl_display*, %struct.wl_display** %10, align 8
  %155 = call i32 @wl_display_flush(%struct.wl_display* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32*, i32** %7, align 8
  br label %161

161:                                              ; preds = %137, %134, %87, %51, %43
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local %struct.buffer_data* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.wl_shm_pool* @wl_shm_create_pool(i32, i32, i64) #1

declare dso_local i32 @free(%struct.buffer_data*) #1

declare dso_local %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @wl_shm_pool_destroy(%struct.wl_shm_pool*) #1

declare dso_local i32 @picture_Hold(%struct.TYPE_19__*) #1

declare dso_local i32 @wl_buffer_add_listener(%struct.wl_buffer*, i32*, %struct.buffer_data*) #1

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, %struct.wl_buffer*, i32, i32) #1

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
