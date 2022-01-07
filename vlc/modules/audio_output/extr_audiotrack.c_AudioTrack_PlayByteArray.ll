; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_PlayByteArray.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_PlayByteArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"audiotrack position is ahead. Should NOT happen\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Force write. It may block...\00", align 1
@write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i64, i64, i32)* @AudioTrack_PlayByteArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AudioTrack_PlayByteArray(i32* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = call i64 @AudioTrack_getPlaybackHeadPosition(i32* %19, %struct.TYPE_11__* %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = call i32 @msg_Err(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  store i32 0, i32* %6, align 4
  br label %80

41:                                               ; preds = %5
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %15, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = call i32 @msg_Warn(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %15, align 8
  br label %60

52:                                               ; preds = %41
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %80

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @BYTES_TO_FRAMES(i64 %66)
  %68 = call i64 @__MIN(i64 %65, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @FRAMES_TO_BYTES(i64 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* @write, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @JNI_AT_CALL_INT(i32 %71, i32 %76, i64 %77, i64 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %60, %58, %34
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @AudioTrack_getPlaybackHeadPosition(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @__MIN(i64, i32) #1

declare dso_local i32 @BYTES_TO_FRAMES(i64) #1

declare dso_local i64 @FRAMES_TO_BYTES(i64) #1

declare dso_local i32 @JNI_AT_CALL_INT(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
