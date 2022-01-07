; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderUnsupportedCodec.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderUnsupportedCodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@VLC_CODEC_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No description for this codec\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Codec `%4.4s' (%s) is not supported.\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Codec not supported\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"VLC could not decode the format \22%4.4s\22 (%s)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"could not identify codec\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Unidentified codec\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"VLC could not identify the audio or video codec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32)* @DecoderUnsupportedCodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderUnsupportedCodec(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VLC_CODEC_UNKNOWN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @vlc_fourcc_GetDescription(i32 %21, i64 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %18
  %33 = call i8* @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = bitcast i64* %37 to i8*
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32*, i8*, ...) @msg_Err(i32* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = bitcast i64* %45 to i8*
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i32*, i32, i32, ...) @vlc_dialog_display_error(i32* %41, i32 %42, i32 %43, i8* %46, i8* %47)
  br label %60

49:                                               ; preds = %13, %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 (i32*, i8*, ...) @msg_Err(i32* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 (i32*, i32, i32, ...) @vlc_dialog_display_error(i32* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %59, %34
  ret void
}

declare dso_local i8* @vlc_fourcc_GetDescription(i32, i64) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @vlc_dialog_display_error(i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
