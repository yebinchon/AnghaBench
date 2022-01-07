; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_thumbnail_request_by_time.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_thumbnail_request_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }

@libvlc_media_thumbnail_seek_fast = common dso_local global i64 0, align 8
@VLC_THUMBNAILER_SEEK_FAST = common dso_local global i32 0, align 4
@VLC_THUMBNAILER_SEEK_PRECISE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@media_on_thumbnail_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @libvlc_media_thumbnail_request_by_time(%struct.TYPE_17__* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = call i32 @assert(%struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_15__* @libvlc_priv(i32 %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %18, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  br label %104

36:                                               ; preds = %8
  %37 = call %struct.TYPE_16__* @malloc(i32 40)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %19, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %39 = icmp eq %struct.TYPE_16__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  br label %104

44:                                               ; preds = %36
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = call i32 @libvlc_media_retain(%struct.TYPE_17__* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @VLC_TICK_FROM_MS(i64 %65)
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @libvlc_media_thumbnail_seek_fast, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = load i32, i32* @VLC_THUMBNAILER_SEEK_FAST, align 4
  br label %74

72:                                               ; preds = %44
  %73 = load i32, i32* @VLC_THUMBNAILER_SEEK_PRECISE, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @VLC_TICK_FROM_MS(i64 %82)
  br label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @VLC_TICK_INVALID, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  %88 = load i32, i32* @media_on_thumbnail_ready, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %90 = call i32* @vlc_thumbnailer_RequestByTime(i32* %64, i32 %66, i32 %75, i32 %78, i32 %87, i32 %88, %struct.TYPE_16__* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %99 = call i32 @free(%struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = call i32 @libvlc_media_release(%struct.TYPE_17__* %100)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  br label %104

102:                                              ; preds = %86
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %9, align 8
  br label %104

104:                                              ; preds = %102, %97, %43, %35
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  ret %struct.TYPE_16__* %105
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @libvlc_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i32 @libvlc_media_retain(%struct.TYPE_17__*) #1

declare dso_local i32* @vlc_thumbnailer_RequestByTime(i32*, i32, i32, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i64) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @libvlc_media_release(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
