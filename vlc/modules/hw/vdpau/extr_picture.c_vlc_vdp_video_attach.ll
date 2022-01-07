; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_picture.c_vlc_vdp_video_attach.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_picture.c_vlc_vdp_video_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@VDP_STATUS_RESOURCES = common dso_local global i32 0, align 4
@VLC_CODEC_VDPAU_VIDEO_420 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_422 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_444 = common dso_local global i64 0, align 8
@VDP_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_vdp_video_attach(i32* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_7__* @vlc_vdp_video_create(i32* %9, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @VDP_STATUS_RESOURCES, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_420, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_422, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_444, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %33, %26, %19
  %41 = phi i1 [ true, %26 ], [ true, %19 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* @VDP_STATUS_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %40, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_7__* @vlc_vdp_video_create(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
