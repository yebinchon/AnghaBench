; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_unknown_uri.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_unknown_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"unknown_uri\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unknownuri://foo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_STARTED = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@VLC_PLAYER_ERROR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_unknown_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unknown_uri(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %8 = call i32 @test_log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ctx*, %struct.ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = call i32* @input_item_New(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @vlc_player_SetCurrentMedia(i32* %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VLC_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.ctx*, %struct.ctx** %2, align 8
  %25 = getelementptr inbounds %struct.ctx, %struct.ctx* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.ctx*, %struct.ctx** %2, align 8
  %28 = getelementptr inbounds %struct.ctx, %struct.ctx* %27, i32 0, i32 1
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @vlc_vector_push(i32* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.ctx*, %struct.ctx** %2, align 8
  %34 = call i32 @player_start(%struct.ctx* %33)
  %35 = load %struct.ctx*, %struct.ctx** %2, align 8
  %36 = load i32, i32* @VLC_PLAYER_STATE_STARTED, align 4
  %37 = call i32 @wait_state(%struct.ctx* %35, i32 %36)
  %38 = load %struct.ctx*, %struct.ctx** %2, align 8
  %39 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %40 = call i32 @wait_state(%struct.ctx* %38, i32 %39)
  %41 = load %struct.ctx*, %struct.ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VLC_PLAYER_ERROR_NONE, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.ctx*, %struct.ctx** %2, align 8
  %60 = call i32 @test_end(%struct.ctx* %59)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_SetCurrentMedia(i32*, i32*) #1

declare dso_local i32 @vlc_vector_push(i32*, i32*) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
