; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderSetCcState.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderSetCcState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.decoder_owner = type { i32, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__**, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not create decoder\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Streaming / Transcoding failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"VLC could not open the decoder module.\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_DecoderSetCcState(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.decoder_owner*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__, align 4
  %13 = alloca %struct.decoder_owner*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_23__* %15)
  store %struct.decoder_owner* %16, %struct.decoder_owner** %10, align 8
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @input_DecoderHasCCChanFlag(%struct.decoder_owner* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %5, align 4
  br label %129

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %99

27:                                               ; preds = %24
  %28 = load i32, i32* @SPU_ES, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @es_format_Init(%struct.TYPE_22__* %12, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = call i32 @VLC_OBJECT(%struct.TYPE_23__* %43)
  %45 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %46 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %52 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_23__* @input_DecoderNew(i32 %44, %struct.TYPE_22__* %12, i32 %47, i32 %50, i32 %53, i32 0, i32* null, i32* null)
  store %struct.TYPE_23__* %54, %struct.TYPE_23__** %11, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %27
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %59 = call i32 @msg_Err(%struct.TYPE_23__* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @vlc_dialog_display_error(%struct.TYPE_23__* %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %5, align 4
  br label %129

65:                                               ; preds = %27
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = call i32 @DecoderUnsupportedCodec(%struct.TYPE_23__* %71, %struct.TYPE_22__* %12, i32 1)
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %74 = call i32 @input_DecoderDelete(%struct.TYPE_23__* %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %5, align 4
  br label %129

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %79 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_23__* %78)
  store %struct.decoder_owner* %79, %struct.decoder_owner** %13, align 8
  %80 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %81 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.decoder_owner*, %struct.decoder_owner** %13, align 8
  %84 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %86 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %85, i32 0, i32 0
  %87 = call i32 @vlc_mutex_lock(i32* %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %89 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %90 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %92, i64 %94
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %95, align 8
  %96 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %97 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %96, i32 0, i32 0
  %98 = call i32 @vlc_mutex_unlock(i32* %97)
  br label %127

99:                                               ; preds = %24
  %100 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %101 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %100, i32 0, i32 0
  %102 = call i32 @vlc_mutex_lock(i32* %101)
  %103 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %104 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %106, i64 %108
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %14, align 8
  %111 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %112 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %114, i64 %116
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %117, align 8
  %118 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %119 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %118, i32 0, i32 0
  %120 = call i32 @vlc_mutex_unlock(i32* %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %122 = icmp ne %struct.TYPE_23__* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %99
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %125 = call i32 @input_DecoderDelete(%struct.TYPE_23__* %124)
  br label %126

126:                                              ; preds = %123, %99
  br label %127

127:                                              ; preds = %126, %77
  %128 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %70, %57, %22
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_23__*) #1

declare dso_local i32 @input_DecoderHasCCChanFlag(%struct.decoder_owner*, i32, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_22__*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @input_DecoderNew(i32, %struct.TYPE_22__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_23__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_23__*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @DecoderUnsupportedCodec(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @input_DecoderDelete(%struct.TYPE_23__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
