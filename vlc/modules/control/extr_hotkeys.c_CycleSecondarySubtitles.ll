; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_CycleSecondarySubtitles.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_CycleSecondarySubtitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vlc_player_track = type { i32*, i64 }

@SPU_ES = common dso_local global i32 0, align 4
@VLC_VOUT_ORDER_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @CycleSecondarySubtitles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CycleSecondarySubtitles(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vlc_player_track*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.vlc_player_track*, align 8
  %19 = alloca %struct.vlc_player_track*, align 8
  %20 = alloca [3 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load i32, i32* @SPU_ES, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @vlc_player_GetTrackCount(i32* %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %185

31:                                               ; preds = %3
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %13, align 8
  %40 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %37, i32 %38, i64 %39)
  store %struct.vlc_player_track* %40, %struct.vlc_player_track** %14, align 8
  %41 = load %struct.vlc_player_track*, %struct.vlc_player_track** %14, align 8
  %42 = call i32 @assert(%struct.vlc_player_track* %41)
  %43 = load %struct.vlc_player_track*, %struct.vlc_player_track** %14, align 8
  %44 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.vlc_player_track*, %struct.vlc_player_track** %14, align 8
  %50 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @vlc_player_GetEsIdVout(i32* %48, i32* %51, i32* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.vlc_player_track*, %struct.vlc_player_track** %14, align 8
  %62 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  br label %68

64:                                               ; preds = %54, %47
  %65 = load %struct.vlc_player_track*, %struct.vlc_player_track** %14, align 8
  %66 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %68, %36
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @VLC_VOUT_ORDER_PRIMARY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82, %75
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @vlc_player_SelectNextTrack(i32* %92, i32 %93)
  br label %99

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @vlc_player_SelectPrevTrack(i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  br label %185

100:                                              ; preds = %85
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %9, align 8
  %106 = sub i64 %105, 1
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i64 [ 0, %103 ], [ %106, %104 ]
  store i64 %108, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %109

109:                                              ; preds = %128, %107
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i64, i64* %17, align 8
  %117 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %114, i32 %115, i64 %116)
  store %struct.vlc_player_track* %117, %struct.vlc_player_track** %18, align 8
  %118 = load %struct.vlc_player_track*, %struct.vlc_player_track** %18, align 8
  %119 = call i32 @assert(%struct.vlc_player_track* %118)
  %120 = load %struct.vlc_player_track*, %struct.vlc_player_track** %18, align 8
  %121 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = icmp eq i32* %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i64, i64* %17, align 8
  store i64 %126, i64* %16, align 8
  br label %131

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %17, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %17, align 8
  br label %109

131:                                              ; preds = %125, %109
  br label %132

132:                                              ; preds = %131, %169
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i64, i64* %16, align 8
  %136 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %133, i32 %134, i64 %135)
  store %struct.vlc_player_track* %136, %struct.vlc_player_track** %19, align 8
  %137 = load %struct.vlc_player_track*, %struct.vlc_player_track** %19, align 8
  %138 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %132
  %142 = load %struct.vlc_player_track*, %struct.vlc_player_track** %19, align 8
  %143 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %10, align 8
  br label %170

145:                                              ; preds = %132
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, 1
  %151 = load i64, i64* %9, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %148, %145
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %16, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %148
  store i32* null, i32** %10, align 8
  br label %170

160:                                              ; preds = %156, %153
  %161 = load i64, i64* %16, align 8
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 -1
  %166 = sext i32 %165 to i64
  %167 = add i64 %161, %166
  store i64 %167, i64* %16, align 8
  br label %168

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168
  br label %132

170:                                              ; preds = %159, %141
  %171 = load i32*, i32** %11, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = load i32*, i32** %10, align 8
  store i32* %174, i32** %11, align 8
  store i32* null, i32** %10, align 8
  br label %175

175:                                              ; preds = %173, %170
  %176 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 0, i64 0
  %177 = load i32*, i32** %11, align 8
  store i32* %177, i32** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 1
  %179 = load i32*, i32** %10, align 8
  store i32* %179, i32** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32* null, i32** %180, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %8, align 4
  %183 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 0, i64 0
  %184 = call i32 @vlc_player_SelectEsIdList(i32* %181, i32 %182, i32** %183)
  br label %185

185:                                              ; preds = %30, %175, %99
  ret void
}

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32 @assert(%struct.vlc_player_track*) #1

declare dso_local i64 @vlc_player_GetEsIdVout(i32*, i32*, i32*) #1

declare dso_local i32 @vlc_player_SelectNextTrack(i32*, i32) #1

declare dso_local i32 @vlc_player_SelectPrevTrack(i32*, i32) #1

declare dso_local i32 @vlc_player_SelectEsIdList(i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
