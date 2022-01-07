; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_destructor_AddJoinableInput.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_destructor_AddJoinableInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vlc_player_input = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_destructor_AddJoinableInput(%struct.TYPE_6__* %0, %struct.vlc_player_input* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.vlc_player_input*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.vlc_player_input* %1, %struct.vlc_player_input** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %9 = call i64 @vlc_list_HasInput(i32* %7, %struct.vlc_player_input* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %13 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %12, i32 0, i32 1
  %14 = call i32 @vlc_list_remove(i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %17 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %25 = call i32 @vlc_player_destructor_AddInput(%struct.TYPE_6__* %23, %struct.vlc_player_input* %24)
  ret void
}

declare dso_local i64 @vlc_list_HasInput(i32*, %struct.vlc_player_input*) #1

declare dso_local i32 @vlc_list_remove(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_destructor_AddInput(%struct.TYPE_6__*, %struct.vlc_player_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
