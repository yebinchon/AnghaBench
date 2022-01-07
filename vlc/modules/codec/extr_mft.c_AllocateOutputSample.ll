; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_AllocateOutputSample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_AllocateOutputSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (i64, i32**)*, i32 (i64, i64, i32**)*, i32 (i32**)* }
%struct.TYPE_12__ = type { i32, i64, i64 }

@MFT_OUTPUT_STREAM_PROVIDES_SAMPLES = common dso_local global i32 0, align 4
@MFT_OUTPUT_STREAM_CAN_PROVIDE_SAMPLES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@MFT_OUTPUT_STREAM_WHOLE_SAMPLES = common dso_local global i64 0, align 8
@MFT_OUTPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER = common dso_local global i64 0, align 8
@MFT_OUTPUT_STREAM_FIXED_SAMPLE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error in AllocateOutputSample()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i32**)* @AllocateOutputSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateOutputSample(%struct.TYPE_10__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load i32**, i32*** %7, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @IMFTransform_GetOutputStreamInfo(i32 %25, i64 %26, %struct.TYPE_12__* %12)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %113

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MFT_OUTPUT_STREAM_PROVIDES_SAMPLES, align 4
  %36 = load i32, i32* @MFT_OUTPUT_STREAM_CAN_PROVIDE_SAMPLES, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %123

42:                                               ; preds = %32
  store i64 0, i64* %13, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VIDEO_ES, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i64, i64* @MFT_OUTPUT_STREAM_WHOLE_SAMPLES, align 8
  %51 = load i64, i64* @MFT_OUTPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @MFT_OUTPUT_STREAM_FIXED_SAMPLE_SIZE, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* %13, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %49, %42
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %13, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %113

66:                                               ; preds = %57
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32 (i32**)*, i32 (i32**)** %68, align 8
  %70 = call i32 %69(i32** %11)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @FAILED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %113

75:                                               ; preds = %66
  store i32* null, i32** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32 (i64, i64, i32**)*, i32 (i64, i64, i32**)** %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub nsw i64 %87, 1
  %89 = call i32 %85(i64 %86, i64 %88, i32** %14)
  store i32 %89, i32* %10, align 4
  br label %96

90:                                               ; preds = %75
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32 (i64, i32**)*, i32 (i64, i32**)** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32 %93(i64 %94, i32** %14)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %113

101:                                              ; preds = %96
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @IMFSample_AddBuffer(i32* %102, i32* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i64 @FAILED(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %113

109:                                              ; preds = %101
  %110 = load i32*, i32** %11, align 8
  %111 = load i32**, i32*** %7, align 8
  store i32* %110, i32** %111, align 8
  %112 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %112, i32* %4, align 4
  br label %123

113:                                              ; preds = %108, %100, %74, %65, %31
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = call i32 @msg_Err(%struct.TYPE_10__* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %116 = load i32*, i32** %11, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @IMFSample_Release(i32* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %109, %40
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @IMFTransform_GetOutputStreamInfo(i32, i64, %struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMFSample_AddBuffer(i32*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @IMFSample_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
