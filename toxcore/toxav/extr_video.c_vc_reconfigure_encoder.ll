; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_reconfigure_encoder.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_reconfigure_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@VPX_CODEC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to set encoder control setting: %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Have to reinitialize vpx encoder on session %p\00", align 1
@VIDEO_CODEC_ENCODER_INTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to initialize encoder: %s\00", align 1
@VP8E_SET_CPUUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_reconfigure_encoder(%struct.TYPE_18__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %104

16:                                               ; preds = %4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = bitcast %struct.TYPE_16__* %10 to i8*
  %24 = bitcast %struct.TYPE_16__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %104

40:                                               ; preds = %34, %29, %16
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = call i32 @vpx_codec_enc_config_set(%struct.TYPE_17__* %55, %struct.TYPE_16__* %10)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @VPX_CODEC_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @vpx_codec_err_to_string(i32 %61)
  %63 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  br label %104

64:                                               ; preds = %50
  br label %103

65:                                               ; preds = %45, %40
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %66)
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @VIDEO_CODEC_ENCODER_INTERFACE, align 4
  %75 = call i32 @vpx_codec_enc_init(%struct.TYPE_17__* %12, i32 %74, %struct.TYPE_16__* %10, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @VPX_CODEC_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @vpx_codec_err_to_string(i32 %80)
  %82 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %5, align 4
  br label %104

83:                                               ; preds = %65
  %84 = load i32, i32* @VP8E_SET_CPUUSED, align 4
  %85 = call i32 @vpx_codec_control(%struct.TYPE_17__* %12, i32 %84, i32 8)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @VPX_CODEC_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @vpx_codec_err_to_string(i32 %90)
  %92 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = call i32 @vpx_codec_destroy(%struct.TYPE_17__* %12)
  store i32 -1, i32* %5, align 4
  br label %104

94:                                               ; preds = %83
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = call i32 @vpx_codec_destroy(%struct.TYPE_17__* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = call i32 @memcpy(%struct.TYPE_17__* %101, %struct.TYPE_17__* %12, i32 8)
  br label %103

103:                                              ; preds = %94, %64
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %89, %79, %60, %39, %15
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vpx_codec_enc_config_set(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #2

declare dso_local i32 @vpx_codec_err_to_string(i32) #2

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @vpx_codec_enc_init(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @vpx_codec_control(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @vpx_codec_destroy(%struct.TYPE_17__*) #2

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
