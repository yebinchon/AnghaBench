; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_encode_avframe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_encode_avframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot send one frame to encoder %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot encode one frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_13__*, i32*)* @encode_avframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_avframe(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 @av_init_packet(%struct.TYPE_14__* %8)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @avcodec_send_frame(%struct.TYPE_15__* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = call i32 @AVERROR(i32 %26)
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32* null, i32** %4, align 8
  br label %71

33:                                               ; preds = %24, %21, %3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = call i32 @avcodec_receive_packet(%struct.TYPE_15__* %36, %struct.TYPE_14__* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = call i32 @AVERROR(i32 %42)
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %71

48:                                               ; preds = %40, %33
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %50, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = call i32* @vlc_av_packet_Wrap(%struct.TYPE_14__* %8, i32 %57, %struct.TYPE_15__* %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = call i32 @av_packet_unref(%struct.TYPE_14__* %8)
  store i32* null, i32** %4, align 8
  br label %71

69:                                               ; preds = %48
  %70 = load i32*, i32** %10, align 8
  store i32* %70, i32** %4, align 8
  br label %71

71:                                               ; preds = %69, %67, %45, %29
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i32 @av_init_packet(%struct.TYPE_14__*) #1

declare dso_local i32 @avcodec_send_frame(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

declare dso_local i32 @avcodec_receive_packet(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32* @vlc_av_packet_Wrap(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
