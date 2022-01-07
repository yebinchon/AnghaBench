; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_StreamChunkFind.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_StreamChunkFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot get packet header\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"don't seem to find any data...\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @AVI_StreamChunkFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVI_StreamChunkFind(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  store i16 0, i16* %8, align 2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 12
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @vlc_stream_Seek(i32 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %3, align 4
  br label %141

33:                                               ; preds = %22
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i64 @AVI_PacketNext(%struct.TYPE_14__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %3, align 4
  br label %141

39:                                               ; preds = %33
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 12
  %48 = call i64 @vlc_stream_Seek(i32 %43, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %3, align 4
  br label %141

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %140, %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = call i64 @AVI_PacketGetHeader(%struct.TYPE_14__* %55, %struct.TYPE_17__* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = call i32 @msg_Warn(%struct.TYPE_14__* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %3, align 4
  br label %141

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AUDIO_ES, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VIDEO_ES, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %74, %62
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = call i64 @AVI_PacketNext(%struct.TYPE_14__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %3, align 4
  br label %141

85:                                               ; preds = %79
  %86 = load i16, i16* %8, align 2
  %87 = add i16 %86, 1
  store i16 %87, i16* %8, align 2
  %88 = icmp ne i16 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = call i32 @msg_Warn(%struct.TYPE_14__* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  br label %140

93:                                               ; preds = %74, %69
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %96, i64 %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @AVI_GetKeyFlag(i32 %107, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = call i32 @avi_index_Append(i32* %122, i64* %124, %struct.TYPE_18__* %10)
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %93
  %132 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %132, i32* %3, align 4
  br label %141

133:                                              ; preds = %93
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = call i64 @AVI_PacketNext(%struct.TYPE_14__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %138, i32* %3, align 4
  br label %141

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %92
  br label %54

141:                                              ; preds = %137, %131, %83, %58, %50, %37, %31
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local i64 @AVI_PacketNext(%struct.TYPE_14__*) #1

declare dso_local i64 @AVI_PacketGetHeader(%struct.TYPE_14__*, %struct.TYPE_17__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @AVI_GetKeyFlag(i32, i32) #1

declare dso_local i32 @avi_index_Append(i32*, i64*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
