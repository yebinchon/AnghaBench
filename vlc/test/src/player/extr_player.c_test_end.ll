; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VLC_PLAYER_STATE_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %5 = load %struct.ctx*, %struct.ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ctx, %struct.ctx* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.ctx*, %struct.ctx** %2, align 8
  %9 = getelementptr inbounds %struct.ctx, %struct.ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i64 @VEC_LAST(i32* %10)
  %12 = load i64, i64* @VLC_PLAYER_STATE_STOPPED, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @vlc_player_Stop(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @vlc_player_GetCurrentMedia(i32* %17)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.ctx*, %struct.ctx** %2, align 8
  %26 = load i64, i64* @VLC_PLAYER_STATE_STOPPED, align 8
  %27 = call i32 @wait_state(%struct.ctx* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.ctx*, %struct.ctx** %2, align 8
  %30 = getelementptr inbounds %struct.ctx, %struct.ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load %struct.ctx*, %struct.ctx** %2, align 8
  %36 = call i32 @test_end_poststop_state(%struct.ctx* %35)
  %37 = load %struct.ctx*, %struct.ctx** %2, align 8
  %38 = call i32 @test_end_poststop_tracks(%struct.ctx* %37)
  %39 = load %struct.ctx*, %struct.ctx** %2, align 8
  %40 = call i32 @test_end_poststop_programs(%struct.ctx* %39)
  %41 = load %struct.ctx*, %struct.ctx** %2, align 8
  %42 = call i32 @test_end_poststop_titles(%struct.ctx* %41)
  %43 = load %struct.ctx*, %struct.ctx** %2, align 8
  %44 = call i32 @test_end_poststop_vouts(%struct.ctx* %43)
  br label %45

45:                                               ; preds = %34, %28
  %46 = load %struct.ctx*, %struct.ctx** %2, align 8
  %47 = call i32 @test_end_poststop_medias(%struct.ctx* %46)
  %48 = load %struct.ctx*, %struct.ctx** %2, align 8
  %49 = call i32 @player_set_rate(%struct.ctx* %48, float 1.000000e+00)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @vlc_player_SetStartPaused(i32* %50, i32 0)
  %52 = load %struct.ctx*, %struct.ctx** %2, align 8
  %53 = call i32 @ctx_reset(%struct.ctx* %52)
  ret void
}

declare dso_local i64 @VEC_LAST(i32*) #1

declare dso_local i32 @vlc_player_Stop(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i64) #1

declare dso_local i32 @test_end_poststop_state(%struct.ctx*) #1

declare dso_local i32 @test_end_poststop_tracks(%struct.ctx*) #1

declare dso_local i32 @test_end_poststop_programs(%struct.ctx*) #1

declare dso_local i32 @test_end_poststop_titles(%struct.ctx*) #1

declare dso_local i32 @test_end_poststop_vouts(%struct.ctx*) #1

declare dso_local i32 @test_end_poststop_medias(%struct.ctx*) #1

declare dso_local i32 @player_set_rate(%struct.ctx*, float) #1

declare dso_local i32 @vlc_player_SetStartPaused(i32*, i32) #1

declare dso_local i32 @ctx_reset(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
