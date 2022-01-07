; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_GetLayoutDescription.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_GetLayoutDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }

@kAudioChannelLayoutTag_UseChannelBitmap = common dso_local global i64 0, align 8
@kAudioFormatProperty_ChannelLayoutForBitmap = common dso_local global i32 0, align 4
@kAudioFormatProperty_ChannelLayoutForTag = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"insufficient number of output channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, %struct.TYPE_7__*)* @GetLayoutDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @GetLayoutDescription(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @kAudioChannelLayoutTag_UseChannelBitmap, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForBitmap, align 4
  store i32 %18, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %8, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForTag, align 4
  store i32 %23, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = bitcast i64* %25 to i8*
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @AudioFormatGetPropertyInfo(i32 %28, i32 %29, i8* %30, i32* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @noErr, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.TYPE_7__* @malloc(i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = icmp eq %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = call i64 @AudioFormatGetProperty(i32 %43, i32 %44, i8* %45, i32* %9, %struct.TYPE_7__* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @noErr, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51, %42
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @msg_Err(i32* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = call i32 @free(%struct.TYPE_7__* %59)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %3, align 8
  br label %63

63:                                               ; preds = %61, %56, %41, %35
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local i64 @AudioFormatGetPropertyInfo(i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @AudioFormatGetProperty(i32, i32, i8*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
