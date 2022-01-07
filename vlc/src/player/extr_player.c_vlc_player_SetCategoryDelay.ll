; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetCategoryDelay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetCategoryDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@VLC_PLAYER_WHENCE_ABSOLUTE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@INPUT_CONTROL_SET_CATEGORY_DELAY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s delay: %i ms\00", align 1
@on_category_delay_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_SetCategoryDelay(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_player_input*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
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
  br label %81

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AUDIO_ES, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SPU_ES, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %5, align 4
  br label %81

35:                                               ; preds = %29, %25
  %36 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %37 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %55, align 4
  %57 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %58 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INPUT_CONTROL_SET_CATEGORY_DELAY, align 4
  %61 = call i32 @input_ControlPush(i32 %59, i32 %60, %struct.TYPE_3__* %13)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @VLC_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %54
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @es_format_category_to_string(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @MS_FROM_VLC_TICK(i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 @vlc_player_osd_Message(i32* %66, i32 %67, i32 %69, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @on_category_delay_changed, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @vlc_player_SendEvent(i32* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %65, %54
  %80 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %33, %23
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @input_ControlPush(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @vlc_player_osd_Message(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @es_format_category_to_string(i32) #1

declare dso_local i64 @MS_FROM_VLC_TICK(i32) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
