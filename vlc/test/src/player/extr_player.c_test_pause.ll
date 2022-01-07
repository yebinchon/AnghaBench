; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_pause.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_7__ = type { i64 }
%struct.media_params = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pause\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@VLC_PLAYER_STATE_PAUSED = common dso_local global i64 0, align 8
@VLC_PLAYER_STATE_STARTED = common dso_local global i64 0, align 8
@VLC_PLAYER_STATE_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pause(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.media_params, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %10 = call i32 @test_log(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctx*, %struct.ctx** %2, align 8
  %12 = getelementptr inbounds %struct.ctx, %struct.ctx* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = call i32 @VLC_TICK_FROM_SEC(i32 10)
  %15 = call i32 @DEFAULT_MEDIA_PARAMS(i32 %14)
  %16 = getelementptr inbounds %struct.media_params, %struct.media_params* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ctx*, %struct.ctx** %2, align 8
  %18 = call i32 @player_set_next_mock_media(%struct.ctx* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.media_params* %4)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @vlc_player_SetStartPaused(i32* %19, i32 1)
  %21 = load %struct.ctx*, %struct.ctx** %2, align 8
  %22 = call i32 @player_start(%struct.ctx* %21)
  %23 = load %struct.ctx*, %struct.ctx** %2, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %5, align 8
  br label %26

26:                                               ; preds = %38, %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = call i64 @VEC_LAST(%struct.TYPE_6__* %32)
  %34 = load i64, i64* @VLC_PLAYER_STATE_PAUSED, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.ctx*, %struct.ctx** %2, align 8
  %41 = getelementptr inbounds %struct.ctx, %struct.ctx* %40, i32 0, i32 0
  %42 = call i32 @vlc_player_CondWait(i32* %39, i32* %41)
  br label %26

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VLC_PLAYER_STATE_STARTED, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VLC_PLAYER_STATE_PLAYING, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VLC_PLAYER_STATE_PAUSED, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.ctx*, %struct.ctx** %2, align 8
  %78 = getelementptr inbounds %struct.ctx, %struct.ctx* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @vlc_player_Resume(i32* %86)
  %88 = load %struct.ctx*, %struct.ctx** %2, align 8
  %89 = getelementptr inbounds %struct.ctx, %struct.ctx* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %7, align 8
  br label %91

91:                                               ; preds = %96, %43
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = call i64 @VEC_LAST(%struct.TYPE_6__* %92)
  %94 = load i64, i64* @VLC_PLAYER_STATE_PLAYING, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.ctx*, %struct.ctx** %2, align 8
  %99 = getelementptr inbounds %struct.ctx, %struct.ctx* %98, i32 0, i32 0
  %100 = call i32 @vlc_player_CondWait(i32* %97, i32* %99)
  br label %91

101:                                              ; preds = %91
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 4
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.ctx*, %struct.ctx** %2, align 8
  %109 = getelementptr inbounds %struct.ctx, %struct.ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %8, align 8
  br label %111

111:                                              ; preds = %116, %101
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.ctx*, %struct.ctx** %2, align 8
  %119 = getelementptr inbounds %struct.ctx, %struct.ctx* %118, i32 0, i32 0
  %120 = call i32 @vlc_player_CondWait(i32* %117, i32* %119)
  br label %111

121:                                              ; preds = %111
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @vlc_player_Pause(i32* %122)
  %124 = load %struct.ctx*, %struct.ctx** %2, align 8
  %125 = getelementptr inbounds %struct.ctx, %struct.ctx* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %9, align 8
  br label %127

127:                                              ; preds = %132, %121
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = call i64 @VEC_LAST(%struct.TYPE_6__* %128)
  %130 = load i64, i64* @VLC_PLAYER_STATE_PAUSED, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.ctx*, %struct.ctx** %2, align 8
  %135 = getelementptr inbounds %struct.ctx, %struct.ctx* %134, i32 0, i32 0
  %136 = call i32 @vlc_player_CondWait(i32* %133, i32* %135)
  br label %127

137:                                              ; preds = %127
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 5
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.ctx*, %struct.ctx** %2, align 8
  %145 = call i32 @test_end(%struct.ctx* %144)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32 @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @player_set_next_mock_media(%struct.ctx*, i8*, %struct.media_params*) #1

declare dso_local i32 @vlc_player_SetStartPaused(i32*, i32) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i64 @VEC_LAST(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_Resume(i32*) #1

declare dso_local i32 @vlc_player_Pause(i32*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
