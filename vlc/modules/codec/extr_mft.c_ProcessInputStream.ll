; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_ProcessInputStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_ProcessInputStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@VLC_CODEC_H264 = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error in ProcessInputStream()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.TYPE_12__*)* @ProcessInputStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessInputStream(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  store i32* null, i32** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @AllocateInputSample(%struct.TYPE_10__* %17, i32 %18, i32** %10, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %121

25:                                               ; preds = %3
  store i32* null, i32** %11, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @IMFSample_GetBufferByIndex(i32* %26, i32 0, i32** %11)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %121

32:                                               ; preds = %25
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @IMFMediaBuffer_Lock(i32* %33, i32** %12, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %121

39:                                               ; preds = %32
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32* %40, i32 %43, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VLC_CODEC_H264, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @h264_AVC_to_AnnexB(i32* %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %54, %39
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @IMFMediaBuffer_Unlock(i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @FAILED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %121

70:                                               ; preds = %63
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IMFMediaBuffer_SetCurrentLength(i32* %71, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %121

80:                                               ; preds = %70
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VLC_TICK_INVALID, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i64 [ %89, %86 ], [ %93, %90 ]
  store i64 %95, i64* %13, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @MSFTIME_FROM_VLC_TICK(i64 %97)
  %99 = call i32 @IMFSample_SetSampleTime(i32* %96, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %121

104:                                              ; preds = %94
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @IMFTransform_ProcessInput(i32 %107, i32 %108, i32* %109, i32 0)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %121

115:                                              ; preds = %104
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @IMFMediaBuffer_Release(i32* %116)
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @IMFSample_Release(i32* %118)
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %120, i32* %4, align 4
  br label %131

121:                                              ; preds = %114, %103, %79, %69, %38, %31, %24
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = call i32 @msg_Err(%struct.TYPE_10__* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %124 = load i32*, i32** %10, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @IMFSample_Release(i32* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %115
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @AllocateInputSample(%struct.TYPE_10__*, i32, i32**, i32) #1

declare dso_local i32 @IMFSample_GetBufferByIndex(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMFMediaBuffer_Lock(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @h264_AVC_to_AnnexB(i32*, i32, i32) #1

declare dso_local i32 @IMFMediaBuffer_Unlock(i32*) #1

declare dso_local i32 @IMFMediaBuffer_SetCurrentLength(i32*, i32) #1

declare dso_local i32 @IMFSample_SetSampleTime(i32*, i32) #1

declare dso_local i32 @MSFTIME_FROM_VLC_TICK(i64) #1

declare dso_local i32 @IMFTransform_ProcessInput(i32, i32, i32*, i32) #1

declare dso_local i32 @IMFMediaBuffer_Release(i32*) #1

declare dso_local i32 @IMFSample_Release(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
