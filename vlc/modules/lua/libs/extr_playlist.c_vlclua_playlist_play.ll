; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_playlist_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_play(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @vlclua_get_playlist_internal(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @vlc_playlist_Lock(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_playlist_GetCurrentIndex(i32* %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @vlc_playlist_Count(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @vlc_playlist_GoTo(i32* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @vlc_playlist_Start(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @vlc_playlist_Unlock(i32* %21)
  ret i32 0
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @vlc_playlist_GoTo(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Start(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
