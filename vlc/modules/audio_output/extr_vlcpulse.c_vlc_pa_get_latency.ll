; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_vlcpulse.c_vlc_pa_get_latency.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_vlcpulse.c_vlc_pa_get_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"no timing infos\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"write index corrupt\00", align 1
@PA_ERR_NODATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_pa_get_latency(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.anon, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @pa_stream_get_sample_spec(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_3__* @pa_stream_get_timing_info(i32* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @msg_Dbg(i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @msg_Dbg(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @pa_bytes_to_usec(i64 %35, i32* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @pa_stream_get_time(i32* %38, i64* %11)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @pa_context_errno(i32* %42)
  %44 = load i64, i64* @PA_ERR_NODATA, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @vlc_pa_error(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %32
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub nsw i64 %53, %54
  %56 = bitcast %union.anon* %12 to i64*
  store i64 %55, i64* %56, align 8
  %57 = bitcast %union.anon* %12 to i32*
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %50, %28, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @pa_stream_get_sample_spec(i32*) #1

declare dso_local %struct.TYPE_3__* @pa_stream_get_timing_info(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i64 @pa_bytes_to_usec(i64, i32*) #1

declare dso_local i64 @pa_stream_get_time(i32*, i64*) #1

declare dso_local i64 @pa_context_errno(i32*) #1

declare dso_local i32 @vlc_pa_error(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
