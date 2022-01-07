; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_Demux_Seekable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_Demux_Seekable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_36__**, i64, i64, i64 }
%struct.TYPE_36__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_30__, i64, i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_37__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32 }

@ES_OUT_GET_ES_STATE = common dso_local global i32 0, align 4
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no track selected, exiting...\00", align 1
@VLC_TICK_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"all tracks have failed, exiting...\00", align 1
@VLC_DEMUXER_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot get packet header, track disabled\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot skip packet, track disabled\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"don't seem to find any data...\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"failed reading data\00", align 1
@AVIIF_KEYFRAME = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_PB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*)* @Demux_Seekable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux_Seekable(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x %struct.TYPE_35__], align 16
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i16, align 2
  %21 = alloca %struct.TYPE_37__, align 8
  %22 = alloca %struct.TYPE_38__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  store %struct.TYPE_33__* %27, %struct.TYPE_33__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %108, %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %111

34:                                               ; preds = %28
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %37, i64 %39
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %40, align 8
  store %struct.TYPE_36__* %41, %struct.TYPE_36__** %8, align 8
  store i32 0, i32* %9, align 4
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ES_OUT_GET_ES_STATE, align 4
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %46, i32 0, i32 10
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @es_out_Control(i32 %44, i32 %45, i64 %48, i32* %9)
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ES_OUT_GET_ES_STATE, align 4
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @es_out_Control(i32 %57, i32 %58, i64 %61, i32* %10)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %54, %34
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @AVI_TrackSeek(%struct.TYPE_32__* %80, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %101

89:                                               ; preds = %69, %66
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %92, %89
  br label %101

101:                                              ; preds = %100, %86
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %28

111:                                              ; preds = %28
  %112 = load i32, i32* %5, align 4
  %113 = icmp ule i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %111
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %114
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp sge i64 %129, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %135, i32* %2, align 4
  br label %860

136:                                              ; preds = %126
  %137 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %137, i32* %2, align 4
  br label %860

138:                                              ; preds = %114
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %140 = call i32 @msg_Warn(%struct.TYPE_32__* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %141, i32* %2, align 4
  br label %860

142:                                              ; preds = %111
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* @VLC_TICK_0, align 8
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = call i32 @es_out_SetPCR(i32 %145, i64 %150)
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %288, %142
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %291

165:                                              ; preds = %159
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %168, i64 %170
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %171, align 8
  store %struct.TYPE_36__* %172, %struct.TYPE_36__** %11, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %165
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  br label %183

183:                                              ; preds = %177, %165
  %184 = phi i1 [ false, %165 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %6, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 4
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ult i64 %192, %196
  br i1 %197, label %198, label %231

198:                                              ; preds = %183
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %201, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 1
  store i32 %208, i32* %212, align 4
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %198
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 8, %220
  %222 = load i32, i32* %6, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %221
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 4
  br label %230

230:                                              ; preds = %217, %198
  br label %236

231:                                              ; preds = %183
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 1
  store i32 -1, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %230
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %241 = call i64 @AVI_GetPTS(%struct.TYPE_36__* %240)
  %242 = sub nsw i64 %239, %241
  store i64 %242, i64* %12, align 8
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %236
  %248 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %249 = load i64, i64* %12, align 8
  %250 = call i8* @AVI_PTSToByte(%struct.TYPE_36__* %248, i64 %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = load i32, i32* %6, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 2
  store i32 %251, i32* %255, align 4
  br label %287

256:                                              ; preds = %236
  %257 = load i64, i64* %12, align 8
  %258 = call i64 @VLC_TICK_FROM_SEC(i32 -2)
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %281

260:                                              ; preds = %256
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %262 = load i64, i64* %12, align 8
  %263 = call i32 @AVI_PTSToChunk(%struct.TYPE_36__* %261, i64 %262)
  store i32 %263, i32* %13, align 4
  %264 = load i64, i64* %12, align 8
  %265 = icmp sgt i64 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %260
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i64 @AVI_GetDPTS(%struct.TYPE_36__* %267, i32 %268)
  %270 = load i64, i64* %12, align 8
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %272, %266, %260
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %6, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %279, i32 0, i32 2
  store i32 %276, i32* %280, align 4
  br label %286

281:                                              ; preds = %256
  %282 = load i32, i32* %6, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 2
  store i32 -1, i32* %285, align 4
  br label %286

286:                                              ; preds = %281, %275
  br label %287

287:                                              ; preds = %286, %247
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %6, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %6, align 4
  br label %159

291:                                              ; preds = %159
  br label %292

292:                                              ; preds = %855, %669, %291
  store i32 0, i32* %18, align 4
  store i32 1, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  br label %293

293:                                              ; preds = %371, %292
  %294 = load i32, i32* %18, align 4
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ult i32 %294, %297
  br i1 %298, label %299, label %374

299:                                              ; preds = %293
  %300 = load i32, i32* %18, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %335

306:                                              ; preds = %299
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 9
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %306
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 8
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %336

316:                                              ; preds = %311
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %318, align 8
  %320 = load i32, i32* %18, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %319, i64 %321
  %323 = load %struct.TYPE_36__*, %struct.TYPE_36__** %322, align 8
  %324 = load i32, i32* %18, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @AVI_GetDPTS(%struct.TYPE_36__* %323, i32 %328)
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = sub nsw i64 0, %332
  %334 = icmp sle i64 %329, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %316, %299
  br label %371

336:                                              ; preds = %316, %311, %306
  %337 = load i32, i32* %18, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %370

343:                                              ; preds = %336
  store i32 0, i32* %15, align 4
  %344 = load i32, i32* %18, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %369

350:                                              ; preds = %343
  %351 = load i32, i32* %17, align 4
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %361, label %353

353:                                              ; preds = %350
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* %18, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp sgt i32 %354, %359
  br i1 %360, label %361, label %368

361:                                              ; preds = %353, %350
  %362 = load i32, i32* %18, align 4
  store i32 %362, i32* %6, align 4
  %363 = load i32, i32* %18, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %17, align 4
  br label %368

368:                                              ; preds = %361, %353
  br label %369

369:                                              ; preds = %368, %343
  br label %370

370:                                              ; preds = %369, %336
  br label %371

371:                                              ; preds = %370, %335
  %372 = load i32, i32* %18, align 4
  %373 = add i32 %372, 1
  store i32 %373, i32* %18, align 4
  br label %293

374:                                              ; preds = %293
  %375 = load i32, i32* %15, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %408

377:                                              ; preds = %374
  store i32 0, i32* %18, align 4
  br label %378

378:                                              ; preds = %401, %377
  %379 = load i32, i32* %18, align 4
  %380 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp ult i32 %379, %382
  br i1 %383, label %384, label %404

384:                                              ; preds = %378
  %385 = load i32, i32* %18, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %384
  %392 = load i32, i32* %18, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = icmp sge i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %391
  %399 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %399, i32* %2, align 4
  br label %860

400:                                              ; preds = %391, %384
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %18, align 4
  %403 = add i32 %402, 1
  store i32 %403, i32* %18, align 4
  br label %378

404:                                              ; preds = %378
  %405 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %406 = call i32 @msg_Warn(%struct.TYPE_32__* %405, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %407 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %407, i32* %2, align 4
  br label %860

408:                                              ; preds = %374
  %409 = load i32, i32* %17, align 4
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %574

411:                                              ; preds = %408
  store i16 0, i16* %20, align 2
  %412 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %412, i32 0, i32 7
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %447

416:                                              ; preds = %411
  %417 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, 12
  %424 = icmp sge i32 %419, %423
  br i1 %424, label %425, label %447

425:                                              ; preds = %416
  %426 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = call i64 @vlc_stream_Seek(i32 %428, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %425
  %435 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %435, i32* %2, align 4
  br label %860

436:                                              ; preds = %425
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %438 = call i64 @AVI_PacketNext(%struct.TYPE_32__* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %442 = call i64 @AVI_TrackStopFinishedStreams(%struct.TYPE_32__* %441)
  %443 = icmp ne i64 %442, 0
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i32 0, i32 1
  store i32 %445, i32* %2, align 4
  br label %860

446:                                              ; preds = %436
  br label %460

447:                                              ; preds = %416, %411
  %448 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %453, 12
  %455 = call i64 @vlc_stream_Seek(i32 %450, i32 %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %447
  %458 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %458, i32* %2, align 4
  br label %860

459:                                              ; preds = %447
  br label %460

460:                                              ; preds = %459, %446
  br label %461

461:                                              ; preds = %572, %509, %460
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %463 = call i64 @AVI_PacketGetHeader(%struct.TYPE_32__* %462, %struct.TYPE_37__* %21)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %461
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %467 = call i32 @msg_Warn(%struct.TYPE_32__* %466, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %468 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %469 = call i64 @AVI_TrackStopFinishedStreams(%struct.TYPE_32__* %468)
  %470 = icmp ne i64 %469, 0
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i32 0, i32 1
  store i32 %472, i32* %2, align 4
  br label %860

473:                                              ; preds = %461
  %474 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp uge i32 %475, %478
  br i1 %479, label %490, label %480

480:                                              ; preds = %473
  %481 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @AUDIO_ES, align 8
  %484 = icmp ne i64 %482, %483
  br i1 %484, label %485, label %510

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @VIDEO_ES, align 8
  %489 = icmp ne i64 %487, %488
  br i1 %489, label %490, label %510

490:                                              ; preds = %485, %473
  %491 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %492 = call i64 @AVI_PacketNext(%struct.TYPE_32__* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %502

494:                                              ; preds = %490
  %495 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %496 = call i32 @msg_Warn(%struct.TYPE_32__* %495, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %497 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %498 = call i64 @AVI_TrackStopFinishedStreams(%struct.TYPE_32__* %497)
  %499 = icmp ne i64 %498, 0
  %500 = zext i1 %499 to i64
  %501 = select i1 %499, i32 0, i32 1
  store i32 %501, i32* %2, align 4
  br label %860

502:                                              ; preds = %490
  %503 = load i16, i16* %20, align 2
  %504 = add i16 %503, 1
  store i16 %504, i16* %20, align 2
  %505 = icmp ne i16 %504, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %502
  %507 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %508 = call i32 @msg_Warn(%struct.TYPE_32__* %507, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %509

509:                                              ; preds = %506, %502
  br label %461

510:                                              ; preds = %485, %480
  %511 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  store i32 %512, i32* %6, align 4
  %513 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %513, i32 0, i32 6
  %515 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %514, align 8
  %516 = load i32, i32* %6, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %515, i64 %517
  %519 = load %struct.TYPE_36__*, %struct.TYPE_36__** %518, align 8
  store %struct.TYPE_36__* %519, %struct.TYPE_36__** %14, align 8
  %520 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 5
  %521 = load i32, i32* %520, align 4
  %522 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 4
  store i32 %521, i32* %522, align 4
  %523 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %524 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %523, i32 0, i32 8
  %525 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = call i32 @AVI_GetKeyFlag(i32 %526, i32 %528)
  %530 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 3
  store i32 %529, i32* %530, align 4
  %531 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 2
  store i32 %532, i32* %533, align 4
  %534 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  store i32 %535, i32* %536, align 4
  %537 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 1
  store i32 %538, i32* %539, align 4
  %540 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %541 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %540, i32 0, i32 7
  %542 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %542, i32 0, i32 4
  %544 = call i32 @avi_index_Append(%struct.TYPE_29__* %541, i32* %543, %struct.TYPE_38__* %22)
  %545 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %546 = load i32, i32* %6, align 4
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 4
  %551 = call i64 @AVI_GetDPTS(%struct.TYPE_36__* %545, i32 %550)
  %552 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %552, i32 0, i32 2
  %554 = load i64, i64* %553, align 8
  %555 = sub nsw i64 0, %554
  %556 = icmp sgt i64 %551, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %510
  br label %573

558:                                              ; preds = %510
  %559 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %560 = call i64 @AVI_PacketNext(%struct.TYPE_32__* %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %570

562:                                              ; preds = %558
  %563 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %564 = call i32 @msg_Warn(%struct.TYPE_32__* %563, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %565 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %566 = call i64 @AVI_TrackStopFinishedStreams(%struct.TYPE_32__* %565)
  %567 = icmp ne i64 %566, 0
  %568 = zext i1 %567 to i64
  %569 = select i1 %567, i32 0, i32 1
  store i32 %569, i32* %2, align 4
  br label %860

570:                                              ; preds = %558
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  br label %461

573:                                              ; preds = %557
  br label %584

574:                                              ; preds = %408
  %575 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* %17, align 4
  %579 = call i64 @vlc_stream_Seek(i32 %577, i32 %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %574
  %582 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %582, i32* %2, align 4
  br label %860

583:                                              ; preds = %574
  br label %584

584:                                              ; preds = %583, %573
  %585 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %586 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %585, i32 0, i32 6
  %587 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %586, align 8
  %588 = load i32, i32* %6, align 4
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %587, i64 %589
  %591 = load %struct.TYPE_36__*, %struct.TYPE_36__** %590, align 8
  store %struct.TYPE_36__* %591, %struct.TYPE_36__** %14, align 8
  %592 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %593 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 8
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %638

596:                                              ; preds = %584
  %597 = load i32, i32* %6, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 4
  store i32 %601, i32* %23, align 4
  %602 = icmp sle i32 %601, 0
  br i1 %602, label %603, label %620

603:                                              ; preds = %596
  %604 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %605 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 8
  %607 = icmp sgt i32 %606, 1
  br i1 %607, label %608, label %612

608:                                              ; preds = %603
  %609 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %610 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %609, i32 0, i32 4
  %611 = load i32, i32* %610, align 8
  store i32 %611, i32* %23, align 4
  br label %619

612:                                              ; preds = %603
  %613 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %614 = call i64 @VLC_TICK_FROM_MS(i32 20)
  %615 = call i8* @AVI_PTSToByte(%struct.TYPE_36__* %613, i64 %614)
  %616 = ptrtoint i8* %615 to i32
  store i32 %616, i32* %23, align 4
  %617 = load i32, i32* %23, align 4
  %618 = call i32 @__MAX(i32 %617, i32 100)
  store i32 %618, i32* %23, align 4
  br label %619

619:                                              ; preds = %612, %608
  br label %620

620:                                              ; preds = %619, %596
  %621 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %622 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %621, i32 0, i32 7
  %623 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %622, i32 0, i32 1
  %624 = load %struct.TYPE_31__*, %struct.TYPE_31__** %623, align 8
  %625 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %626 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %625, i32 0, i32 2
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %624, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %628, i32 0, i32 1
  %630 = load i64, i64* %629, align 8
  %631 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %632 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %631, i32 0, i32 3
  %633 = load i64, i64* %632, align 8
  %634 = sub nsw i64 %630, %633
  %635 = load i32, i32* %23, align 4
  %636 = sext i32 %635 to i64
  %637 = call i64 @__MIN(i64 %634, i64 %636)
  store i64 %637, i64* %19, align 8
  br label %649

638:                                              ; preds = %584
  %639 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %640 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %639, i32 0, i32 7
  %641 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %640, i32 0, i32 1
  %642 = load %struct.TYPE_31__*, %struct.TYPE_31__** %641, align 8
  %643 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %644 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %643, i32 0, i32 2
  %645 = load i64, i64* %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %642, i64 %645
  %647 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %646, i32 0, i32 1
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %19, align 8
  br label %649

649:                                              ; preds = %638, %620
  %650 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %651 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %650, i32 0, i32 3
  %652 = load i64, i64* %651, align 8
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %649
  %655 = load i64, i64* %19, align 8
  %656 = add i64 %655, 8
  store i64 %656, i64* %19, align 8
  br label %657

657:                                              ; preds = %654, %649
  %658 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %659 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %660 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %661 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  %663 = icmp eq i64 %662, 0
  %664 = zext i1 %663 to i64
  %665 = select i1 %663, i32 8, i32 0
  %666 = load i64, i64* %19, align 8
  %667 = call %struct.TYPE_34__* @ReadFrame(%struct.TYPE_32__* %658, %struct.TYPE_36__* %659, i32 %665, i64 %666)
  store %struct.TYPE_34__* %667, %struct.TYPE_34__** %16, align 8
  %668 = icmp eq %struct.TYPE_34__* %667, null
  br i1 %668, label %669, label %678

669:                                              ; preds = %657
  %670 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %671 = call i32 @msg_Warn(%struct.TYPE_32__* %670, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %672 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %673 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %672, i32 0, i32 1
  store i32 0, i32* %673, align 4
  %674 = load i32, i32* %6, align 4
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %675
  %677 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %676, i32 0, i32 0
  store i32 0, i32* %677, align 4
  br label %292

678:                                              ; preds = %657
  %679 = load i64, i64* @VLC_TICK_0, align 8
  %680 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %681 = call i64 @AVI_GetPTS(%struct.TYPE_36__* %680)
  %682 = add nsw i64 %679, %681
  %683 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %684 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %683, i32 0, i32 1
  store i64 %682, i64* %684, align 8
  %685 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %686 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %685, i32 0, i32 7
  %687 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %686, i32 0, i32 1
  %688 = load %struct.TYPE_31__*, %struct.TYPE_31__** %687, align 8
  %689 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %690 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %689, i32 0, i32 2
  %691 = load i64, i64* %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %688, i64 %691
  %693 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %692, i32 0, i32 2
  %694 = load i32, i32* %693, align 8
  %695 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %696 = and i32 %694, %695
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %702

698:                                              ; preds = %678
  %699 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %700 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %701 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %700, i32 0, i32 0
  store i32 %699, i32* %701, align 8
  br label %706

702:                                              ; preds = %678
  %703 = load i32, i32* @BLOCK_FLAG_TYPE_PB, align 4
  %704 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %705 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %704, i32 0, i32 0
  store i32 %703, i32* %705, align 8
  br label %706

706:                                              ; preds = %702, %698
  %707 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %708 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %707, i32 0, i32 4
  %709 = load i32, i32* %708, align 8
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %756

711:                                              ; preds = %706
  %712 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %713 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %712, i32 0, i32 3
  %714 = load i64, i64* %713, align 8
  %715 = icmp eq i64 %714, 0
  br i1 %715, label %716, label %719

716:                                              ; preds = %711
  %717 = load i64, i64* %19, align 8
  %718 = sub i64 %717, 8
  store i64 %718, i64* %19, align 8
  br label %719

719:                                              ; preds = %716, %711
  %720 = load i64, i64* %19, align 8
  %721 = load i32, i32* %6, align 4
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %722
  %724 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %723, i32 0, i32 2
  %725 = load i32, i32* %724, align 4
  %726 = sext i32 %725 to i64
  %727 = sub i64 %726, %720
  %728 = trunc i64 %727 to i32
  store i32 %728, i32* %724, align 4
  %729 = load i64, i64* %19, align 8
  %730 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %731 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %730, i32 0, i32 3
  %732 = load i64, i64* %731, align 8
  %733 = add i64 %732, %729
  store i64 %733, i64* %731, align 8
  %734 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %735 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %734, i32 0, i32 3
  %736 = load i64, i64* %735, align 8
  %737 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %738 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %737, i32 0, i32 7
  %739 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %738, i32 0, i32 1
  %740 = load %struct.TYPE_31__*, %struct.TYPE_31__** %739, align 8
  %741 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %742 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %741, i32 0, i32 2
  %743 = load i64, i64* %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %740, i64 %743
  %745 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %744, i32 0, i32 1
  %746 = load i64, i64* %745, align 8
  %747 = icmp sge i64 %736, %746
  br i1 %747, label %748, label %755

748:                                              ; preds = %719
  %749 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %750 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %749, i32 0, i32 3
  store i64 0, i64* %750, align 8
  %751 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %752 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %751, i32 0, i32 2
  %753 = load i64, i64* %752, align 8
  %754 = add i64 %753, 1
  store i64 %754, i64* %752, align 8
  br label %755

755:                                              ; preds = %748, %719
  br label %808

756:                                              ; preds = %706
  %757 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %758 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %757, i32 0, i32 7
  %759 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %758, i32 0, i32 1
  %760 = load %struct.TYPE_31__*, %struct.TYPE_31__** %759, align 8
  %761 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %762 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %761, i32 0, i32 2
  %763 = load i64, i64* %762, align 8
  %764 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %760, i64 %763
  %765 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %764, i32 0, i32 1
  %766 = load i64, i64* %765, align 8
  %767 = trunc i64 %766 to i32
  store i32 %767, i32* %24, align 4
  %768 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %769 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %768, i32 0, i32 2
  %770 = load i64, i64* %769, align 8
  %771 = add i64 %770, 1
  store i64 %771, i64* %769, align 8
  %772 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %773 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %772, i32 0, i32 8
  %774 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %773, i32 0, i32 0
  %775 = load i64, i64* %774, align 8
  %776 = load i64, i64* @AUDIO_ES, align 8
  %777 = icmp eq i64 %775, %776
  br i1 %777, label %778, label %801

778:                                              ; preds = %756
  %779 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %780 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %779, i32 0, i32 6
  %781 = load i32, i32* %780, align 8
  %782 = icmp sgt i32 %781, 0
  br i1 %782, label %783, label %794

783:                                              ; preds = %778
  %784 = load i32, i32* %24, align 4
  %785 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %786 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %785, i32 0, i32 6
  %787 = load i32, i32* %786, align 8
  %788 = add nsw i32 %784, %787
  %789 = sub nsw i32 %788, 1
  %790 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %791 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %790, i32 0, i32 6
  %792 = load i32, i32* %791, align 8
  %793 = sdiv i32 %789, %792
  br label %795

794:                                              ; preds = %778
  br label %795

795:                                              ; preds = %794, %783
  %796 = phi i32 [ %793, %783 ], [ 1, %794 ]
  %797 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %798 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %797, i32 0, i32 5
  %799 = load i32, i32* %798, align 4
  %800 = add nsw i32 %799, %796
  store i32 %800, i32* %798, align 4
  br label %801

801:                                              ; preds = %795, %756
  %802 = load i32, i32* %6, align 4
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %803
  %805 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %804, i32 0, i32 2
  %806 = load i32, i32* %805, align 4
  %807 = add nsw i32 %806, -1
  store i32 %807, i32* %805, align 4
  br label %808

808:                                              ; preds = %801, %755
  %809 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %810 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %809, i32 0, i32 2
  %811 = load i64, i64* %810, align 8
  %812 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %813 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %812, i32 0, i32 7
  %814 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = icmp ult i64 %811, %815
  br i1 %816, label %817, label %850

817:                                              ; preds = %808
  %818 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %819 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %818, i32 0, i32 7
  %820 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %819, i32 0, i32 1
  %821 = load %struct.TYPE_31__*, %struct.TYPE_31__** %820, align 8
  %822 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %823 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %822, i32 0, i32 2
  %824 = load i64, i64* %823, align 8
  %825 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %821, i64 %824
  %826 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 8
  %828 = load i32, i32* %6, align 4
  %829 = zext i32 %828 to i64
  %830 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %829
  %831 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %830, i32 0, i32 1
  store i32 %827, i32* %831, align 4
  %832 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %833 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %832, i32 0, i32 3
  %834 = load i64, i64* %833, align 8
  %835 = icmp sgt i64 %834, 0
  br i1 %835, label %836, label %849

836:                                              ; preds = %817
  %837 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %838 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %837, i32 0, i32 3
  %839 = load i64, i64* %838, align 8
  %840 = add nsw i64 8, %839
  %841 = load i32, i32* %6, align 4
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %842
  %844 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %843, i32 0, i32 1
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  %847 = add nsw i64 %846, %840
  %848 = trunc i64 %847 to i32
  store i32 %848, i32* %844, align 4
  br label %849

849:                                              ; preds = %836, %817
  br label %855

850:                                              ; preds = %808
  %851 = load i32, i32* %6, align 4
  %852 = zext i32 %851 to i64
  %853 = getelementptr inbounds [100 x %struct.TYPE_35__], [100 x %struct.TYPE_35__]* %7, i64 0, i64 %852
  %854 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %853, i32 0, i32 1
  store i32 -1, i32* %854, align 4
  br label %855

855:                                              ; preds = %850, %849
  %856 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %857 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %858 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %859 = call i32 @AVI_SendFrame(%struct.TYPE_32__* %856, %struct.TYPE_36__* %857, %struct.TYPE_34__* %858)
  br label %292

860:                                              ; preds = %581, %562, %494, %465, %457, %440, %434, %404, %398, %138, %136, %134
  %861 = load i32, i32* %2, align 4
  ret i32 %861
}

declare dso_local i32 @es_out_Control(i32, i32, i64, i32*) #1

declare dso_local i32 @AVI_TrackSeek(%struct.TYPE_32__*, i32, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i64 @AVI_GetPTS(%struct.TYPE_36__*) #1

declare dso_local i8* @AVI_PTSToByte(%struct.TYPE_36__*, i64) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @AVI_PTSToChunk(%struct.TYPE_36__*, i64) #1

declare dso_local i64 @AVI_GetDPTS(%struct.TYPE_36__*, i32) #1

declare dso_local i64 @vlc_stream_Seek(i32, i32) #1

declare dso_local i64 @AVI_PacketNext(%struct.TYPE_32__*) #1

declare dso_local i64 @AVI_TrackStopFinishedStreams(%struct.TYPE_32__*) #1

declare dso_local i64 @AVI_PacketGetHeader(%struct.TYPE_32__*, %struct.TYPE_37__*) #1

declare dso_local i32 @AVI_GetKeyFlag(i32, i32) #1

declare dso_local i32 @avi_index_Append(%struct.TYPE_29__*, i32*, %struct.TYPE_38__*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local %struct.TYPE_34__* @ReadFrame(%struct.TYPE_32__*, %struct.TYPE_36__*, i32, i64) #1

declare dso_local i32 @AVI_SendFrame(%struct.TYPE_32__*, %struct.TYPE_36__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
