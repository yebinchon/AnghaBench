; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleCommonKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleCommonKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8*, i32* }

@ERR = common dso_local global i32 0, align 4
@BOX_HELP = common dso_local global i32 0, align 4
@BOX_INFO = common dso_local global i32 0, align 4
@BOX_META = common dso_local global i32 0, align 4
@BOX_LOG = common dso_local global i32 0, align 4
@BOX_PLAYLIST = common dso_local global i32 0, align 4
@BOX_BROWSE = common dso_local global i32 0, align 4
@BOX_STATS = common dso_local global i32 0, align 4
@BOX_SEARCH = common dso_local global i32 0, align 4
@BOX_OPEN = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @HandleCommonKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleCommonKey(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %183 [
    i32 27, label %16
    i32 113, label %22
    i32 81, label %22
    i32 130, label %22
    i32 104, label %26
    i32 72, label %26
    i32 105, label %30
    i32 77, label %34
    i32 76, label %38
    i32 80, label %42
    i32 66, label %46
    i32 83, label %50
    i32 47, label %54
    i32 65, label %60
    i32 128, label %68
    i32 129, label %71
    i32 102, label %74
    i32 32, label %77
    i32 115, label %84
    i32 101, label %91
    i32 91, label %95
    i32 93, label %102
    i32 60, label %109
    i32 62, label %116
    i32 112, label %123
    i32 110, label %130
    i32 97, label %137
    i32 122, label %144
    i32 109, label %151
    i32 99, label %158
    i32 118, label %166
    i32 98, label %174
    i32 12, label %182
    i32 131, label %182
  ]

16:                                               ; preds = %3
  %17 = call i32 (...) @getch()
  %18 = load i32, i32* @ERR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %186

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %3, %3, %3, %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @vlc_object_instance(%struct.TYPE_7__* %23)
  %25 = call i32 @libvlc_Quit(i32 %24)
  br label %186

26:                                               ; preds = %3, %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i32, i32* @BOX_HELP, align 4
  %29 = call i32 @BoxSwitch(%struct.TYPE_8__* %27, i32 %28)
  br label %186

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* @BOX_INFO, align 4
  %33 = call i32 @BoxSwitch(%struct.TYPE_8__* %31, i32 %32)
  br label %186

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = load i32, i32* @BOX_META, align 4
  %37 = call i32 @BoxSwitch(%struct.TYPE_8__* %35, i32 %36)
  br label %186

38:                                               ; preds = %3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i32, i32* @BOX_LOG, align 4
  %41 = call i32 @BoxSwitch(%struct.TYPE_8__* %39, i32 %40)
  br label %186

42:                                               ; preds = %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = load i32, i32* @BOX_PLAYLIST, align 4
  %45 = call i32 @BoxSwitch(%struct.TYPE_8__* %43, i32 %44)
  br label %186

46:                                               ; preds = %3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i32, i32* @BOX_BROWSE, align 4
  %49 = call i32 @BoxSwitch(%struct.TYPE_8__* %47, i32 %48)
  br label %186

50:                                               ; preds = %3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* @BOX_STATS, align 4
  %53 = call i32 @BoxSwitch(%struct.TYPE_8__* %51, i32 %52)
  br label %186

54:                                               ; preds = %3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = load i32, i32* @BOX_SEARCH, align 4
  %59 = call i32 @BoxSwitch(%struct.TYPE_8__* %57, i32 %58)
  br label %186

60:                                               ; preds = %3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = load i32, i32* @BOX_OPEN, align 4
  %67 = call i32 @BoxSwitch(%struct.TYPE_8__* %65, i32 %66)
  br label %186

68:                                               ; preds = %3
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ChangePosition(i32* %69, double 1.000000e-02)
  br label %186

71:                                               ; preds = %3
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ChangePosition(i32* %72, double -1.000000e-02)
  br label %186

74:                                               ; preds = %3
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @vlc_player_vout_ToggleFullscreen(i32* %75)
  br label %186

77:                                               ; preds = %3
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @vlc_player_Lock(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @vlc_player_TogglePause(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @vlc_player_Unlock(i32* %82)
  br label %186

84:                                               ; preds = %3
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @vlc_player_Lock(i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @vlc_player_Stop(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @vlc_player_Unlock(i32* %89)
  br label %186

91:                                               ; preds = %3
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @Eject(%struct.TYPE_7__* %92, i32* %93)
  br label %186

95:                                               ; preds = %3
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @vlc_player_Lock(i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @vlc_player_SelectPrevTitle(i32* %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @vlc_player_Unlock(i32* %100)
  br label %186

102:                                              ; preds = %3
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @vlc_player_Lock(i32* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @vlc_player_SelectNextTitle(i32* %105)
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @vlc_player_Unlock(i32* %107)
  br label %186

109:                                              ; preds = %3
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @vlc_player_Lock(i32* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @vlc_player_SelectPrevChapter(i32* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @vlc_player_Unlock(i32* %114)
  br label %186

116:                                              ; preds = %3
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @vlc_player_Lock(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @vlc_player_SelectNextChapter(i32* %119)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @vlc_player_Unlock(i32* %121)
  br label %186

123:                                              ; preds = %3
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @vlc_playlist_Lock(i32* %124)
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @vlc_playlist_Prev(i32* %126)
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @vlc_playlist_Unlock(i32* %128)
  br label %184

130:                                              ; preds = %3
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @vlc_playlist_Lock(i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @vlc_playlist_Next(i32* %133)
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @vlc_playlist_Unlock(i32* %135)
  br label %184

137:                                              ; preds = %3
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @vlc_player_Lock(i32* %138)
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @vlc_player_aout_IncrementVolume(i32* %140, i32 1, i32* null)
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @vlc_player_Unlock(i32* %142)
  br label %184

144:                                              ; preds = %3
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @vlc_player_Lock(i32* %145)
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @vlc_player_aout_DecrementVolume(i32* %147, i32 1, i32* null)
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @vlc_player_Unlock(i32* %149)
  br label %184

151:                                              ; preds = %3
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @vlc_player_Lock(i32* %152)
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @vlc_player_aout_ToggleMute(i32* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @vlc_player_Unlock(i32* %156)
  br label %184

158:                                              ; preds = %3
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @vlc_player_Lock(i32* %159)
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @AUDIO_ES, align 4
  %163 = call i32 @vlc_player_SelectNextTrack(i32* %161, i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @vlc_player_Unlock(i32* %164)
  br label %184

166:                                              ; preds = %3
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @vlc_player_Lock(i32* %167)
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* @SPU_ES, align 4
  %171 = call i32 @vlc_player_SelectNextTrack(i32* %169, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @vlc_player_Unlock(i32* %172)
  br label %184

174:                                              ; preds = %3
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @vlc_player_Lock(i32* %175)
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* @VIDEO_ES, align 4
  %179 = call i32 @vlc_player_SelectNextTrack(i32* %177, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @vlc_player_Unlock(i32* %180)
  br label %184

182:                                              ; preds = %3, %3
  br label %184

183:                                              ; preds = %3
  br label %186

184:                                              ; preds = %182, %174, %166, %158, %151, %144, %137, %130, %123
  %185 = call i32 (...) @clear()
  br label %186

186:                                              ; preds = %184, %183, %116, %109, %102, %95, %91, %84, %77, %74, %71, %68, %60, %54, %50, %46, %42, %38, %34, %30, %26, %22, %20
  ret void
}

declare dso_local i32 @getch(...) #1

declare dso_local i32 @libvlc_Quit(i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_7__*) #1

declare dso_local i32 @BoxSwitch(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ChangePosition(i32*, double) #1

declare dso_local i32 @vlc_player_vout_ToggleFullscreen(i32*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @vlc_player_TogglePause(i32*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

declare dso_local i32 @vlc_player_Stop(i32*) #1

declare dso_local i32 @Eject(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @vlc_player_SelectPrevTitle(i32*) #1

declare dso_local i32 @vlc_player_SelectNextTitle(i32*) #1

declare dso_local i32 @vlc_player_SelectPrevChapter(i32*) #1

declare dso_local i32 @vlc_player_SelectNextChapter(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_Prev(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @vlc_playlist_Next(i32*) #1

declare dso_local i32 @vlc_player_aout_IncrementVolume(i32*, i32, i32*) #1

declare dso_local i32 @vlc_player_aout_DecrementVolume(i32*, i32, i32*) #1

declare dso_local i32 @vlc_player_aout_ToggleMute(i32*) #1

declare dso_local i32 @vlc_player_SelectNextTrack(i32*, i32) #1

declare dso_local i32 @clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
