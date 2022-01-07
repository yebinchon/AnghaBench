; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaProbe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaProbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@WAVE_FORMAT_MPEG = common dso_local global i32 0, align 4
@WAVE_FORMAT_MPEGLAYER3 = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mp3\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mpga\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @MpgaProbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MpgaProbe(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* @WAVE_FORMAT_MPEG, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @WAVE_FORMAT_MPEGLAYER3, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @WAVE_FORMAT_UNKNOWN, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 @demux_IsPathExtension(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i64 @demux_IsForced(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i64 @demux_IsForced(%struct.TYPE_6__* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i1 [ true, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vlc_stream_Tell(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %38 = call i64 @WavSkipHeader(%struct.TYPE_6__* %36, i32* %11, i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %3, align 4
  br label %123

45:                                               ; preds = %40
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %3, align 4
  br label %123

47:                                               ; preds = %29
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 4
  %53 = call i64 @vlc_stream_Peek(i32 %50, i32** %10, i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %47
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %3, align 4
  br label %123

64:                                               ; preds = %56
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i64 @MpgaCheckSync(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %117, label %71

71:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %3, align 4
  br label %123

79:                                               ; preds = %74, %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 8096
  %85 = call i64 @vlc_stream_Peek(i32 %82, i32** %10, i32 %84)
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %105, %79
  %87 = load i64, i64* %12, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 4
  %92 = load i64, i64* %12, align 8
  %93 = trunc i64 %92 to i32
  %94 = icmp slt i32 %91, %93
  br label %95

95:                                               ; preds = %89, %86
  %96 = phi i1 [ false, %86 ], [ %94, %89 ]
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i64 @MpgaCheckSync(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %13, align 4
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %86

108:                                              ; preds = %104, %95
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %64
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %114, %77, %62, %45, %43
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @demux_IsPathExtension(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @demux_IsForced(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @vlc_stream_Tell(i32) #1

declare dso_local i64 @WavSkipHeader(%struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i64 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @MpgaCheckSync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
