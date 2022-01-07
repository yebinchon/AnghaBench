; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_decoder_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_decoder_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.input_decoder_callbacks = type { i32 }
%struct.decoder_owner = type { i32, i32, i32*, i32, %struct.TYPE_14__ }

@.str = private unnamed_addr constant [11 x i8] c"packetizer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"could not create %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Streaming / Transcoding failed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"VLC could not open the %s module.\00", align 1
@UNKNOWN_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_THREAD_PRIORITY_AUDIO = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_VIDEO = common dso_local global i32 0, align 4
@DecoderThread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot spawn decoder thread\00", align 1
@VIDEO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_13__*, i32*, i32*, i32*, i32, %struct.input_decoder_callbacks*, i8*)* @decoder_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @decoder_New(i32* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3, i32* %4, i32 %5, %struct.input_decoder_callbacks* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.input_decoder_callbacks*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.decoder_owner*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.input_decoder_callbacks* %6, %struct.input_decoder_callbacks** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = call i8* @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %28

26:                                               ; preds = %8
  %27 = call i8* @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  store i8* %29, i8** %18, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.input_decoder_callbacks*, %struct.input_decoder_callbacks** %16, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = call %struct.decoder_owner* @CreateDecoder(i32* %30, %struct.TYPE_13__* %31, i32* %32, i32* %33, i32* %34, i32 %35, %struct.input_decoder_callbacks* %36, i8* %37)
  store %struct.decoder_owner* %38, %struct.decoder_owner** %20, align 8
  %39 = load %struct.decoder_owner*, %struct.decoder_owner** %20, align 8
  %40 = icmp eq %struct.decoder_owner* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load i32*, i32** %10, align 8
  %43 = bitcast i32* %42 to %struct.TYPE_14__*
  %44 = load i8*, i8** %18, align 8
  %45 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @vlc_gettext(i8* %49)
  %51 = call i32 @vlc_dialog_display_error(i32* %46, i32 %47, i32 %48, i32 %50)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %103

52:                                               ; preds = %28
  %53 = load %struct.decoder_owner*, %struct.decoder_owner** %20, align 8
  %54 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %53, i32 0, i32 4
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %21, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @DecoderUnsupportedCodec(%struct.TYPE_14__* %60, %struct.TYPE_13__* %61, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %68 = call i32 @DeleteDecoder(%struct.TYPE_14__* %67)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %103

69:                                               ; preds = %52
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UNKNOWN_ES, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUDIO_ES, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* @VLC_THREAD_PRIORITY_AUDIO, align 4
  store i32 %85, i32* %19, align 4
  br label %88

86:                                               ; preds = %69
  %87 = load i32, i32* @VLC_THREAD_PRIORITY_VIDEO, align 4
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = load %struct.decoder_owner*, %struct.decoder_owner** %20, align 8
  %90 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %89, i32 0, i32 1
  %91 = load i32, i32* @DecoderThread, align 4
  %92 = load %struct.decoder_owner*, %struct.decoder_owner** %20, align 8
  %93 = load i32, i32* %19, align 4
  %94 = call i64 @vlc_clone(i32* %90, i32 %91, %struct.decoder_owner* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %98 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %100 = call i32 @DeleteDecoder(%struct.TYPE_14__* %99)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %103

101:                                              ; preds = %88
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %9, align 8
  br label %103

103:                                              ; preds = %101, %96, %59, %41
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %104
}

declare dso_local i8* @N_(i8*) #1

declare dso_local %struct.decoder_owner* @CreateDecoder(i32*, %struct.TYPE_13__*, i32*, i32*, i32*, i32, %struct.input_decoder_callbacks*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @vlc_dialog_display_error(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_gettext(i8*) #1

declare dso_local i32 @DecoderUnsupportedCodec(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @DeleteDecoder(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.decoder_owner*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
