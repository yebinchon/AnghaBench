; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_player_toggle_track_.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_player_toggle_track_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i64 }

@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @vlclua_player_toggle_track_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_player_toggle_track_(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlc_player_track*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @vlclua_get_player_internal(i32* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @vlc_player_Lock(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.vlc_player_track* @FindTrack(i32* %13, i32 %14, i32 %15)
  store %struct.vlc_player_track* %16, %struct.vlc_player_track** %8, align 8
  %17 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %18 = icmp ne %struct.vlc_player_track* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %21 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %27 = call i32 @vlc_player_UnselectTrack(i32* %25, %struct.vlc_player_track* %26)
  br label %33

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %31 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %32 = call i32 @vlc_player_SelectTrack(i32* %29, %struct.vlc_player_track* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @vlc_player_Unlock(i32* %35)
  ret i32 0
}

declare dso_local i32* @vlclua_get_player_internal(i32*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local %struct.vlc_player_track* @FindTrack(i32*, i32, i32) #1

declare dso_local i32 @vlc_player_UnselectTrack(i32*, %struct.vlc_player_track*) #1

declare dso_local i32 @vlc_player_SelectTrack(i32*, %struct.vlc_player_track*, i32) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
