; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_random.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_playlist_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_random(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @vlclua_get_playlist_internal(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @vlclua_error(i32* %16)
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @vlc_playlist_Lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @vlc_playlist_GetPlaybackOrder(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @take_bool(i32* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @vlc_playlist_Unlock(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lua_pushboolean(i32* %47, i32 %48)
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @vlclua_error(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackOrder(i32*) #1

declare dso_local i32 @take_bool(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
