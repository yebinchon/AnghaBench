; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalLoopStatus.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalLoopStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@LOOP_STATUS_PLAYLIST = common dso_local global i8* null, align 8
@LOOP_STATUS_TRACK = common dso_local global i8* null, align 8
@LOOP_STATUS_NONE = common dso_local global i8* null, align 8
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @MarshalLoopStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MarshalLoopStatus(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @vlc_playlist_Lock(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @vlc_playlist_GetPlaybackRepeat(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @vlc_playlist_Unlock(i32* %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %2
  %22 = load i8*, i8** @LOOP_STATUS_PLAYLIST, align 8
  store i8* %22, i8** %8, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** @LOOP_STATUS_TRACK, align 8
  store i8* %24, i8** %8, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** @LOOP_STATUS_NONE, align 8
  store i8* %26, i8** %8, align 8
  br label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @vlc_assert_unreachable()
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %32 = call i32 @dbus_message_iter_append_basic(i32* %30, i32 %31, i8** %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackRepeat(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
