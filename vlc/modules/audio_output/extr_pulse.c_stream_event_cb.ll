; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_stream_event_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_stream_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PA_STREAM_EVENT_REQUEST_CORK = common dso_local global i32 0, align 4
@PA_STREAM_EVENT_REQUEST_UNCORK = common dso_local global i32 0, align 4
@PA_STREAM_EVENT_FORMAT_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"format lost\00", align 1
@AOUT_RESTART_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unhandled stream event \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i8*)* @stream_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_event_cb(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @PA_STREAM_EVENT_REQUEST_CORK, align 4
  %14 = call i32 @strcmp(i8* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @aout_PolicyReport(i32* %17, i32 1)
  br label %44

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PA_STREAM_EVENT_REQUEST_UNCORK, align 4
  %22 = call i32 @strcmp(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @aout_PolicyReport(i32* %25, i32 0)
  br label %43

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @PA_STREAM_EVENT_FORMAT_LOST, align 4
  %30 = call i32 @strcmp(i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @msg_Dbg(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %37 = call i32 @aout_RestartRequest(i32* %35, i32 %36)
  br label %42

38:                                               ; preds = %27
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @msg_Warn(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  ret void
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @aout_PolicyReport(i32*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @aout_RestartRequest(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
