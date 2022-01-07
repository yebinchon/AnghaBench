; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalCanGoNext.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_MarshalCanGoNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@VLC_PLAYLIST_PLAYBACK_REPEAT_NONE = common dso_local global i32 0, align 4
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @MarshalCanGoNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MarshalCanGoNext(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @vlc_playlist_Lock(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @vlc_playlist_Count(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @vlc_playlist_GetCurrentIndex(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @vlc_playlist_GetPlaybackRepeat(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @vlc_playlist_Unlock(i32* %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 1
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_NONE, align 4
  %40 = icmp ne i32 %38, %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i1 [ true, %31 ], [ %40, %37 ]
  br label %43

43:                                               ; preds = %41, %2
  %44 = phi i1 [ false, %2 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %48 = call i32 @dbus_message_iter_append_basic(i32* %46, i32 %47, i32* %10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackRepeat(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
