; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_22__ = type { i64, i32*, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mpag hamming error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%ld --> %ld\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"UPDATE TELETEXT PICTURE\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"can't get spu buffer\00", align 1
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@SUBPICTURE_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@i_conf_wanted_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  store i8* %23, i8** %11, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %319

28:                                               ; preds = %2
  store i64 1, i64* %13, align 8
  br label %29

29:                                               ; preds = %129, %28
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 46
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ule i64 %31, %34
  br i1 %35, label %36, label %132

36:                                               ; preds = %29
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %129

47:                                               ; preds = %36
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hamming_8_4(i32 %50)
  %52 = shl i32 %51, 4
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hamming_8_4(i32 %55)
  %57 = or i32 %52, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = call i32 @dbg(%struct.TYPE_20__* bitcast ([19 x i8]* @.str to %struct.TYPE_20__*))
  br label %129

63:                                               ; preds = %47
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @bytereverse(i32 %64)
  %66 = and i32 255, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = and i32 7, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %16, align 4
  %73 = and i32 7, %72
  br label %74

74:                                               ; preds = %71, %70
  %75 = phi i32 [ 8, %70 ], [ %73, %71 ]
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %76, 3
  store i32 %77, i32* %16, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %129

89:                                               ; preds = %82, %74
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @DecodePageHeaderPacket(%struct.TYPE_20__* %93, i32* %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1500000
  %110 = inttoptr i64 %109 to %struct.TYPE_20__*
  %111 = call i32 @dbg(%struct.TYPE_20__* %110)
  br label %112

112:                                              ; preds = %101, %92
  br label %128

113:                                              ; preds = %89
  %114 = load i32, i32* %16, align 4
  %115 = icmp slt i32 %114, 26
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @DecodeNormalPacket(%struct.TYPE_20__* %117, i32* %118, i32 %119, i32 %120, i64 %123)
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %116, %113
  br label %128

128:                                              ; preds = %127, %112
  br label %129

129:                                              ; preds = %128, %88, %60, %46
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 46
  store i64 %131, i64* %13, align 8
  br label %29

132:                                              ; preds = %29
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  br label %309

136:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  store i32 1, i32* %18, align 4
  br label %137

137:                                              ; preds = %194, %136
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 24
  br i1 %139, label %140, label %197

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @strlen(i32 %147)
  store i64 %148, i64* %19, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = sub i64 512, %151
  %153 = sub i64 %152, 1
  %154 = icmp ugt i64 %149, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %140
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 512, %157
  %159 = sub i64 %158, 1
  store i64 %159, i64* %19, align 8
  br label %160

160:                                              ; preds = %155, %140
  %161 = load i64, i64* %19, align 8
  %162 = icmp ugt i64 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load i8*, i8** %11, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* %19, align 8
  %173 = call i32 @memcpy(i8* %164, i32 %171, i64 %172)
  %174 = load i64, i64* %19, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %12, align 4
  %179 = load i64, i64* %19, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8* %181, i8** %11, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = sub i64 512, %183
  %185 = sub i64 %184, 1
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %163
  %188 = load i8*, i8** %11, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %11, align 8
  store i8 10, i8* %188, align 1
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %187, %163
  br label %193

193:                                              ; preds = %192, %160
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %137

197:                                              ; preds = %137
  %198 = load i8*, i8** %11, align 8
  store i8 0, i8* %198, align 1
  %199 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @strcmp(i8* %199, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %197
  br label %309

206:                                              ; preds = %197
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = call i32 @dbg(%struct.TYPE_20__* bitcast ([24 x i8]* @.str.2 to %struct.TYPE_20__*))
  %209 = call i32 @assert(i32 0)
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %214 = call i32 @strcpy(i32 %212, i8* %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %216 = call %struct.TYPE_19__* @decoder_NewSubpicture(%struct.TYPE_20__* %215, i32* null)
  store %struct.TYPE_19__* %216, %struct.TYPE_19__** %7, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %218 = icmp ne %struct.TYPE_19__* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %206
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = call i32 @msg_Warn(%struct.TYPE_20__* %220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %309

222:                                              ; preds = %206
  %223 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %224 = call i32 @video_format_Init(i32* %8, i32 %223)
  %225 = call %struct.TYPE_23__* @subpicture_region_New(i32* %8)
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 4
  store %struct.TYPE_23__* %225, %struct.TYPE_23__** %227, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %229, align 8
  %231 = icmp eq %struct.TYPE_23__* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %234 = call i32 @msg_Err(%struct.TYPE_20__* %233, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %309

235:                                              ; preds = %222
  %236 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %236, %239
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  store i32 %240, i32* %244, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 20, i32 0
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 1
  store i32 %250, i32* %254, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 2
  store i32 10, i32* %258, align 4
  %259 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %260 = call i32 @text_segment_New(i8* %259)
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 3
  store i32 %260, i32* %264, align 4
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %272, %275
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  store i64 %276, i64* %278, align 8
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  %283 = zext i1 %282 to i32
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 3
  store i32 0, i32* %287, align 4
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = sdiv i64 %291, 100000
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = sdiv i64 %295, 100000
  %297 = inttoptr i64 %296 to %struct.TYPE_20__*
  %298 = call i32 @dbg(%struct.TYPE_20__* %297)
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %300 = call i32 @block_Release(%struct.TYPE_22__* %299)
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %302 = icmp ne %struct.TYPE_19__* %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %235
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %306 = call i32 @decoder_QueueSub(%struct.TYPE_20__* %304, %struct.TYPE_19__* %305)
  br label %307

307:                                              ; preds = %303, %235
  %308 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %308, i32* %3, align 4
  br label %319

309:                                              ; preds = %232, %219, %205, %135
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %311 = icmp ne %struct.TYPE_19__* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %314 = call i32 @subpicture_Delete(%struct.TYPE_19__* %313)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %315

315:                                              ; preds = %312, %309
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %317 = call i32 @block_Release(%struct.TYPE_22__* %316)
  %318 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %315, %307, %26
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @hamming_8_4(i32) #1

declare dso_local i32 @dbg(%struct.TYPE_20__*) #1

declare dso_local i32 @bytereverse(i32) #1

declare dso_local i32 @DecodePageHeaderPacket(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @DecodeNormalPacket(%struct.TYPE_20__*, i32*, i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_19__* @decoder_NewSubpicture(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @subpicture_region_New(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @text_segment_New(i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
