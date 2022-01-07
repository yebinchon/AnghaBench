; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_callbacks_on_add_listener.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_callbacks_on_add_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.vlc_playlist_callbacks = type { i32, i32, i32, i32, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_REPEAT_ALL = common dso_local global i64 0, align 8
@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i64 0, align 8
@callback_on_has_next_changed = common dso_local global i32 0, align 4
@callback_on_has_prev_changed = common dso_local global i32 0, align 4
@callback_on_current_index_changed = common dso_local global i32 0, align 4
@callback_on_playback_order_changed = common dso_local global i32 0, align 4
@callback_on_playback_repeat_changed = common dso_local global i32 0, align 4
@callback_on_items_reset = common dso_local global i32 0, align 4
@CALLBACK_CTX_INITIALIZER = common dso_local global %struct.callback_ctx zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_callbacks_on_add_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_callbacks_on_add_listener() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* @vlc_playlist_New(i32* null)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = ptrtoint i32* %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %12 = call i32 @CreateDummyMediaArray(i32** %11, i32 10)
  %13 = load i32*, i32** %1, align 8
  %14 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %15 = call i32 @vlc_playlist_Append(i32* %13, i32** %14, i32 10)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @VLC_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 8
  %23 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %21, i64 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 8
  %26 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %24, i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @vlc_playlist_GoTo(i32* %27, i32 5)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VLC_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %35 = load i32, i32* @callback_on_has_next_changed, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 1
  %37 = load i32, i32* @callback_on_has_prev_changed, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 2
  %39 = load i32, i32* @callback_on_current_index_changed, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 3
  %41 = load i32, i32* @callback_on_playback_order_changed, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 4
  %43 = load i32, i32* @callback_on_playback_repeat_changed, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 5
  %45 = load i32, i32* @callback_on_items_reset, align 4
  store i32 %45, i32* %44, align 4
  %46 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 96, i1 false)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32* @vlc_playlist_AddListener(i32* %47, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 1)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 10
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 5
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @assert(i32 %125)
  %127 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @assert(i32 %138)
  %140 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %141 = load i32*, i32** %1, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @vlc_playlist_RemoveListener(i32* %141, i32* %142)
  %144 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %145 = call i32 @DestroyMediaArray(i32** %144, i32 10)
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @vlc_playlist_Delete(i32* %146)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

declare dso_local i32 @vlc_playlist_SetPlaybackRepeat(i32*, i64) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i64) #1

declare dso_local i32 @vlc_playlist_GoTo(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vlc_playlist_AddListener(i32*, %struct.vlc_playlist_callbacks*, %struct.callback_ctx*, i32) #1

declare dso_local i32 @callback_ctx_destroy(%struct.callback_ctx*) #1

declare dso_local i32 @vlc_playlist_RemoveListener(i32*, i32*) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
