; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_GetTime.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_GetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vlc_player_input* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_input_GetTime(%struct.vlc_player_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  %6 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %7 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.vlc_player_input*, %struct.vlc_player_input** %11, align 8
  %13 = icmp eq %struct.vlc_player_input* %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = call i32 (...) @vlc_tick_now()
  %17 = call i64 @vlc_player_GetTimerPoint(%struct.TYPE_3__* %15, i32 %16, i32* %5, i32* null)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %14, %1
  %22 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %23 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @vlc_player_GetTimerPoint(%struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i32 @vlc_tick_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
