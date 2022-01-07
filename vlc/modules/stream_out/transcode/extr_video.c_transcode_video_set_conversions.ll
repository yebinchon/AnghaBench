; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_set_conversions.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_set_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32* }

@transcode_filter_video_cbs = common dso_local global i32 0, align 4
@ORIENT_NORMAL = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"adding (scale %d,chroma %d, orient %d) converters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_18__**, %struct.TYPE_18__*, i32)* @transcode_video_set_conversions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcode_video_set_conversions(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__** %2, %struct.TYPE_18__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca i32**, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i32* @transcode_filter_video_cbs, i32** %22, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %159, %5
  %24 = load i32, i32* %13, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %162

26:                                               ; preds = %23
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br label %48

48:                                               ; preds = %37, %26
  %49 = phi i1 [ true, %26 ], [ %47, %37 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ORIENT_NORMAL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %48
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %48
  %73 = phi i1 [ false, %48 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %6, align 4
  br label %164

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %17, align 8
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %93, i32* %6, align 4
  br label %164

94:                                               ; preds = %89, %86, %82
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* @VIDEO_ES, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @es_format_Init(%struct.TYPE_18__* %18, i32 %98, i64 %102)
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = call i32 @video_format_ApplyRotation(%struct.TYPE_19__* %104, %struct.TYPE_19__* %106)
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %17, align 8
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @msg_Dbg(i32* %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  br label %122

119:                                              ; preds = %108
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32** [ %118, %116 ], [ %121, %119 ]
  store i32** %123, i32*** %19, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32* @filter_chain_NewVideo(i32* %124, i32 %127, %struct.TYPE_17__* %12)
  %129 = load i32**, i32*** %19, align 8
  store i32* %128, i32** %129, align 8
  %130 = load i32**, i32*** %19, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %134, i32* %6, align 4
  br label %164

135:                                              ; preds = %122
  %136 = load i32**, i32*** %19, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %141 = call i32 @filter_chain_Reset(i32* %137, %struct.TYPE_18__* %139, %struct.TYPE_18__* %140)
  %142 = load i32**, i32*** %19, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %145 = call i32 @filter_chain_AppendConverter(i32* %143, %struct.TYPE_18__* %144)
  %146 = load i32, i32* @VLC_SUCCESS, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %149, i32* %6, align 4
  br label %164

150:                                              ; preds = %135
  %151 = load i32**, i32*** %19, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = call %struct.TYPE_18__* @filter_chain_GetFmtOut(i32* %152)
  %154 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %154, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = call i32 @debug_format(i32* %155, %struct.TYPE_18__* %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %23

162:                                              ; preds = %23
  %163 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %162, %148, %133, %92, %80
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @es_format_Init(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @video_format_ApplyRotation(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @filter_chain_NewVideo(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @filter_chain_Reset(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @filter_chain_AppendConverter(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @filter_chain_GetFmtOut(i32*) #1

declare dso_local i32 @debug_format(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
