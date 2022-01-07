; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_player.c_pause_and_wait.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_player.c_pause_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libvlc_MediaPlayerPaused = common dso_local global i32 0, align 4
@on_event = common dso_local global i32 0, align 4
@libvlc_MediaPlayerEndReached = common dso_local global i32 0, align 4
@libvlc_Playing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Waiting for pause\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pause_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pause_and_wait(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @libvlc_media_player_event_manager(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = call i32 @vlc_sem_init(i32* %4, i32 0)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @libvlc_MediaPlayerPaused, align 4
  %11 = load i32, i32* @on_event, align 4
  %12 = call i32 @libvlc_event_attach(i32* %9, i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @libvlc_MediaPlayerEndReached, align 4
  %20 = load i32, i32* @on_event, align 4
  %21 = call i32 @libvlc_event_attach(i32* %18, i32 %19, i32 %20, i32* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @libvlc_media_player_set_pause(i32* %27, i32 1)
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @libvlc_media_player_get_state(i32* %29)
  %31 = load i64, i64* @libvlc_Playing, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = call i32 @test_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @vlc_sem_wait(i32* %4)
  br label %36

36:                                               ; preds = %33, %1
  %37 = call i32 @vlc_sem_destroy(i32* %4)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @libvlc_MediaPlayerPaused, align 4
  %40 = load i32, i32* @on_event, align 4
  %41 = call i32 @libvlc_event_detach(i32* %38, i32 %39, i32 %40, i32* %4)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @libvlc_MediaPlayerEndReached, align 4
  %44 = load i32, i32* @on_event, align 4
  %45 = call i32 @libvlc_event_detach(i32* %42, i32 %43, i32 %44, i32* %4)
  ret void
}

declare dso_local i32* @libvlc_media_player_event_manager(i32*) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @libvlc_media_player_set_pause(i32*, i32) #1

declare dso_local i64 @libvlc_media_player_get_state(i32*) #1

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @libvlc_event_detach(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
