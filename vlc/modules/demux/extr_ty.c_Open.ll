; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i32, i32**, i8*, i8*, i32, i64, i64, i64, i32, i32, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@TIVO_PES_FILEID = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".ty\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".ty+\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"this does not look like a TY file, continuing anyway...\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"valid TY stream detected\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@TIVO_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@TIVO_AUDIO_UNKNOWN = common dso_local global i64 0, align 8
@TIVO_SERIES_UNKNOWN = common dso_local global i32 0, align 4
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"No master chunk found; seeking will be limited.\00", align 1
@TIVO_AUDIO_MPEG = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGA = common dso_local global i32 0, align 4
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@TY_ES_GROUP = common dso_local global i8* null, align 8
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vlc_stream_Peek(i32 %13, i32** %7, i32 12)
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %189

18:                                               ; preds = %1
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @U32_AT(i32* %19)
  %21 = load i32, i32* @TIVO_PES_FILEID, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = call i32 @U32_AT(i32* %25)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = call i32 @U32_AT(i32* %30)
  %32 = load i32, i32* @CHUNK_SIZE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28, %23, %18
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32 @demux_IsPathExtension(%struct.TYPE_15__* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = call i32 @demux_IsPathExtension(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %49, i32* %2, align 4
  br label %189

50:                                               ; preds = %44, %40, %34
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 @msg_Warn(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %28
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @msg_Dbg(%struct.TYPE_15__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %56 = call %struct.TYPE_16__* @malloc(i32 112)
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %5, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = icmp eq %struct.TYPE_16__* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %63, i32* %2, align 4
  br label %189

64:                                               ; preds = %53
  %65 = load i32, i32* @Demux, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @Control, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = call i32 @memset(%struct.TYPE_16__* %74, i32 0, i32 112)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @U32_AT(i32* %78)
  %80 = load i32, i32* @TIVO_PES_FILEID, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 16
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @stream_Size(i32 %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 14
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @TIVO_TYPE_UNKNOWN, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 13
  store i32 %97, i32* %99, align 4
  %100 = load i64, i64* @TIVO_AUDIO_UNKNOWN, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @TIVO_SERIES_UNKNOWN, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 12
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 11
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 10
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 9
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 8
  %118 = call i32 @vlc_stream_Control(i32 %114, i32 %115, i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = call i64 @probe_stream(%struct.TYPE_15__* %119)
  %121 = load i64, i64* @VLC_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %64
  %124 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %124, i32* %2, align 4
  br label %189

125:                                              ; preds = %64
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = call i32 @msg_Warn(%struct.TYPE_15__* %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TIVO_AUDIO_MPEG, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @AUDIO_ES, align 4
  %141 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %142 = call i32 @es_format_Init(%struct.TYPE_14__* %6, i32 %140, i32 %141)
  br label %147

143:                                              ; preds = %133
  %144 = load i32, i32* @AUDIO_ES, align 4
  %145 = load i32, i32* @VLC_CODEC_A52, align 4
  %146 = call i32 @es_format_Init(%struct.TYPE_14__* %6, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %139
  %148 = load i8*, i8** @TY_ES_GROUP, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @es_out_Add(i32 %152, %struct.TYPE_14__* %6)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @VIDEO_ES, align 4
  %157 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %158 = call i32 @es_format_Init(%struct.TYPE_14__* %6, i32 %156, i32 %157)
  %159 = load i8*, i8** @TY_ES_GROUP, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @es_out_Add(i32 %163, %struct.TYPE_14__* %6)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %177, %147
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 5
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  store i32* null, i32** %176, align 8
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %167

180:                                              ; preds = %167
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  %183 = call i32 @cc_Init(i32* %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = call i32 @XdsInit(i32* %185)
  %187 = load i64, i64* @VLC_SUCCESS, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %180, %123, %62, %48, %16
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @U32_AT(i32*) #1

declare dso_local i32 @demux_IsPathExtension(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @stream_Size(i32) #1

declare dso_local i32 @vlc_stream_Control(i32, i32, i32*) #1

declare dso_local i64 @probe_stream(%struct.TYPE_15__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @es_out_Add(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @cc_Init(i32*) #1

declare dso_local i32 @XdsInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
