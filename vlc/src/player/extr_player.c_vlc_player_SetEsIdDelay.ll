; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetEsIdDelay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetEsIdDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }
%struct.vlc_player_track_priv = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@VLC_PLAYER_WHENCE_ABSOLUTE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@INPUT_CONTROL_SET_ES_DELAY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s delay: %i ms\00", align 1
@on_track_delay_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_SetEsIdDelay(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_player_input*, align 8
  %12 = alloca %struct.vlc_player_track_priv*, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @VLC_PLAYER_WHENCE_ABSOLUTE, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %19)
  store %struct.vlc_player_input* %20, %struct.vlc_player_input** %11, align 8
  %21 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %22 = icmp ne %struct.vlc_player_input* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %5, align 4
  br label %109

25:                                               ; preds = %4
  %26 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input* %26, i32* %27, i32* null)
  store %struct.vlc_player_track_priv* %28, %struct.vlc_player_track_priv** %12, align 8
  %29 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %30 = icmp eq %struct.vlc_player_track_priv* %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %25
  %32 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %33 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AUDIO_ES, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %41 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPU_ES, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %25
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %5, align 4
  br label %109

49:                                               ; preds = %39, %31
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %55 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %74

56:                                               ; preds = %49
  %57 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %58 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @INT64_MAX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %64 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %68 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %72 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %65, %52
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %76 = load i32*, i32** %7, align 8
  %77 = ptrtoint i32* %76 to i32
  store i32 %77, i32* %75, align 4
  %78 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %79 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @INPUT_CONTROL_SET_ES_DELAY, align 4
  %82 = call i32 @input_ControlPush(i32 %80, i32 %81, %struct.TYPE_7__* %13)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @VLC_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %74
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @INT64_MAX, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %12, align 8
  %94 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @MS_FROM_VLC_TICK(i64 %97)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @vlc_player_osd_Message(i32* %91, i32 %92, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %90, %86
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @on_track_delay_changed, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @vlc_player_SendEvent(i32* %102, i32 %103, i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %101, %74
  %108 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %47, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input*, i32*, i32*) #1

declare dso_local i32 @input_ControlPush(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_player_osd_Message(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @MS_FROM_VLC_TICK(i64) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
