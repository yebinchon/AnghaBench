; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_CycleTrack.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_CycleTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i64 }

@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @vlc_player_CycleTrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_CycleTrack(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlc_player_track*, align 8
  %12 = alloca %struct.vlc_player_track*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @vlc_player_GetTrackCount(i32* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %97

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %25, i32 %26, i64 %27)
  store %struct.vlc_player_track* %28, %struct.vlc_player_track** %11, align 8
  %29 = load %struct.vlc_player_track*, %struct.vlc_player_track** %11, align 8
  %30 = call i32 @assert(%struct.vlc_player_track* %29)
  %31 = load %struct.vlc_player_track*, %struct.vlc_player_track** %11, align 8
  %32 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %97

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 1
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i64 [ 0, %51 ], [ %54, %52 ]
  store i64 %56, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %81

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %60
  store i32 0, i32* %9, align 4
  br label %80

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 -1
  %78 = sext i32 %77 to i64
  %79 = add i64 %73, %78
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %72, %71
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %82, i32 %83, i64 %84)
  store %struct.vlc_player_track* %85, %struct.vlc_player_track** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.vlc_player_track*, %struct.vlc_player_track** %12, align 8
  %91 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %92 = call i32 @vlc_player_SelectTrack(i32* %89, %struct.vlc_player_track* %90, i32 %91)
  br label %97

93:                                               ; preds = %81
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.vlc_player_track*, %struct.vlc_player_track** %12, align 8
  %96 = call i32 @vlc_player_UnselectTrack(i32* %94, %struct.vlc_player_track* %95)
  br label %97

97:                                               ; preds = %18, %38, %93, %88
  ret void
}

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32 @assert(%struct.vlc_player_track*) #1

declare dso_local i32 @vlc_player_SelectTrack(i32*, %struct.vlc_player_track*, i32) #1

declare dso_local i32 @vlc_player_UnselectTrack(i32*, %struct.vlc_player_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
