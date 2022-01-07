; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_slaves.c_media_parse_sync.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_slaves.c_media_parse_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libvlc_MediaParsedChanged = common dso_local global i32 0, align 4
@finished_event = common dso_local global i32 0, align 4
@libvlc_media_parse_local = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @media_parse_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_parse_sync(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32 @vlc_sem_init(i32* %3, i32 0)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @libvlc_media_event_manager(i32* %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @libvlc_MediaParsedChanged, align 4
  %11 = load i32, i32* @finished_event, align 4
  %12 = call i32 @libvlc_event_attach(i32* %9, i32 %10, i32 %11, i32* %3)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @libvlc_media_parse_local, align 4
  %15 = call i32 @libvlc_media_parse_with_options(i32* %13, i32 %14, i32 -1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 @vlc_sem_wait(i32* %3)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @libvlc_MediaParsedChanged, align 4
  %23 = load i32, i32* @finished_event, align 4
  %24 = call i32 @libvlc_event_detach(i32* %21, i32 %22, i32 %23, i32* %3)
  %25 = call i32 @vlc_sem_destroy(i32* %3)
  ret void
}

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32* @libvlc_media_event_manager(i32*) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @libvlc_media_parse_with_options(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @libvlc_event_detach(i32*, i32, i32, i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
