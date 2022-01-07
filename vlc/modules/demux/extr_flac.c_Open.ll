; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64, i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__**, i64, %struct.TYPE_15__**, %struct.TYPE_15__**, i32*, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"audio/flac\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"this doesn't look like a flac stream, continuing anyway\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_FLAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"flac\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"attachment://%s\00", align 1
@vlc_meta_ArtworkURL = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vlc_stream_Peek(i32 %13, float** %6, i32 4)
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %191

18:                                               ; preds = %1
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = fcmp une float %21, 1.020000e+02
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load float*, float** %6, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 7.600000e+01
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = fcmp une float %31, 9.700000e+01
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load float*, float** %6, align 8
  %35 = getelementptr inbounds float, float* %34, i64 3
  %36 = load float, float* %35, align 4
  %37 = fcmp une float %36, 6.700000e+01
  br i1 %37, label %38, label %53

38:                                               ; preds = %33, %28, %23, %18
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @demux_IsContentType(%struct.TYPE_12__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %49, i32* %2, align 4
  br label %191

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_12__* %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %33
  %54 = call %struct.TYPE_13__* @malloc(i32 128)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %5, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = icmp eq %struct.TYPE_13__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %61, i32* %2, align 4
  br label %191

62:                                               ; preds = %53
  %63 = load i32, i32* @Demux, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @Control, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 16
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 7
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 8
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 15
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @VLC_TICK_INVALID, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 13
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 12
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %95, align 8
  %97 = call i32 @TAB_INIT(i64 %93, %struct.TYPE_15__** %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 9
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %102, align 8
  %104 = call i32 @TAB_INIT(i64 %100, %struct.TYPE_15__** %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 11
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %109, align 8
  %111 = call i32 @TAB_INIT(i64 %107, %struct.TYPE_15__** %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 10
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @AUDIO_ES, align 4
  %117 = load i32, i32* @VLC_CODEC_FLAC, align 4
  %118 = call i32 @es_format_Init(i32* %7, i32 %116, i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = call i64 @ParseHeaders(%struct.TYPE_12__* %119, i32* %7)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %62
  br label %187

123:                                              ; preds = %62
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = call %struct.TYPE_14__* @demux_PacketizerNew(%struct.TYPE_12__* %124, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 7
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = icmp ne %struct.TYPE_14__* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %187

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %133
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = call i32* (...) @vlc_meta_New()
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 8
  store i32* %147, i32** %149, align 8
  br label %150

150:                                              ; preds = %146, %141
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 9
  %154 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %154, i64 %157
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @snprintf(i8* %151, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %168 = call i32 @vlc_meta_Set(i32* %165, i32 %166, i8* %167)
  br label %169

169:                                              ; preds = %150, %133
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = call i32* @es_out_Add(i32 %172, i32* %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 6
  store i32* %177, i32** %179, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %169
  br label %187

185:                                              ; preds = %169
  %186 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %186, i32* %2, align 4
  br label %191

187:                                              ; preds = %184, %132, %122
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @Close(i32* %188)
  %190 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %185, %60, %48, %16
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @vlc_stream_Peek(i32, float**, i32) #1

declare dso_local i32 @demux_IsContentType(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TAB_INIT(i64, %struct.TYPE_15__**) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i64 @ParseHeaders(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_14__* @demux_PacketizerNew(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #1

declare dso_local i32* @es_out_Add(i32, i32*) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
