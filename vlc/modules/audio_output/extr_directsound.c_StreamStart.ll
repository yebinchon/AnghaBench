; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_StreamStart.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_StreamStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_BLOB = common dso_local global i32 0, align 4
@IID_IDirectSound = common dso_local global i32 0, align 4
@StreamTimeGet = common dso_local global i32 0, align 4
@StreamPlay = common dso_local global i32 0, align 4
@StreamPause = common dso_local global i32 0, align 4
@StreamFlush = common dso_local global i32 0, align 4
@StreamStop = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32*)* @StreamStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StreamStart(%struct.TYPE_15__* %0, i32* noalias %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = call %struct.TYPE_16__* @calloc(i32 1, i32 8)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 12, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %27, align 4
  %30 = call i32 @PropVariantInit(%struct.TYPE_17__* %12)
  %31 = load i32, i32* @VT_BLOB, align 4
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 12, i32* %34, align 8
  %35 = bitcast %struct.TYPE_18__* %11 to i32*
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = call i32 @aout_stream_Activate(%struct.TYPE_15__* %38, i32* @IID_IDirectSound, %struct.TYPE_17__* %12, i8** %9)
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %21
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = call i32 @aout_stream_Activate(%struct.TYPE_15__* %41, i32* @IID_IDirectSound, %struct.TYPE_17__* null, i8** %9)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %81

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = call i32 @VLC_OBJECT(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @Start(i32 %53, %struct.TYPE_16__* %54, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %81

61:                                               ; preds = %48
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %64, align 8
  %65 = load i32, i32* @StreamTimeGet, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @StreamPlay, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @StreamPause, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @StreamFlush, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @StreamStop, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %60, %47
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = call i32 @free(%struct.TYPE_16__* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %61, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_17__*) #1

declare dso_local i32 @aout_stream_Activate(%struct.TYPE_15__*, i32*, %struct.TYPE_17__*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @Start(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
