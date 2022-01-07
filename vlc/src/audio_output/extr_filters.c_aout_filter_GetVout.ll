; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_filter_GetVout.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_filter_GetVout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aout_filter_GetVout(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %9)
  %11 = call i32* @vout_Create(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32* %7, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %27, align 8
  %29 = call i32 @video_format_AdjustColorSpace(i32* %7)
  %30 = call i64 @vout_Request(%struct.TYPE_8__* %8, i32* null, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @vout_Close(i32* %33)
  store i32* null, i32** %6, align 8
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %35, %17
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @vout_Create(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @video_format_AdjustColorSpace(i32*) #1

declare dso_local i64 @vout_Request(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @vout_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
