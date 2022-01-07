; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetSignal.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { float, float }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_GetSignal(i32* %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.vlc_player_input*, align 8
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %9 = load float*, float** %6, align 8
  %10 = icmp ne float* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load float*, float** %7, align 8
  %13 = icmp ne float* %12, null
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %18)
  store %struct.vlc_player_input* %19, %struct.vlc_player_input** %8, align 8
  %20 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %21 = icmp ne %struct.vlc_player_input* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %24 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = fcmp oge float %25, 0.000000e+00
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %29 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = fcmp oge float %30, 0.000000e+00
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %34 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %6, align 8
  store float %35, float* %36, align 4
  %37 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %38 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %7, align 8
  store float %39, float* %40, align 4
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %27, %22, %14
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
