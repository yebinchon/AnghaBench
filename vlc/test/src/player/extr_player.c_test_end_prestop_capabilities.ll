; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_capabilities.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_7__, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@VLC_PLAYER_CAP_SEEK = common dso_local global i32 0, align 4
@VLC_PLAYER_CAP_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end_prestop_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_prestop_capabilities(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %7 = load %struct.ctx*, %struct.ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ctx, %struct.ctx* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.ctx*, %struct.ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ctx, %struct.ctx* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ctx*, %struct.ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ctx, %struct.ctx* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ctx*, %struct.ctx** %2, align 8
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %22, i32 0, i32 1
  %24 = call i32 @vlc_player_CondWait(i32* %21, i32* %23)
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @VEC_LAST(%struct.TYPE_8__* %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @vlc_player_CanSeek(i32* %31)
  %33 = load %struct.ctx*, %struct.ctx** %2, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VLC_PLAYER_CAP_SEEK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = load %struct.ctx*, %struct.ctx** %2, align 8
  %48 = getelementptr inbounds %struct.ctx, %struct.ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br label %52

52:                                               ; preds = %38, %25
  %53 = phi i1 [ false, %25 ], [ %51, %38 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @vlc_player_CanPause(i32* %56)
  %58 = load %struct.ctx*, %struct.ctx** %2, align 8
  %59 = getelementptr inbounds %struct.ctx, %struct.ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VLC_PLAYER_CAP_PAUSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = load %struct.ctx*, %struct.ctx** %2, align 8
  %73 = getelementptr inbounds %struct.ctx, %struct.ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br label %77

77:                                               ; preds = %63, %52
  %78 = phi i1 [ false, %52 ], [ %76, %63 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  ret void
}

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32 @VEC_LAST(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_player_CanSeek(i32*) #1

declare dso_local i64 @vlc_player_CanPause(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
