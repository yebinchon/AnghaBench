; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SelectEsId.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SelectEsId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }
%struct.vlc_player_track = type { i32*, i64 }

@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@INPUT_CONTROL_SET_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_SelectEsId(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_player_input*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vlc_player_track*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.vlc_player_track*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %19)
  store %struct.vlc_player_input* %20, %struct.vlc_player_input** %8, align 8
  %21 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %22 = icmp ne %struct.vlc_player_input* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %124

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @vlc_es_id_GetCat(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @vlc_player_GetTrackCount(i32* %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %138

38:                                               ; preds = %29
  store i64 1, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %44, i32 %45, i64 %46)
  store %struct.vlc_player_track* %47, %struct.vlc_player_track** %13, align 8
  %48 = load %struct.vlc_player_track*, %struct.vlc_player_track** %13, align 8
  %49 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.vlc_player_track*, %struct.vlc_player_track** %13, align 8
  %54 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %58, %52, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  br label %39

65:                                               ; preds = %39
  %66 = load i64, i64* %11, align 8
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %124

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  %72 = call i32** @vlc_alloc(i64 %71, i32 8)
  store i32** %72, i32*** %14, align 8
  %73 = load i32**, i32*** %14, align 8
  %74 = icmp ne i32** %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %138

76:                                               ; preds = %69
  store i64 0, i64* %15, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32**, i32*** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %15, align 8
  %81 = getelementptr inbounds i32*, i32** %78, i64 %79
  store i32* %77, i32** %81, align 8
  store i64 0, i64* %16, align 8
  br label %82

82:                                               ; preds = %110, %76
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %87, i32 %88, i64 %89)
  store %struct.vlc_player_track* %90, %struct.vlc_player_track** %17, align 8
  %91 = load %struct.vlc_player_track*, %struct.vlc_player_track** %17, align 8
  %92 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %86
  %96 = load %struct.vlc_player_track*, %struct.vlc_player_track** %17, align 8
  %97 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = icmp ne i32* %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.vlc_player_track*, %struct.vlc_player_track** %17, align 8
  %103 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32**, i32*** %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %15, align 8
  %108 = getelementptr inbounds i32*, i32** %105, i64 %106
  store i32* %104, i32** %108, align 8
  br label %109

109:                                              ; preds = %101, %95, %86
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %16, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %16, align 8
  br label %82

113:                                              ; preds = %82
  %114 = load i32**, i32*** %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  store i32* null, i32** %116, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32**, i32*** %14, align 8
  %120 = call i32 @vlc_player_SelectEsIdList(i32* %117, i32 %118, i32** %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32**, i32*** %14, align 8
  %122 = call i32 @free(i32** %121)
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %4, align 4
  br label %138

124:                                              ; preds = %68, %28
  %125 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %126 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @INPUT_CONTROL_SET_ES, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = call i64 @input_ControlPushEsHelper(i32 %127, i32 %128, i32* %129)
  %131 = load i64, i64* @VLC_SUCCESS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @vlc_player_osd_Track(i32* %134, i32* %135, i32 1)
  br label %137

137:                                              ; preds = %133, %124
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %113, %75, %37, %23
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @vlc_es_id_GetCat(i32*) #1

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32** @vlc_alloc(i64, i32) #1

declare dso_local i32 @vlc_player_SelectEsIdList(i32*, i32, i32**) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i64 @input_ControlPushEsHelper(i32, i32, i32*) #1

declare dso_local i32 @vlc_player_osd_Track(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
