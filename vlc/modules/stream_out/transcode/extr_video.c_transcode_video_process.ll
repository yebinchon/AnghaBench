; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_transcode_video_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_55__ = type { i32, i32, %struct.TYPE_49__*, i32*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_51__*, i64 (i32*, i32*, i32)*, i32, %struct.TYPE_45__, i32* }
%struct.TYPE_49__ = type { i8*, %struct.TYPE_53__, i32 }
%struct.TYPE_53__ = type { %struct.TYPE_48__, %struct.TYPE_52__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_51__ = type { i32 (%struct.TYPE_51__*, %struct.TYPE_58__*)*, i32, %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_45__ = type { i32, i32, i32 }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_56__ = type { %struct.TYPE_46__, %struct.TYPE_56__* }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_45__ }
%struct.TYPE_47__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32, i32 }

@BLOCK_FLAG_END_OF_SEQUENCE = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"aspect-ratio changed, reiniting. %i -> %i : %i -> %i.\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [106 x i8] c"cannot find video encoder (module:%s fourcc:%4.4s). Take a look few lines earlier to see possible reason.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"destination (after video filters) %ux%u\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"cannot output transcoded stream %4.4s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Drain/restart on EOS\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Flushing thread and waiting that\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Flushing done\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Flushing failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_video_process(i32* %0, %struct.TYPE_55__* %1, %struct.TYPE_58__* %2, %struct.TYPE_58__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_55__*, align 8
  %8 = alloca %struct.TYPE_58__*, align 8
  %9 = alloca %struct.TYPE_58__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_56__*, align 8
  %13 = alloca %struct.TYPE_56__*, align 8
  %14 = alloca %struct.TYPE_57__, align 4
  %15 = alloca %struct.TYPE_56__*, align 8
  %16 = alloca [3 x i32*], align 16
  %17 = alloca i64, align 8
  %18 = alloca [2 x i32*], align 16
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_58__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_55__* %1, %struct.TYPE_55__** %7, align 8
  store %struct.TYPE_58__* %2, %struct.TYPE_58__** %8, align 8
  store %struct.TYPE_58__** %3, %struct.TYPE_58__*** %9, align 8
  %21 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  store %struct.TYPE_58__* null, %struct.TYPE_58__** %21, align 8
  %22 = load %struct.TYPE_58__*, %struct.TYPE_58__** %8, align 8
  %23 = icmp ne %struct.TYPE_58__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.TYPE_58__*, %struct.TYPE_58__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i1 [ false, %4 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %34, i32 0, i32 9
  %36 = load %struct.TYPE_51__*, %struct.TYPE_51__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_51__*, %struct.TYPE_58__*)*, i32 (%struct.TYPE_51__*, %struct.TYPE_58__*)** %37, align 8
  %39 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_51__*, %struct.TYPE_51__** %40, align 8
  %42 = load %struct.TYPE_58__*, %struct.TYPE_58__** %8, align 8
  %43 = call i32 %38(%struct.TYPE_51__* %41, %struct.TYPE_58__* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @VLCDEC_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %5, align 4
  br label %545

49:                                               ; preds = %31
  %50 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %51 = call %struct.TYPE_56__* @transcode_dequeue_all_pics(%struct.TYPE_55__* %50)
  store %struct.TYPE_56__* %51, %struct.TYPE_56__** %12, align 8
  br label %52

52:                                               ; preds = %470, %49
  %53 = load %struct.TYPE_56__*, %struct.TYPE_56__** %12, align 8
  store %struct.TYPE_56__* %53, %struct.TYPE_56__** %13, align 8
  %54 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %55 = icmp ne %struct.TYPE_56__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_56__*, %struct.TYPE_56__** %58, align 8
  store %struct.TYPE_56__* %59, %struct.TYPE_56__** %12, align 8
  %60 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %60, i32 0, i32 1
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %61, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %69 = icmp ne %struct.TYPE_56__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %72 = call i32 @picture_Release(%struct.TYPE_56__* %71)
  br label %470

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %75 = icmp ne %struct.TYPE_56__* %74, null
  br i1 %75, label %76, label %314

76:                                               ; preds = %73
  %77 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @transcode_encoder_opened(i32 %79)
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %76
  %87 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %87, i32 0, i32 12
  %89 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %89, i32 0, i32 0
  %91 = call i32 @video_format_IsSimilar(%struct.TYPE_45__* %88, %struct.TYPE_46__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %314, label %93

93:                                               ; preds = %86, %76
  %94 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @transcode_encoder_opened(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %131, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %100, i32 0, i32 7
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %99
  %111 = phi i1 [ false, %99 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @VLC_OBJECT(i32* %114)
  %116 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_51__*, %struct.TYPE_51__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_49__*, %struct.TYPE_49__** %122, align 8
  %124 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %125 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %126 = call i32 @filtered_video_format(%struct.TYPE_55__* %124, %struct.TYPE_56__* %125)
  %127 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @transcode_encoder_video_configure(i32 %115, i32* %120, %struct.TYPE_49__* %123, i32 %126, i32 %129)
  br label %180

131:                                              ; preds = %93
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %133, i32 0, i32 12
  %135 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32*, i8*, ...) @msg_Info(i32* %132, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %140, i32 %144, i32 %148)
  %150 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %150, i32 0, i32 7
  %152 = call i32 @transcode_remove_filters(i32** %151)
  %153 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %153, i32 0, i32 6
  %155 = call i32 @transcode_remove_filters(i32** %154)
  %156 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %156, i32 0, i32 5
  %158 = call i32 @transcode_remove_filters(i32** %157)
  %159 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %159, i32 0, i32 4
  %161 = call i32 @transcode_remove_filters(i32** %160)
  %162 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %162, i32 0, i32 3
  %164 = call i32 @transcode_remove_filters(i32** %163)
  %165 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %165, i32 0, i32 13
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %131
  %170 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %170, i32 0, i32 13
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @filter_DeleteBlend(i32* %172)
  br label %174

174:                                              ; preds = %169, %131
  %175 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %175, i32 0, i32 13
  store i32* null, i32** %176, align 8
  %177 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %177, i32 0, i32 12
  %179 = call i32 @video_format_Clean(%struct.TYPE_45__* %178)
  br label %180

180:                                              ; preds = %174, %110
  %181 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %181, i32 0, i32 12
  %183 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %183, i32 0, i32 0
  %185 = call i32 @video_format_Copy(%struct.TYPE_45__* %182, %struct.TYPE_46__* %184)
  %186 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %187 = call i32 @transcode_video_filters_configured(%struct.TYPE_55__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %224, label %189

189:                                              ; preds = %180
  %190 = load i32, i32* @VIDEO_ES, align 4
  %191 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %191, i32 0, i32 12
  %193 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @es_format_Init(%struct.TYPE_57__* %14, i32 %190, i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %14, i32 0, i32 0
  %197 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %197, i32 0, i32 12
  %199 = bitcast %struct.TYPE_45__* %196 to i8*
  %200 = bitcast %struct.TYPE_45__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 12, i1 false)
  %201 = load i32*, i32** %6, align 8
  %202 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_49__*, %struct.TYPE_49__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.TYPE_47__* @transcode_encoder_format_in(i32 %216)
  %218 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %219 = call i64 @transcode_video_filters_init(i32* %201, i32 %204, i32 %213, %struct.TYPE_57__* %14, %struct.TYPE_47__* %217, %struct.TYPE_55__* %218)
  %220 = load i64, i64* @VLC_SUCCESS, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %189
  br label %461

223:                                              ; preds = %189
  br label %224

224:                                              ; preds = %223, %180
  %225 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @transcode_encoder_opened(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %263, label %230

230:                                              ; preds = %224
  %231 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_49__*, %struct.TYPE_49__** %235, align 8
  %237 = call i64 @transcode_encoder_open(i32 %233, %struct.TYPE_49__* %236)
  %238 = load i64, i64* @VLC_SUCCESS, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %230
  %241 = load i32*, i32** %6, align 8
  %242 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_49__*, %struct.TYPE_49__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_49__*, %struct.TYPE_49__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  br label %255

254:                                              ; preds = %240
  br label %255

255:                                              ; preds = %254, %248
  %256 = phi i8* [ %253, %248 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %254 ]
  %257 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_49__*, %struct.TYPE_49__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %259, i32 0, i32 2
  %261 = bitcast i32* %260 to i8*
  %262 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %241, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i8* %256, i8* %261)
  br label %461

263:                                              ; preds = %230, %224
  %264 = load i32*, i32** %6, align 8
  %265 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call %struct.TYPE_47__* @transcode_encoder_format_in(i32 %267)
  %269 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call %struct.TYPE_47__* @transcode_encoder_format_in(i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %271, i32 %278)
  %280 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %300, label %284

284:                                              ; preds = %263
  %285 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %285, i32 0, i32 10
  %287 = load i64 (i32*, i32*, i32)*, i64 (i32*, i32*, i32)** %286, align 8
  %288 = load i32*, i32** %6, align 8
  %289 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %289, i32 0, i32 9
  %291 = load %struct.TYPE_51__*, %struct.TYPE_51__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @transcode_encoder_format_out(i32 %295)
  %297 = call i64 %287(i32* %288, i32* %292, i32 %296)
  %298 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %298, i32 0, i32 8
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %284, %263
  %301 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %301, i32 0, i32 8
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %300
  %306 = load i32*, i32** %6, align 8
  %307 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_49__*, %struct.TYPE_49__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %309, i32 0, i32 2
  %311 = bitcast i32* %310 to i8*
  %312 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %306, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %311)
  br label %461

313:                                              ; preds = %300
  br label %314

314:                                              ; preds = %313, %86, %73
  %315 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  store %struct.TYPE_56__* %315, %struct.TYPE_56__** %15, align 8
  br label %316

316:                                              ; preds = %422, %314
  %317 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 0
  %318 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %318, i32 0, i32 7
  %320 = load i32*, i32** %319, align 8
  store i32* %320, i32** %317, align 8
  %321 = getelementptr inbounds i32*, i32** %317, i64 1
  %322 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %322, i32 0, i32 6
  %324 = load i32*, i32** %323, align 8
  store i32* %324, i32** %321, align 8
  %325 = getelementptr inbounds i32*, i32** %321, i64 1
  %326 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %326, i32 0, i32 5
  %328 = load i32*, i32** %327, align 8
  store i32* %328, i32** %325, align 8
  store i64 0, i64* %17, align 8
  br label %329

329:                                              ; preds = %351, %316
  %330 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %331 = icmp ne %struct.TYPE_56__* %330, null
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i64, i64* %17, align 8
  %334 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 0
  %335 = call i64 @ARRAY_SIZE(i32** %334)
  %336 = icmp ult i64 %333, %335
  br label %337

337:                                              ; preds = %332, %329
  %338 = phi i1 [ false, %329 ], [ %336, %332 ]
  br i1 %338, label %339, label %354

339:                                              ; preds = %337
  %340 = load i64, i64* %17, align 8
  %341 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  br label %351

345:                                              ; preds = %339
  %346 = load i64, i64* %17, align 8
  %347 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %350 = call %struct.TYPE_56__* @filter_chain_VideoFilter(i32* %348, %struct.TYPE_56__* %349)
  store %struct.TYPE_56__* %350, %struct.TYPE_56__** %15, align 8
  br label %351

351:                                              ; preds = %345, %344
  %352 = load i64, i64* %17, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %17, align 8
  br label %329

354:                                              ; preds = %337
  %355 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %356 = icmp ne %struct.TYPE_56__* %355, null
  br i1 %356, label %358, label %357

357:                                              ; preds = %354
  br label %423

358:                                              ; preds = %354
  br label %359

359:                                              ; preds = %420, %358
  %360 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %361 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  store i32* %363, i32** %360, align 8
  %364 = getelementptr inbounds i32*, i32** %360, i64 1
  %365 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %365, i32 0, i32 3
  %367 = load i32*, i32** %366, align 8
  store i32* %367, i32** %364, align 8
  store i64 0, i64* %19, align 8
  br label %368

368:                                              ; preds = %390, %359
  %369 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %370 = icmp ne %struct.TYPE_56__* %369, null
  br i1 %370, label %371, label %376

371:                                              ; preds = %368
  %372 = load i64, i64* %19, align 8
  %373 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %374 = call i64 @ARRAY_SIZE(i32** %373)
  %375 = icmp ult i64 %372, %374
  br label %376

376:                                              ; preds = %371, %368
  %377 = phi i1 [ false, %368 ], [ %375, %371 ]
  br i1 %377, label %378, label %393

378:                                              ; preds = %376
  %379 = load i64, i64* %19, align 8
  %380 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = icmp ne i32* %381, null
  br i1 %382, label %384, label %383

383:                                              ; preds = %378
  br label %390

384:                                              ; preds = %378
  %385 = load i64, i64* %19, align 8
  %386 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %389 = call %struct.TYPE_56__* @filter_chain_VideoFilter(i32* %387, %struct.TYPE_56__* %388)
  store %struct.TYPE_56__* %389, %struct.TYPE_56__** %15, align 8
  br label %390

390:                                              ; preds = %384, %383
  %391 = load i64, i64* %19, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %19, align 8
  br label %368

393:                                              ; preds = %376
  %394 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %395 = icmp ne %struct.TYPE_56__* %394, null
  br i1 %395, label %397, label %396

396:                                              ; preds = %393
  br label %421

397:                                              ; preds = %393
  %398 = load i32*, i32** %6, align 8
  %399 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %400 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %401 = call %struct.TYPE_56__* @RenderSubpictures(i32* %398, %struct.TYPE_55__* %399, %struct.TYPE_56__* %400)
  store %struct.TYPE_56__* %401, %struct.TYPE_56__** %15, align 8
  %402 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %403 = icmp ne %struct.TYPE_56__* %402, null
  br i1 %403, label %404, label %419

404:                                              ; preds = %397
  %405 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %409 = call %struct.TYPE_58__* @transcode_encoder_encode(i32 %407, %struct.TYPE_56__* %408)
  store %struct.TYPE_58__* %409, %struct.TYPE_58__** %20, align 8
  %410 = load %struct.TYPE_58__*, %struct.TYPE_58__** %20, align 8
  %411 = icmp ne %struct.TYPE_58__* %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %404
  %413 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %414 = load %struct.TYPE_58__*, %struct.TYPE_58__** %20, align 8
  %415 = call i32 @block_ChainAppend(%struct.TYPE_58__** %413, %struct.TYPE_58__* %414)
  br label %416

416:                                              ; preds = %412, %404
  %417 = load %struct.TYPE_56__*, %struct.TYPE_56__** %15, align 8
  %418 = call i32 @picture_Release(%struct.TYPE_56__* %417)
  br label %419

419:                                              ; preds = %416, %397
  br label %420

420:                                              ; preds = %419
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %15, align 8
  br label %359

421:                                              ; preds = %396
  br label %422

422:                                              ; preds = %421
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %15, align 8
  br label %316

423:                                              ; preds = %357
  %424 = load i32, i32* %10, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %460

426:                                              ; preds = %423
  %427 = load i32*, i32** %6, align 8
  %428 = call i32 (i32*, i8*, ...) @msg_Info(i32* %427, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %429 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %433 = call i64 @transcode_encoder_drain(i32 %431, %struct.TYPE_58__** %432)
  %434 = load i64, i64* @VLC_SUCCESS, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %426
  br label %461

437:                                              ; preds = %426
  %438 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @transcode_encoder_close(i32 %440)
  %442 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %442, i32 0, i32 7
  %444 = call i32 @transcode_remove_filters(i32** %443)
  %445 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %445, i32 0, i32 6
  %447 = call i32 @transcode_remove_filters(i32** %446)
  %448 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %448, i32 0, i32 5
  %450 = call i32 @transcode_remove_filters(i32** %449)
  %451 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %451, i32 0, i32 4
  %453 = call i32 @transcode_remove_filters(i32** %452)
  %454 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %454, i32 0, i32 3
  %456 = call i32 @transcode_remove_filters(i32** %455)
  %457 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %458 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %459 = call i32 @tag_last_block_with_flag(%struct.TYPE_58__** %457, i32 %458)
  store i32 0, i32* %10, align 4
  br label %460

460:                                              ; preds = %437, %423
  br label %470

461:                                              ; preds = %436, %305, %255, %222
  %462 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %463 = icmp ne %struct.TYPE_56__* %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %461
  %465 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %466 = call i32 @picture_Release(%struct.TYPE_56__* %465)
  br label %467

467:                                              ; preds = %464, %461
  %468 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %468, i32 0, i32 0
  store i32 1, i32* %469, align 8
  br label %470

470:                                              ; preds = %467, %460, %70
  %471 = load %struct.TYPE_56__*, %struct.TYPE_56__** %12, align 8
  %472 = icmp ne %struct.TYPE_56__* %471, null
  br i1 %472, label %52, label %473

473:                                              ; preds = %470
  %474 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %474, i32 0, i32 2
  %476 = load %struct.TYPE_49__*, %struct.TYPE_49__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp sge i32 %480, 1
  br i1 %481, label %482, label %489

482:                                              ; preds = %473
  %483 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %484 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call %struct.TYPE_58__* @transcode_encoder_get_output_async(i32 %486)
  %488 = call i32 @block_ChainAppend(%struct.TYPE_58__** %483, %struct.TYPE_58__* %487)
  br label %489

489:                                              ; preds = %482, %473
  %490 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %491 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %489
  %495 = load %struct.TYPE_58__*, %struct.TYPE_58__** %8, align 8
  %496 = icmp eq %struct.TYPE_58__* %495, null
  br label %497

497:                                              ; preds = %494, %489
  %498 = phi i1 [ false, %489 ], [ %496, %494 ]
  %499 = zext i1 %498 to i32
  %500 = call i64 @unlikely(i32 %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %525

502:                                              ; preds = %497
  %503 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i64 @transcode_encoder_opened(i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %525

508:                                              ; preds = %502
  %509 = load i32*, i32** %6, align 8
  %510 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %509, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %511 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %515 = call i64 @transcode_encoder_drain(i32 %513, %struct.TYPE_58__** %514)
  %516 = load i64, i64* @VLC_SUCCESS, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %521

518:                                              ; preds = %508
  %519 = load i32*, i32** %6, align 8
  %520 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %519, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %524

521:                                              ; preds = %508
  %522 = load i32*, i32** %6, align 8
  %523 = call i32 @msg_Warn(i32* %522, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %524

524:                                              ; preds = %521, %518
  br label %525

525:                                              ; preds = %524, %502, %497
  %526 = load i32, i32* %10, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %525
  %529 = load %struct.TYPE_58__**, %struct.TYPE_58__*** %9, align 8
  %530 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %531 = call i32 @tag_last_block_with_flag(%struct.TYPE_58__** %529, i32 %530)
  br label %532

532:                                              ; preds = %528, %525
  %533 = load %struct.TYPE_55__*, %struct.TYPE_55__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %532
  %538 = load i32, i32* @VLC_EGENERIC, align 4
  %539 = sext i32 %538 to i64
  br label %542

540:                                              ; preds = %532
  %541 = load i64, i64* @VLC_SUCCESS, align 8
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i64 [ %539, %537 ], [ %541, %540 ]
  %544 = trunc i64 %543 to i32
  store i32 %544, i32* %5, align 4
  br label %545

545:                                              ; preds = %542, %47
  %546 = load i32, i32* %5, align 4
  ret i32 %546
}

declare dso_local %struct.TYPE_56__* @transcode_dequeue_all_pics(%struct.TYPE_55__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_56__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @transcode_encoder_opened(i32) #1

declare dso_local i32 @video_format_IsSimilar(%struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @transcode_encoder_video_configure(i32, i32*, %struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @filtered_video_format(%struct.TYPE_55__*, %struct.TYPE_56__*) #1

declare dso_local i32 @msg_Info(i32*, i8*, ...) #1

declare dso_local i32 @transcode_remove_filters(i32**) #1

declare dso_local i32 @filter_DeleteBlend(i32*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_45__*) #1

declare dso_local i32 @video_format_Copy(%struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i32 @transcode_video_filters_configured(%struct.TYPE_55__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_57__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @transcode_video_filters_init(i32*, i32, i32, %struct.TYPE_57__*, %struct.TYPE_47__*, %struct.TYPE_55__*) #1

declare dso_local %struct.TYPE_47__* @transcode_encoder_format_in(i32) #1

declare dso_local i64 @transcode_encoder_open(i32, %struct.TYPE_49__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @transcode_encoder_format_out(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local %struct.TYPE_56__* @filter_chain_VideoFilter(i32*, %struct.TYPE_56__*) #1

declare dso_local %struct.TYPE_56__* @RenderSubpictures(i32*, %struct.TYPE_55__*, %struct.TYPE_56__*) #1

declare dso_local %struct.TYPE_58__* @transcode_encoder_encode(i32, %struct.TYPE_56__*) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_58__**, %struct.TYPE_58__*) #1

declare dso_local i64 @transcode_encoder_drain(i32, %struct.TYPE_58__**) #1

declare dso_local i32 @transcode_encoder_close(i32) #1

declare dso_local i32 @tag_last_block_with_flag(%struct.TYPE_58__**, i32) #1

declare dso_local %struct.TYPE_58__* @transcode_encoder_get_output_async(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
