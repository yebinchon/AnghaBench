; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_capabilities_pause.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_capabilities_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.media_params = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"capabilites_pause\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_capabilities_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_capabilities_pause(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.media_params, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %6 = call i32 @test_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ctx*, %struct.ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ctx, %struct.ctx* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = call i32 @VLC_TICK_FROM_SEC(i32 1)
  %11 = call i32 @DEFAULT_MEDIA_PARAMS(i32 %10)
  %12 = getelementptr inbounds %struct.media_params, %struct.media_params* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.media_params, %struct.media_params* %4, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.ctx*, %struct.ctx** %2, align 8
  %15 = call i32 @player_set_next_mock_media(%struct.ctx* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.media_params* %4)
  %16 = load %struct.ctx*, %struct.ctx** %2, align 8
  %17 = call i32 @player_start(%struct.ctx* %16)
  %18 = load %struct.ctx*, %struct.ctx** %2, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %5, align 8
  br label %21

21:                                               ; preds = %26, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.ctx*, %struct.ctx** %2, align 8
  %29 = getelementptr inbounds %struct.ctx, %struct.ctx* %28, i32 0, i32 0
  %30 = call i32 @vlc_player_CondWait(i32* %27, i32* %29)
  br label %21

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @vlc_player_Pause(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @vlc_player_ChangeRate(i32* %34, float 3.200000e+01)
  %36 = load %struct.ctx*, %struct.ctx** %2, align 8
  %37 = call i32 @test_prestop(%struct.ctx* %36)
  %38 = load %struct.ctx*, %struct.ctx** %2, align 8
  %39 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %40 = call i32 @wait_state(%struct.ctx* %38, i32 %39)
  %41 = load %struct.ctx*, %struct.ctx** %2, align 8
  %42 = call i32 @assert_normal_state(%struct.ctx* %41)
  %43 = load %struct.ctx*, %struct.ctx** %2, align 8
  %44 = call i32 @test_end(%struct.ctx* %43)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32 @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @player_set_next_mock_media(%struct.ctx*, i8*, %struct.media_params*) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32 @vlc_player_Pause(i32*) #1

declare dso_local i32 @vlc_player_ChangeRate(i32*, float) #1

declare dso_local i32 @test_prestop(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @assert_normal_state(%struct.ctx*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
