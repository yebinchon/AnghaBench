; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_alsa.c_Poll.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_alsa.c_Poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @Poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Poll(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @snd_pcm_poll_descriptors_count(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.pollfd, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_pcm_poll_descriptors(i32* %15, %struct.pollfd* %14, i32 %16)
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @vlc_restorecancel(i32 %19)
  br label %21

21:                                               ; preds = %25, %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @poll(%struct.pollfd* %14, i32 %22, i32 -1)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21

26:                                               ; preds = %21
  %27 = call i32 (...) @vlc_savecancel()
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @snd_pcm_poll_descriptors_revents(i32* %28, %struct.pollfd* %14, i32 %29, i16* %8)
  br label %31

31:                                               ; preds = %26
  %32 = load i16, i16* %8, align 2
  %33 = icmp ne i16 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %18, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

declare dso_local i32 @snd_pcm_poll_descriptors_count(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snd_pcm_poll_descriptors(i32*, %struct.pollfd*, i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @snd_pcm_poll_descriptors_revents(i32*, %struct.pollfd*, i32, i16*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
