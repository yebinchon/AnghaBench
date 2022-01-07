; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ModuleThread_QueueVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ModuleThread_QueueVideo(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.decoder_owner*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.decoder_owner* @dec_get_owner(i32* %9)
  store %struct.decoder_owner* %10, %struct.decoder_owner** %5, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ModuleThread_PlayVideo(%struct.decoder_owner* %11, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ModuleThread_UpdateStatVideo(%struct.decoder_owner* %14, i32 %18)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @ModuleThread_PlayVideo(%struct.decoder_owner*, i32*) #1

declare dso_local i32 @ModuleThread_UpdateStatVideo(%struct.decoder_owner*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
