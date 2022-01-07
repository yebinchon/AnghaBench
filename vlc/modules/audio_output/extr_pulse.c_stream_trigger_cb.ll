; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_stream_trigger_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_stream_trigger_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"starting deferred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.timeval*, i8*)* @stream_trigger_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_trigger_cb(i32* %0, i32* %1, %struct.timeval* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = call i32 @msg_Dbg(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @vlc_pa_rttime_free(i32 %27, i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = call i32 @stream_start_now(i32 %36, %struct.TYPE_5__* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.timeval*, %struct.timeval** %7, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_pa_rttime_free(i32, i32*) #1

declare dso_local i32 @stream_start_now(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
