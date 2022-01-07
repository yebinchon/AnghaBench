; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_audio.c_transcode_encoder_audio_test.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_audio.c_transcode_encoder_audio_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_23__ }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@AOUT_CHANS_STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"cannot find audio encoder (module:%s fourcc:%4.4s). Take a look few lines earlier to see possible reason.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_encoder_audio_test(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_22__* @sout_EncoderCreate(i32* %15)
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %12, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %18 = icmp ne %struct.TYPE_22__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %6, align 4
  br label %139

21:                                               ; preds = %5
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i32, i32* @AUDIO_ES, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @es_format_Init(%struct.TYPE_19__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_23__* %34 to i8*
  %38 = bitcast %struct.TYPE_23__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* @AUDIO_ES, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @es_format_Init(%struct.TYPE_19__* %40, i32 %41, i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %13, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %53 = call i64 @encoder_audio_configure(%struct.TYPE_20__* %49, %struct.TYPE_23__* %51, %struct.TYPE_22__* %52, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %21
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = call i32 @es_format_Clean(%struct.TYPE_19__* %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = call i32 @es_format_Clean(%struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %63 = call i32 @vlc_object_delete(%struct.TYPE_22__* %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %6, align 4
  br label %139

65:                                               ; preds = %21
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  store i32 2, i32* %77, align 4
  %78 = load i32, i32* @AOUT_CHANS_STEREO, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %65
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32* @module_need(%struct.TYPE_22__* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %85, i32 1)
  store i32* %86, i32** %14, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %81
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  br label %100

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i8* [ %98, %95 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %99 ]
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = bitcast i32* %103 to i8*
  %105 = call i32 @msg_Err(i32* %90, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i8* %101, i8* %104)
  br label %110

106:                                              ; preds = %81
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @module_unneed(%struct.TYPE_22__* %107, i32* %108)
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = call i32 @es_format_Copy(%struct.TYPE_21__* %119, %struct.TYPE_19__* %121)
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = call i32 @es_format_Clean(%struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = call i32 @es_format_Clean(%struct.TYPE_19__* %127)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %130 = call i32 @vlc_object_delete(%struct.TYPE_22__* %129)
  %131 = load i32*, i32** %14, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %110
  %134 = load i32, i32* @VLC_SUCCESS, align 4
  br label %137

135:                                              ; preds = %110
  %136 = load i32, i32* @VLC_EGENERIC, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %55, %19
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_22__* @sout_EncoderCreate(i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_19__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @encoder_audio_configure(%struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_19__*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_22__*) #1

declare dso_local i32* @module_need(%struct.TYPE_22__*, i8*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
