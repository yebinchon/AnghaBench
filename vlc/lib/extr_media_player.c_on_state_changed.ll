; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_state_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@libvlc_MediaPlayerStopped = common dso_local global i32 0, align 4
@libvlc_MediaPlayerEndReached = common dso_local global i32 0, align 4
@libvlc_MediaPlayerOpening = common dso_local global i32 0, align 4
@libvlc_MediaPlayerPlaying = common dso_local global i32 0, align 4
@libvlc_MediaPlayerPaused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @on_state_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_state_changed(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %28 [
    i32 129, label %13
    i32 128, label %16
    i32 130, label %19
    i32 131, label %22
    i32 132, label %25
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @libvlc_MediaPlayerStopped, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @libvlc_MediaPlayerEndReached, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @libvlc_MediaPlayerOpening, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @libvlc_MediaPlayerPlaying, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @libvlc_MediaPlayerPaused, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  br label %30

28:                                               ; preds = %3
  %29 = call i32 (...) @vlc_assert_unreachable()
  br label %30

30:                                               ; preds = %28, %25, %22, %19, %16, %13
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @libvlc_event_send(i32* %32, %struct.TYPE_5__* %8)
  ret void
}

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
