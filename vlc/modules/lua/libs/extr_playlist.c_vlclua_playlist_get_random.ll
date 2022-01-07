; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_get_random.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_playlist_get_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_get_random(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @vlclua_get_playlist_internal(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_playlist_Lock(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @vlc_playlist_GetPlaybackOrder(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @vlc_playlist_Unlock(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lua_pushboolean(i32* %18, i32 %19)
  ret i32 1
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackOrder(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
