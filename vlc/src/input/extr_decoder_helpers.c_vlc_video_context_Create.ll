; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_vlc_video_context_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_vlc_video_context_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.vlc_video_context_operations*, i32*, i32 }
%struct.vlc_video_context_operations = type { i32 }

@VLC_VIDEO_CONTEXT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vlc_video_context_Create(i32* %0, i32 %1, i64 %2, %struct.vlc_video_context_operations* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_video_context_operations*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.vlc_video_context_operations* %3, %struct.vlc_video_context_operations** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @VLC_VIDEO_CONTEXT_NONE, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = add i64 40, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_4__* @malloc(i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = call i32 @vlc_atomic_rc_init(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vlc_decoder_device_Hold(i32* %46)
  br label %48

48:                                               ; preds = %43, %26
  %49 = load %struct.vlc_video_context_operations*, %struct.vlc_video_context_operations** %9, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store %struct.vlc_video_context_operations* %49, %struct.vlc_video_context_operations** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %5, align 8
  br label %53

53:                                               ; preds = %48, %25
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @vlc_decoder_device_Hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
