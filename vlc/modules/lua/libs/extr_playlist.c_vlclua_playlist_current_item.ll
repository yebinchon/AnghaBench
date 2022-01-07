; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_current_item.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_current_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_playlist_current_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_current_item(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @vlclua_get_playlist_internal(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_playlist_Lock(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @vlc_playlist_GetCurrentIndex(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @vlc_playlist_Get(i32* %15, i32 %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32* [ %17, %14 ], [ null, %18 ]
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @push_playlist_item(i32* %24, i32* %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @vlc_playlist_Unlock(i32* %31)
  ret i32 1
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i32) #1

declare dso_local i32 @push_playlist_item(i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
