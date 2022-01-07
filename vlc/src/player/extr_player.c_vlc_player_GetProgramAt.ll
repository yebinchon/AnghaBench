; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetProgramAt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetProgramAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32 }
%struct.vlc_player_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.vlc_player_program** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_program* @vlc_player_GetProgramAt(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.vlc_player_program*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vlc_player_input*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %7)
  store %struct.vlc_player_input* %8, %struct.vlc_player_input** %6, align 8
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %10 = icmp ne %struct.vlc_player_input* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.vlc_player_program* null, %struct.vlc_player_program** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %15 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %22 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.vlc_player_program**, %struct.vlc_player_program*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.vlc_player_program*, %struct.vlc_player_program** %24, i64 %25
  %27 = load %struct.vlc_player_program*, %struct.vlc_player_program** %26, align 8
  store %struct.vlc_player_program* %27, %struct.vlc_player_program** %3, align 8
  br label %28

28:                                               ; preds = %12, %11
  %29 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  ret %struct.vlc_player_program* %29
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
