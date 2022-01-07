; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32*, i32, i32, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@PA_VOLUME_INVALID = common dso_local global i32 0, align 4
@PA_STREAM_NOFLAGS = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@Stop = common dso_local global i32 0, align 4
@TimeGet = common dso_local global i32 0, align 4
@Play = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@Drain = common dso_local global i32 0, align 4
@VolumeSet = common dso_local global i32 0, align 4
@MuteSet = common dso_local global i32 0, align 4
@StreamMove = common dso_local global i32 0, align 4
@sink_add_cb = common dso_local global i32 0, align 4
@PA_OPERATION_RUNNING = common dso_local global i64 0, align 8
@PA_SUBSCRIPTION_MASK_SINK = common dso_local global i32 0, align 4
@PA_SUBSCRIPTION_MASK_SINK_INPUT = common dso_local global i32 0, align 4
@context_cb = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = call %struct.TYPE_8__* @malloc(i32 48)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = call i32* @vlc_pa_connect(i32* %20, i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @free(%struct.TYPE_8__* %27)
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %137

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* @PA_VOLUME_INVALID, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PA_STREAM_NOFLAGS, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 10
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load i32, i32* @Start, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @Stop, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @TimeGet, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @Play, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @Pause, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @Flush, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @Drain, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @VolumeSet, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @MuteSet, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @StreamMove, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pa_threaded_mainloop_lock(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @sink_add_cb, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = call i32* @pa_context_get_sink_info_list(i32* %85, i32 %86, %struct.TYPE_7__* %87)
  store i32* %88, i32** %6, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %30
  br label %95

95:                                               ; preds = %100, %94
  %96 = load i32*, i32** %6, align 8
  %97 = call i64 @pa_operation_get_state(i32* %96)
  %98 = load i64, i64* @PA_OPERATION_RUNNING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pa_threaded_mainloop_wait(i32 %103)
  br label %95

105:                                              ; preds = %95
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @pa_operation_unref(i32* %106)
  br label %108

108:                                              ; preds = %105, %30
  %109 = load i32, i32* @PA_SUBSCRIPTION_MASK_SINK, align 4
  %110 = load i32, i32* @PA_SUBSCRIPTION_MASK_SINK_INPUT, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %8, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @context_cb, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = call i32 @pa_context_set_subscribe_callback(i32* %114, i32 %115, %struct.TYPE_7__* %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32* @pa_context_subscribe(i32* %120, i32 %121, i32* null, i32* null)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i64 @likely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %108
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @pa_operation_unref(i32* %129)
  br label %131

131:                                              ; preds = %128, %108
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pa_threaded_mainloop_unlock(i32 %134)
  %136 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %131, %26, %17
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_pa_connect(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32* @pa_context_get_sink_info_list(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @pa_operation_get_state(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32 @pa_context_set_subscribe_callback(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32* @pa_context_subscribe(i32*, i32, i32*, i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
