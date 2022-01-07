; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_set_current_media.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_set_current_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.media_params = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"current_media\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"media2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"media3\00", align 1
@__const.test_set_current_media.media_names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@VLC_PLAYER_STATE_PLAYING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_set_current_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_current_media(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_params, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %10 = call i32 @test_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x i8*]* @__const.test_set_current_media.media_names to i8*), i64 24, i1 false)
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %13 = call i64 @ARRAY_SIZE(i8** %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ctx*, %struct.ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = call i32 @VLC_TICK_FROM_MS(i32 100)
  %18 = call i32 @DEFAULT_MEDIA_PARAMS(i32 %17)
  %19 = getelementptr inbounds %struct.media_params, %struct.media_params* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ctx*, %struct.ctx** %2, align 8
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %22 = load i8*, i8** %21, align 16
  %23 = call i32 @player_set_current_mock_media(%struct.ctx* %20, i8* %22, %struct.media_params* %6, i32 0)
  %24 = load %struct.ctx*, %struct.ctx** %2, align 8
  %25 = call i32 @player_start(%struct.ctx* %24)
  %26 = load %struct.ctx*, %struct.ctx** %2, align 8
  %27 = load i32, i32* @VLC_PLAYER_STATE_PLAYING, align 4
  %28 = call i32 @wait_state(%struct.ctx* %26, i32 %27)
  %29 = load %struct.ctx*, %struct.ctx** %2, align 8
  %30 = getelementptr inbounds %struct.ctx, %struct.ctx* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i64 1, i64* %8, align 8
  br label %38

38:                                               ; preds = %98, %1
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %50, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.ctx*, %struct.ctx** %2, align 8
  %53 = getelementptr inbounds %struct.ctx, %struct.ctx* %52, i32 0, i32 2
  %54 = call i32 @vlc_player_CondWait(i32* %51, i32* %53)
  br label %43

55:                                               ; preds = %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = call i32* @VEC_LAST(%struct.TYPE_5__* %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @vlc_player_GetCurrentMedia(i32* %62)
  %64 = icmp eq i32* %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.ctx*, %struct.ctx** %2, align 8
  %69 = getelementptr inbounds %struct.ctx, %struct.ctx* %68, i32 0, i32 0
  %70 = call i32* @VEC_LAST(%struct.TYPE_5__* %69)
  %71 = icmp eq i32* %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @assert_media_name(i32* %74, i8* %78)
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %55
  %84 = load %struct.ctx*, %struct.ctx** %2, align 8
  %85 = call i32 @player_set_current_mock_media(%struct.ctx* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.media_params* %6, i32 1)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32* @vlc_player_GetCurrentMedia(i32* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = icmp eq i32* %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.ctx*, %struct.ctx** %2, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @player_set_current_mock_media(%struct.ctx* %92, i8* %95, %struct.media_params* %6, i32 0)
  br label %97

97:                                               ; preds = %83, %55
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %38

101:                                              ; preds = %38
  %102 = load %struct.ctx*, %struct.ctx** %2, align 8
  %103 = call i32 @test_prestop(%struct.ctx* %102)
  %104 = load %struct.ctx*, %struct.ctx** %2, align 8
  %105 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %106 = call i32 @wait_state(%struct.ctx* %104, i32 %105)
  %107 = load %struct.ctx*, %struct.ctx** %2, align 8
  %108 = call i32 @assert_normal_state(%struct.ctx* %107)
  %109 = load %struct.ctx*, %struct.ctx** %2, align 8
  %110 = call i32 @player_start(%struct.ctx* %109)
  %111 = load %struct.ctx*, %struct.ctx** %2, align 8
  %112 = getelementptr inbounds %struct.ctx, %struct.ctx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ctx*, %struct.ctx** %2, align 8
  %116 = load i32, i32* @VLC_PLAYER_STATE_STARTED, align 4
  %117 = call i32 @wait_state(%struct.ctx* %115, i32 %116)
  %118 = load %struct.ctx*, %struct.ctx** %2, align 8
  %119 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %120 = call i32 @wait_state(%struct.ctx* %118, i32 %119)
  %121 = load %struct.ctx*, %struct.ctx** %2, align 8
  %122 = call i32 @assert_normal_state(%struct.ctx* %121)
  %123 = load %struct.ctx*, %struct.ctx** %2, align 8
  %124 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %125 = load i8*, i8** %124, align 16
  %126 = call i32 @player_set_current_mock_media(%struct.ctx* %123, i8* %125, %struct.media_params* %6, i32 0)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32* @vlc_player_GetCurrentMedia(i32* %127)
  %129 = load %struct.ctx*, %struct.ctx** %2, align 8
  %130 = getelementptr inbounds %struct.ctx, %struct.ctx* %129, i32 0, i32 0
  %131 = call i32* @VEC_LAST(%struct.TYPE_5__* %130)
  %132 = icmp eq i32* %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.ctx*, %struct.ctx** %2, align 8
  %136 = call i32 @player_start(%struct.ctx* %135)
  %137 = load %struct.ctx*, %struct.ctx** %2, align 8
  %138 = load i32, i32* @VLC_PLAYER_STATE_STARTED, align 4
  %139 = call i32 @wait_state(%struct.ctx* %137, i32 %138)
  %140 = load %struct.ctx*, %struct.ctx** %2, align 8
  %141 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %142 = call i32 @wait_state(%struct.ctx* %140, i32 %141)
  %143 = load %struct.ctx*, %struct.ctx** %2, align 8
  %144 = call i32 @test_end(%struct.ctx* %143)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @player_set_current_mock_media(%struct.ctx*, i8*, %struct.media_params*, i32) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32* @VEC_LAST(%struct.TYPE_5__*) #1

declare dso_local i32* @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i32 @assert_media_name(i32*, i8*) #1

declare dso_local i32 @test_prestop(%struct.ctx*) #1

declare dso_local i32 @assert_normal_state(%struct.ctx*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
