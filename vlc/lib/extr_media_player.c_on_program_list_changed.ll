; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_program_list_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_program_list_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@libvlc_MediaPlayerScrambledChanged = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.vlc_player_program*, i8*)* @on_program_list_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_program_list_changed(i32* %0, i32 %1, %struct.vlc_player_program* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_player_program*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.vlc_player_program*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vlc_player_program* %2, %struct.vlc_player_program** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.vlc_player_program*, %struct.vlc_player_program** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.vlc_player_program* @vlc_player_GetSelectedProgram(i32* %16)
  store %struct.vlc_player_program* %17, %struct.vlc_player_program** %10, align 8
  %18 = load %struct.vlc_player_program*, %struct.vlc_player_program** %10, align 8
  %19 = icmp ne %struct.vlc_player_program* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %33

21:                                               ; preds = %4
  %22 = load i32, i32* @libvlc_MediaPlayerScrambledChanged, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.vlc_player_program*, %struct.vlc_player_program** %10, align 8
  %25 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @libvlc_event_send(i32* %31, %struct.TYPE_9__* %11)
  br label %33

33:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.vlc_player_program* @vlc_player_GetSelectedProgram(i32*) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
