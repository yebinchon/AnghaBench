; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_next_media.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_next_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.media_params = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"next_media\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"media2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"media3\00", align 1
@__const.test_next_media.media_names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_next_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next_media(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.media_params, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %9 = call i32 @test_log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([3 x i8*]* @__const.test_next_media.media_names to i8*), i64 24, i1 false)
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %12 = call i64 @ARRAY_SIZE(i8** %11)
  store i64 %12, i64* %4, align 8
  %13 = call i32 @VLC_TICK_FROM_MS(i32 100)
  %14 = call i32 @DEFAULT_MEDIA_PARAMS(i32 %13)
  %15 = getelementptr inbounds %struct.media_params, %struct.media_params* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %26, %1
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.ctx*, %struct.ctx** %2, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @player_set_next_mock_media(%struct.ctx* %21, i8* %24, %struct.media_params* %5)
  br label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.ctx*, %struct.ctx** %2, align 8
  %31 = call i32 @player_set_rate(%struct.ctx* %30, float 4.000000e+00)
  %32 = load %struct.ctx*, %struct.ctx** %2, align 8
  %33 = call i32 @player_start(%struct.ctx* %32)
  %34 = load %struct.ctx*, %struct.ctx** %2, align 8
  %35 = call i32 @test_prestop(%struct.ctx* %34)
  %36 = load %struct.ctx*, %struct.ctx** %2, align 8
  %37 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %38 = call i32 @wait_state(%struct.ctx* %36, i32 %37)
  %39 = load %struct.ctx*, %struct.ctx** %2, align 8
  %40 = call i32 @assert_normal_state(%struct.ctx* %39)
  %41 = load %struct.ctx*, %struct.ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %7, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.ctx*, %struct.ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ctx, %struct.ctx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %76, %29
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.ctx*, %struct.ctx** %2, align 8
  %61 = getelementptr inbounds %struct.ctx, %struct.ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @assert_media_name(i32 %71, i8* %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.ctx*, %struct.ctx** %2, align 8
  %81 = call i32 @test_end(%struct.ctx* %80)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @DEFAULT_MEDIA_PARAMS(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @player_set_next_mock_media(%struct.ctx*, i8*, %struct.media_params*) #1

declare dso_local i32 @player_set_rate(%struct.ctx*, float) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @test_prestop(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @assert_normal_state(%struct.ctx*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_media_name(i32, i8*) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
