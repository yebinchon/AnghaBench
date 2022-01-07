; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_volume.c_vlclua_volume_set.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_volume.c_vlclua_volume_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_VOLUME_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_volume_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_volume_set(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @vlclua_get_playlist_internal(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @vlc_playlist_GetPlayer(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @luaL_checkinteger(i32* %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* %5, align 4
  %19 = sitofp i32 %18 to float
  %20 = load i64, i64* @AOUT_VOLUME_DEFAULT, align 8
  %21 = sitofp i64 %20 to float
  %22 = fdiv float %19, %21
  store float %22, float* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load float, float* %6, align 4
  %25 = call i32 @vlc_player_aout_SetVolume(i32* %23, float %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @vlclua_push_ret(i32* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32* @vlc_playlist_GetPlayer(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @vlc_player_aout_SetVolume(i32*, float) #1

declare dso_local i32 @vlclua_push_ret(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
