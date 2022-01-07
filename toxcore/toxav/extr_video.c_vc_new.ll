; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Allocation failed! Application might misbehave!\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create recursive mutex!\00", align 1
@VIDEO_DECODE_BUFFER_SIZE = common dso_local global i32 0, align 4
@VIDEO_CODEC_DECODER_INTERFACE = common dso_local global i32 0, align 4
@VPX_CODEC_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Init video_decoder failed: %s\00", align 1
@VIDEO_CODEC_ENCODER_INTERFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get config: %s\00", align 1
@VPX_RC_ONE_PASS = common dso_local global i32 0, align 4
@VPX_KF_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize encoder: %s\00", align 1
@VP8E_SET_CPUUSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to set encoder control setting: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @vc_new(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = call %struct.TYPE_11__* @calloc(i32 56, i32 1)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %135

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @create_recursive_mutex(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = call i32 @free(%struct.TYPE_11__* %26)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %135

28:                                               ; preds = %18
  %29 = load i32, i32* @VIDEO_DECODE_BUFFER_SIZE, align 4
  %30 = call i32 @rb_new(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = icmp ne i32 %30, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %124

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VIDEO_CODEC_DECODER_INTERFACE, align 4
  %40 = call i32 @vpx_codec_dec_init(i32 %38, i32 %39, i32* null, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @VPX_CODEC_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @vpx_codec_err_to_string(i32 %45)
  %47 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %124

48:                                               ; preds = %35
  %49 = load i32, i32* @VIDEO_CODEC_ENCODER_INTERFACE, align 4
  %50 = call i32 @vpx_codec_enc_config_default(i32 %49, %struct.TYPE_10__* %12, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @VPX_CODEC_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @vpx_codec_err_to_string(i32 %55)
  %57 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %119

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 500000, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 800, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store i32 600, i32* %61, align 8
  %62 = load i32, i32* @VPX_RC_ONE_PASS, align 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 48, i32* %66, align 4
  %67 = load i32, i32* @VPX_KF_AUTO, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @VIDEO_CODEC_ENCODER_INTERFACE, align 4
  %73 = call i32 @vpx_codec_enc_init(i32 %71, i32 %72, %struct.TYPE_10__* %12, i32 0)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @VPX_CODEC_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %58
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @vpx_codec_err_to_string(i32 %78)
  %80 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %119

81:                                               ; preds = %58
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VP8E_SET_CPUUSED, align 4
  %86 = call i32 @vpx_codec_control(i32 %84, i32 %85, i32 8)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @VPX_CODEC_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @vpx_codec_err_to_string(i32 %91)
  %93 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vpx_codec_destroy(i32 %96)
  br label %119

98:                                               ; preds = %81
  %99 = call i32 (...) @current_time_monotonic()
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 60, i32* %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32* %104, i32** %107, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %5, align 8
  br label %135

119:                                              ; preds = %90, %77, %54
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @vpx_codec_destroy(i32 %122)
  br label %124

124:                                              ; preds = %119, %44, %34
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @pthread_mutex_destroy(i32 %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rb_kill(i32 %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = call i32 @free(%struct.TYPE_11__* %133)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %135

135:                                              ; preds = %124, %98, %24, %16
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %136
}

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i64 @create_recursive_mutex(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @rb_new(i32) #1

declare dso_local i32 @vpx_codec_dec_init(i32, i32, i32*, i32) #1

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #1

declare dso_local i32 @vpx_codec_err_to_string(i32) #1

declare dso_local i32 @vpx_codec_enc_config_default(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @vpx_codec_enc_init(i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @vpx_codec_control(i32, i32, i32) #1

declare dso_local i32 @vpx_codec_destroy(i32) #1

declare dso_local i32 @current_time_monotonic(...) #1

declare dso_local i32 @pthread_mutex_destroy(i32) #1

declare dso_local i32 @rb_kill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
