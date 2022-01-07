; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_gme.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_gme.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__*, i32, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32, i32, i32*, %struct.TYPE_23__**, i32, i32, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"detected file type %s\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@ReaderBlock = common dso_local global i32 0, align 4
@ReaderStream = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"track %u: %s %d ms\00", align 1
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %20 = call i64 @vlc_stream_GetSize(%struct.TYPE_28__* %19, i64* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %252

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @LONG_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %252

30:                                               ; preds = %24
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = call i32 @vlc_stream_Peek(%struct.TYPE_28__* %33, i32** %6, i32 4)
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %252

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @gme_identify_header(i32* %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %2, align 4
  br label %252

46:                                               ; preds = %38
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %48)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %54, align 8
  %56 = call %struct.TYPE_28__* @vlc_stream_Block(%struct.TYPE_28__* %55, i32 16777216)
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %8, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %58 = icmp eq %struct.TYPE_28__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %2, align 4
  br label %252

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %46
  %63 = call %struct.TYPE_27__* @malloc(i32 40)
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %9, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %65 = icmp eq %struct.TYPE_27__* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %70, i32* %2, align 4
  br label %252

71:                                               ; preds = %62
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @gme_identify_extension(i8* %72)
  %74 = load i32, i32* @RATE, align 4
  %75 = call i32* @gme_new_emu(i32 %73, i32 %74)
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %84 = call i32 @free(%struct.TYPE_27__* %83)
  %85 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %252

86:                                               ; preds = %71
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %88 = icmp ne %struct.TYPE_28__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ReaderBlock, align 4
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = call i32 @gme_load_custom(i32* %92, i32 %93, i64 %96, %struct.TYPE_28__* %97)
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %100 = call i32 @block_Release(%struct.TYPE_28__* %99)
  br label %111

101:                                              ; preds = %86
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @ReaderStream, align 4
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %108, align 8
  %110 = call i32 @gme_load_custom(i32* %104, i32 %105, i64 %106, %struct.TYPE_28__* %109)
  br label %111

111:                                              ; preds = %101, %89
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  %117 = call i32 @gme_start_track(i32* %114, i64 0)
  %118 = load i32, i32* @AUDIO_ES, align 4
  %119 = load i32, i32* @VLC_CODEC_S16N, align 4
  %120 = call i32 @es_format_Init(%struct.TYPE_25__* %10, i32 %118, i32 %119)
  %121 = load i32, i32* @RATE, align 4
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  store i32 4, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  store i32 4, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 3
  store i32 2, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 4
  store i32 4, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  store i32 16, i32* %133, align 4
  %134 = load i32, i32* @RATE, align 4
  %135 = mul nsw i32 %134, 4
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @es_out_Add(i32 %139, %struct.TYPE_25__* %10)
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 4
  %145 = load i32, i32* @RATE, align 4
  %146 = call i32 @date_Init(i32* %144, i32 %145, i32 1)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 4
  %149 = load i32, i32* @VLC_TICK_0, align 4
  %150 = call i32 @date_Set(i32* %148, i32 %149)
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @gme_track_count(i32* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call %struct.TYPE_23__** @vlc_alloc(i32 %155, i32 8)
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 3
  store %struct.TYPE_23__** %156, %struct.TYPE_23__*** %158, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %160, align 8
  %162 = icmp eq %struct.TYPE_23__** %161, null
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %166, %111
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %236, %167
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %239

175:                                              ; preds = %171
  %176 = call %struct.TYPE_23__* (...) @vlc_input_title_New()
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %13, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %180, i64 %182
  store %struct.TYPE_23__* %177, %struct.TYPE_23__** %183, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %185 = icmp eq %struct.TYPE_23__* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  br label %236

190:                                              ; preds = %175
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i64 @gme_track_info(i32* %193, %struct.TYPE_24__** %14, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %236

198:                                              ; preds = %190
  %199 = load i32*, i32** %3, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %200, i64* %203, i32 %206)
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, -1
  br i1 %211, label %212, label %219

212:                                              ; preds = %198
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @VLC_TICK_FROM_MS(i32 %215)
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %212, %198
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 1
  %229 = load i64*, i64** %228, align 8
  %230 = call i32 @strdup(i64* %229)
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %226, %219
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %235 = call i32 @gme_free_info(%struct.TYPE_24__* %234)
  br label %236

236:                                              ; preds = %233, %197, %189
  %237 = load i32, i32* %12, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %171

239:                                              ; preds = %171
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  store i32 0, i32* %241, align 4
  %242 = load i32, i32* @Demux, align 4
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @Control, align 4
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  store %struct.TYPE_27__* %248, %struct.TYPE_27__** %250, align 8
  %251 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %239, %82, %69, %59, %44, %36, %28, %22
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i64 @vlc_stream_GetSize(%struct.TYPE_28__*, i64*) #1

declare dso_local i32 @vlc_stream_Peek(%struct.TYPE_28__*, i32**, i32) #1

declare dso_local i8* @gme_identify_header(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_28__* @vlc_stream_Block(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @gme_new_emu(i32, i32) #1

declare dso_local i32 @gme_identify_extension(i8*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i32 @gme_load_custom(i32*, i32, i64, %struct.TYPE_28__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_28__*) #1

declare dso_local i32 @gme_start_track(i32*, i64) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i32 @gme_track_count(i32*) #1

declare dso_local %struct.TYPE_23__** @vlc_alloc(i32, i32) #1

declare dso_local %struct.TYPE_23__* @vlc_input_title_New(...) #1

declare dso_local i64 @gme_track_info(i32*, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @strdup(i64*) #1

declare dso_local i32 @gme_free_info(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
