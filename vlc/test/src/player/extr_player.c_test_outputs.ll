; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_outputs.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.media_params = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"test_outputs\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@VLC_PLAYER_STATE_STOPPING = common dso_local global i32 0, align 4
@VLC_PLAYER_VOUT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_outputs(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.media_params, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %12 = call i32 @test_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ctx*, %struct.ctx** %2, align 8
  %14 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @vlc_player_aout_Hold(i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @vlc_player_vout_Hold(i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32** @vlc_player_vout_HoldAll(i32* %26, i64* %6)
  store i32** %27, i32*** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32**, i32*** %7, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %33, %34
  br label %36

36:                                               ; preds = %30, %1
  %37 = phi i1 [ false, %1 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32**, i32*** %7, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @vout_Release(i32* %42)
  %44 = load i32**, i32*** %7, align 8
  %45 = call i32 @free(i32** %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @vout_Release(i32* %46)
  %48 = call i32 @VLC_TICK_FROM_MS(i32 10)
  %49 = call i32 @DEFAULT_MEDIA_PARAMS(i32 %48)
  %50 = getelementptr inbounds %struct.media_params, %struct.media_params* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ctx*, %struct.ctx** %2, align 8
  %52 = call i32 @player_set_current_mock_media(%struct.ctx* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.media_params* %8, i32 0)
  %53 = load %struct.ctx*, %struct.ctx** %2, align 8
  %54 = call i32 @player_start(%struct.ctx* %53)
  %55 = load %struct.ctx*, %struct.ctx** %2, align 8
  %56 = load i32, i32* @VLC_PLAYER_STATE_STOPPING, align 4
  %57 = call i32 @wait_state(%struct.ctx* %55, i32 %56)
  %58 = load %struct.ctx*, %struct.ctx** %2, align 8
  %59 = getelementptr inbounds %struct.ctx, %struct.ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %9, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VLC_PLAYER_VOUT_STARTED, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32* @vlc_player_vout_Hold(i32* %77)
  store i32* %78, i32** %10, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @vout_Release(i32* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32* @vlc_player_aout_Hold(i32* %91)
  store i32* %92, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = icmp eq i32* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @aout_Release(i32* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @aout_Release(i32* %100)
  %102 = load %struct.ctx*, %struct.ctx** %2, align 8
  %103 = call i32 @test_end(%struct.ctx* %102)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @vlc_player_aout_Hold(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_player_vout_Hold(i32*) #1

declare dso_local i32** @vlc_player_vout_HoldAll(i32*, i64*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @player_set_current_mock_media(%struct.ctx*, i8*, %struct.media_params*, i32) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @aout_Release(i32*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
