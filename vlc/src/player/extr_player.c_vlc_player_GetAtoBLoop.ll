; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetAtoBLoop.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetAtoBLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float, i32, i32 }

@VLC_PLAYER_ABLOOP_NONE = common dso_local global i32 0, align 4
@VLC_PLAYER_ABLOOP_A = common dso_local global i32 0, align 4
@VLC_PLAYER_ABLOOP_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_GetAtoBLoop(i32* %0, i32* %1, float* %2, i32* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.vlc_player_input*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store float* %2, float** %9, align 8
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %13)
  store %struct.vlc_player_input* %14, %struct.vlc_player_input** %12, align 8
  %15 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %16 = icmp ne %struct.vlc_player_input* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @vlc_player_CanSeek(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %23 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21, %17, %5
  %30 = load i32, i32* @VLC_PLAYER_ABLOOP_NONE, align 4
  store i32 %30, i32* %6, align 4
  br label %87

31:                                               ; preds = %21
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %36 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %31
  %43 = load float*, float** %9, align 8
  %44 = icmp ne float* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %47 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %9, align 8
  store float %51, float* %52, align 4
  br label %53

53:                                               ; preds = %45, %42
  %54 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %55 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @VLC_PLAYER_ABLOOP_A, align 4
  store i32 %62, i32* %6, align 4
  br label %87

63:                                               ; preds = %53
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %68 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %63
  %75 = load float*, float** %11, align 8
  %76 = icmp ne float* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.vlc_player_input*, %struct.vlc_player_input** %12, align 8
  %79 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %11, align 8
  store float %83, float* %84, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* @VLC_PLAYER_ABLOOP_B, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %61, %29
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @vlc_player_CanSeek(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
