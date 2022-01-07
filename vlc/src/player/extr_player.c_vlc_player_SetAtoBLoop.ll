; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetAtoBLoop.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetAtoBLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, float }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@on_atobloop_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_SetAtoBLoop(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_player_input*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %10)
  store %struct.vlc_player_input* %11, %struct.vlc_player_input** %6, align 8
  %12 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %13 = icmp ne %struct.vlc_player_input* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @vlc_player_CanSeek(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %3, align 4
  br label %157

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @vlc_player_GetTime(i32* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call float @vlc_player_GetPosition(i32* %23)
  store float %24, float* %8, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %147 [
    i32 130, label %27
    i32 129, label %55
    i32 128, label %135
  ]

27:                                               ; preds = %20
  %28 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %40 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load float, float* %8, align 4
  %45 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %46 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store float %44, float* %49, align 8
  %50 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %51 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %149

55:                                               ; preds = %20
  %56 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %57 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %3, align 4
  br label %157

65:                                               ; preds = %55
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %68 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %66, i8** %71, align 8
  %72 = load float, float* %8, align 4
  %73 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %74 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store float %72, float* %77, align 8
  %78 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %79 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %84 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %65
  %92 = load i8*, i8** %7, align 8
  %93 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %94 = icmp ne i8* %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %98 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ugt i8* %96, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %107 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @vlc_player_SetTime(i32* %105, i8* %111)
  br label %149

113:                                              ; preds = %95
  br label %133

114:                                              ; preds = %91, %65
  %115 = load float, float* %8, align 4
  %116 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %117 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load float, float* %120, align 8
  %122 = fcmp ogt float %115, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %126 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load float, float* %129, align 8
  %131 = call i32 @vlc_player_SetPosition(i32* %124, float %130)
  br label %149

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %113
  store i32 128, i32* %5, align 4
  %134 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %20, %133
  %136 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %137 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %142 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load i8*, i8** @VLC_TICK_INVALID, align 8
  store i8* %146, i8** %7, align 8
  store float 0.000000e+00, float* %8, align 4
  br label %149

147:                                              ; preds = %20
  %148 = call i32 (...) @vlc_assert_unreachable()
  br label %149

149:                                              ; preds = %147, %135, %123, %104, %37
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* @on_atobloop_changed, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = load float, float* %8, align 4
  %155 = call i32 @vlc_player_SendEvent(i32* %150, i32 %151, i32 %152, i8* %153, float %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %149, %63, %35, %18
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @vlc_player_CanSeek(i32*) #1

declare dso_local i8* @vlc_player_GetTime(i32*) #1

declare dso_local float @vlc_player_GetPosition(i32*) #1

declare dso_local i32 @vlc_player_SetTime(i32*, i8*) #1

declare dso_local i32 @vlc_player_SetPosition(i32*, float) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
