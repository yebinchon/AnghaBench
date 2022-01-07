; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_run_stream.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_run_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, i64, i64, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"H.264 decoder not found\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate codec context\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not open decoder\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not open recorder\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not start recorder\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not initialize parser\00", align 1
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"End of frames\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Finishing recording...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_stream(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.stream*
  store %struct.stream* %8, %struct.stream** %3, align 8
  %9 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %10 = call i32* @avcodec_find_decoder(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @LOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %153

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @avcodec_alloc_context3(i32* %16)
  %18 = load %struct.stream*, %struct.stream** %3, align 8
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.stream*, %struct.stream** %3, align 8
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 @LOGC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %153

26:                                               ; preds = %15
  %27 = load %struct.stream*, %struct.stream** %3, align 8
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.stream*, %struct.stream** %3, align 8
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @decoder_open(i64 %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = call i32 @LOGE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %149

40:                                               ; preds = %31, %26
  %41 = load %struct.stream*, %struct.stream** %3, align 8
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.stream*, %struct.stream** %3, align 8
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @recorder_open(i64 %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 @LOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %138

54:                                               ; preds = %45
  %55 = load %struct.stream*, %struct.stream** %3, align 8
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @recorder_start(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = call i32 @LOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %127

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %65 = call %struct.TYPE_3__* @av_parser_init(i32 %64)
  %66 = load %struct.stream*, %struct.stream** %3, align 8
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 3
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %67, align 8
  %68 = load %struct.stream*, %struct.stream** %3, align 8
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = icmp ne %struct.TYPE_3__* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = call i32 @LOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %111

74:                                               ; preds = %63
  %75 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %76 = load %struct.stream*, %struct.stream** %3, align 8
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %95, %74
  %83 = load %struct.stream*, %struct.stream** %3, align 8
  %84 = call i32 @stream_recv_packet(%struct.stream* %83, i32* %5)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %96

88:                                               ; preds = %82
  %89 = load %struct.stream*, %struct.stream** %3, align 8
  %90 = call i32 @stream_push_packet(%struct.stream* %89, i32* %5)
  store i32 %90, i32* %6, align 4
  %91 = call i32 @av_packet_unref(i32* %5)
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %96

95:                                               ; preds = %88
  br label %82

96:                                               ; preds = %94, %87
  %97 = call i32 @LOGD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %98 = load %struct.stream*, %struct.stream** %3, align 8
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.stream*, %struct.stream** %3, align 8
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 4
  %105 = call i32 @av_packet_unref(i32* %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.stream*, %struct.stream** %3, align 8
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @av_parser_close(%struct.TYPE_3__* %109)
  br label %111

111:                                              ; preds = %106, %72
  %112 = load %struct.stream*, %struct.stream** %3, align 8
  %113 = getelementptr inbounds %struct.stream, %struct.stream* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.stream*, %struct.stream** %3, align 8
  %118 = getelementptr inbounds %struct.stream, %struct.stream* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @recorder_stop(i64 %119)
  %121 = call i32 @LOGI(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.stream*, %struct.stream** %3, align 8
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @recorder_join(i64 %124)
  br label %126

126:                                              ; preds = %116, %111
  br label %127

127:                                              ; preds = %126, %60
  %128 = load %struct.stream*, %struct.stream** %3, align 8
  %129 = getelementptr inbounds %struct.stream, %struct.stream* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.stream*, %struct.stream** %3, align 8
  %134 = getelementptr inbounds %struct.stream, %struct.stream* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @recorder_close(i64 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %52
  %139 = load %struct.stream*, %struct.stream** %3, align 8
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.stream*, %struct.stream** %3, align 8
  %145 = getelementptr inbounds %struct.stream, %struct.stream* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @decoder_close(i64 %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %38
  %150 = load %struct.stream*, %struct.stream** %3, align 8
  %151 = getelementptr inbounds %struct.stream, %struct.stream* %150, i32 0, i32 0
  %152 = call i32 @avcodec_free_context(i32* %151)
  br label %153

153:                                              ; preds = %149, %24, %13
  %154 = call i32 (...) @notify_stopped()
  ret i32 0
}

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @LOGE(i8*) #1

declare dso_local i32 @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @LOGC(i8*) #1

declare dso_local i32 @decoder_open(i64, i32*) #1

declare dso_local i32 @recorder_open(i64, i32*) #1

declare dso_local i32 @recorder_start(i64) #1

declare dso_local %struct.TYPE_3__* @av_parser_init(i32) #1

declare dso_local i32 @stream_recv_packet(%struct.stream*, i32*) #1

declare dso_local i32 @stream_push_packet(%struct.stream*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @LOGD(i8*) #1

declare dso_local i32 @av_parser_close(%struct.TYPE_3__*) #1

declare dso_local i32 @recorder_stop(i64) #1

declare dso_local i32 @LOGI(i8*) #1

declare dso_local i32 @recorder_join(i64) #1

declare dso_local i32 @recorder_close(i64) #1

declare dso_local i32 @decoder_close(i64) #1

declare dso_local i32 @avcodec_free_context(i32*) #1

declare dso_local i32 @notify_stopped(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
