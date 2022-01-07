; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_state_Save.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_state_Save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.vlc_playlist_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_playlist_state_Save(%struct.TYPE_3__* %0, %struct.vlc_playlist_state* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vlc_playlist_state*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.vlc_playlist_state* %1, %struct.vlc_playlist_state** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vlc_playlist_state*, %struct.vlc_playlist_state** %4, align 8
  %9 = getelementptr inbounds %struct.vlc_playlist_state, %struct.vlc_playlist_state* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vlc_playlist_state*, %struct.vlc_playlist_state** %4, align 8
  %14 = getelementptr inbounds %struct.vlc_playlist_state, %struct.vlc_playlist_state* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vlc_playlist_state*, %struct.vlc_playlist_state** %4, align 8
  %19 = getelementptr inbounds %struct.vlc_playlist_state, %struct.vlc_playlist_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
