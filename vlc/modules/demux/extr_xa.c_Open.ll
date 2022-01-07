; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xa.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xa.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"XAI\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"XAJ\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"XA\00\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@HEADER_LENGTH = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_ADPCM_XA_EA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"assuming EA ADPCM audio codec\00", align 1
@FRAME_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"fourcc: %4.4s, channels: %d, freq: %d Hz, bitrate: %dKo/s, blockalign: %d\00", align 1
@VLC_TICK_0 = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vlc_stream_Peek(i32 %13, i32** %5, i32 10)
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %196

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @memcmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @memcmp(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @memcmp(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %2, align 4
  br label %196

32:                                               ; preds = %26, %22, %18
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = call i32 @GetWLE(i32* %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %2, align 4
  br label %196

39:                                               ; preds = %32
  %40 = load i32*, i32** %3, align 8
  %41 = call %struct.TYPE_15__* @vlc_obj_malloc(i32* %40, i32 32)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %6, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = icmp eq %struct.TYPE_15__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %196

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @HEADER_LENGTH, align 8
  %54 = call i64 @vlc_stream_Read(i32 %52, %struct.TYPE_12__* %7, i64 %53)
  %55 = load i64, i64* @HEADER_LENGTH, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %2, align 4
  br label %196

59:                                               ; preds = %49
  %60 = load i32, i32* @AUDIO_ES, align 4
  %61 = load i32, i32* @VLC_CODEC_ADPCM_XA_EA, align 4
  %62 = call i32 @es_format_Init(%struct.TYPE_13__* %8, i32 %60, i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %66 = call i32 @GetDWLE(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %70 = call i32 @GetWLE(i32* %69)
  %71 = mul nsw i32 15, %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @FRAME_LENGTH, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %78 = call i32 @GetWLE(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %87 = call i32 @GetWLE(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = mul nsw i32 %96, 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %97, %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 15
  %106 = sdiv i32 %105, 56
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FRAME_LENGTH, align 4
  %113 = mul nsw i32 %112, 20
  %114 = sdiv i32 %111, %113
  %115 = add nsw i32 %114, 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %129 = bitcast i32* %128 to i8*
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 8192
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %127, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* %129, i32 %132, i32 %135, i32 %138, i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %59
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 16
  br i1 %156, label %157, label %159

157:                                              ; preds = %152, %147, %59
  %158 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %158, i32* %2, align 4
  br label %196

159:                                              ; preds = %152
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32* @es_out_Add(i32 %162, %struct.TYPE_13__* %8)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 5
  store i32* %163, i32** %165, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  %170 = zext i1 %169 to i32
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %159
  %174 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %174, i32* %2, align 4
  br label %196

175:                                              ; preds = %159
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @date_Init(i32* %177, i32 %180, i32 1)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 4
  %184 = load i32, i32* @VLC_TICK_0, align 4
  %185 = call i32 @date_Set(i32* %183, i32 %184)
  %186 = load i32, i32* @Demux, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @Control, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %194, align 8
  %195 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %175, %173, %157, %57, %47, %37, %30, %16
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GetWLE(i32*) #1

declare dso_local %struct.TYPE_15__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_stream_Read(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @GetDWLE(i32*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
