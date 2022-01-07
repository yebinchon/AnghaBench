; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_transcode.c_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_transcode.c_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*)* @Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Send(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %78

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @sout_StreamIdSend(i32 %31, i64 %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %86

37:                                               ; preds = %23
  br label %78

38:                                               ; preds = %18
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %60 [
    i32 130, label %45
    i32 128, label %50
    i32 129, label %55
  ]

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @transcode_audio_process(%struct.TYPE_14__* %46, %struct.TYPE_15__* %47, i32* %48, i32** %9)
  store i32 %49, i32* %10, align 4
  br label %61

50:                                               ; preds = %38
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @transcode_video_process(%struct.TYPE_14__* %51, %struct.TYPE_15__* %52, i32* %53, i32** %9)
  store i32 %54, i32* %10, align 4
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @transcode_spu_process(%struct.TYPE_14__* %56, %struct.TYPE_15__* %57, i32* %58, i32** %9)
  store i32 %59, i32* %10, align 4
  br label %61

60:                                               ; preds = %38
  br label %78

61:                                               ; preds = %55, %50, %45
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @sout_StreamIdSend(i32 %67, i64 %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %64, %61
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %86

78:                                               ; preds = %60, %37, %17
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @block_Release(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %76, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @sout_StreamIdSend(i32, i64, i32*) #1

declare dso_local i32 @transcode_audio_process(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32**) #1

declare dso_local i32 @transcode_video_process(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32**) #1

declare dso_local i32 @transcode_spu_process(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32**) #1

declare dso_local i32 @block_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
