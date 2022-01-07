; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_toxav_many_test.c_setup_av_instance.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_toxav_many_test.c_setup_av_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOXAV_ERR_NEW_OK = common dso_local global i64 0, align 8
@t_toxav_call_cb = common dso_local global i32 0, align 4
@t_toxav_call_state_cb = common dso_local global i32 0, align 4
@t_toxav_receive_video_frame_cb = common dso_local global i32 0, align 4
@t_toxav_receive_audio_frame_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup_av_instance(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @toxav_new(i32* %7, i64* %5)
  store i32* %8, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TOXAV_ERR_NEW_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ck_assert(i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @t_toxav_call_cb, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @toxav_callback_call(i32* %14, i32 %15, i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @t_toxav_call_state_cb, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @toxav_callback_call_state(i32* %18, i32 %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @t_toxav_receive_video_frame_cb, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @toxav_callback_video_receive_frame(i32* %22, i32 %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @t_toxav_receive_audio_frame_cb, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @toxav_callback_audio_receive_frame(i32* %26, i32 %27, i32* %28)
  %30 = load i32*, i32** %6, align 8
  ret i32* %30
}

declare dso_local i32* @toxav_new(i32*, i64*) #1

declare dso_local i32 @ck_assert(i32) #1

declare dso_local i32 @toxav_callback_call(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_call_state(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_video_receive_frame(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_audio_receive_frame(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
