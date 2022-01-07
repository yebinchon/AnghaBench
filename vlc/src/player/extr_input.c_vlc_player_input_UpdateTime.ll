; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_UpdateTime.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_UpdateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*)* @vlc_player_input_UpdateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_UpdateTime(%struct.vlc_player_input* %0) #0 {
  %2 = alloca %struct.vlc_player_input*, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %2, align 8
  %3 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %12 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %20 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %21 = call i32 @vlc_player_input_GetTime(%struct.vlc_player_input* %20)
  %22 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %23 = call i32 @vlc_player_input_GetPos(%struct.vlc_player_input* %22)
  %24 = call i32 @vlc_player_input_HandleAtoBLoop(%struct.vlc_player_input* %19, i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %18, %10, %1
  ret void
}

declare dso_local i32 @vlc_player_input_HandleAtoBLoop(%struct.vlc_player_input*, i32, i32) #1

declare dso_local i32 @vlc_player_input_GetTime(%struct.vlc_player_input*) #1

declare dso_local i32 @vlc_player_input_GetPos(%struct.vlc_player_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
