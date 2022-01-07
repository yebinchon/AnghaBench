; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_xwd.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_xwd.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i64, i32* }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@sz_XWDheader = common dso_local global i64 0, align 8
@XWD_FILE_VERSION = common dso_local global i32 0, align 4
@sz_XWDColor = common dso_local global i32 0, align 4
@VLC_CODEC_RGB8 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB15 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB16 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB24 = common dso_local global i64 0, align 8
@VLC_CODEC_ARGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %18, i32* %3, align 4
  br label %271

19:                                               ; preds = %2
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_TICK_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %264

26:                                               ; preds = %19
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @sz_XWDheader, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %264

33:                                               ; preds = %26
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %7, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @sz_XWDheader, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %33
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = load i32, i32* @XWD_FILE_VERSION, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %47, %33
  br label %264

61:                                               ; preds = %54
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohl(i32 %64)
  %66 = load i32, i32* @sz_XWDColor, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %264

77:                                               ; preds = %61
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %78
  store i32* %82, i32** %80, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  store i64 0, i64* %9, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohl(i32 %90)
  switch i32 %91, label %138 [
    i32 8, label %92
    i32 15, label %101
    i32 16, label %110
    i32 24, label %119
    i32 32, label %129
  ]

92:                                               ; preds = %77
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95)
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* @VLC_CODEC_RGB8, align 8
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %98, %92
  br label %138

101:                                              ; preds = %77
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntohl(i32 %104)
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* @VLC_CODEC_RGB15, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %107, %101
  br label %138

110:                                              ; preds = %77
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ntohl(i32 %113)
  %115 = icmp eq i32 %114, 16
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @VLC_CODEC_RGB16, align 8
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %116, %110
  br label %138

119:                                              ; preds = %77
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ntohl(i32 %122)
  switch i32 %123, label %128 [
    i32 32, label %124
    i32 24, label %126
  ]

124:                                              ; preds = %119
  %125 = load i64, i64* @VLC_CODEC_RGB32, align 8
  store i64 %125, i64* %9, align 8
  br label %128

126:                                              ; preds = %119
  %127 = load i64, i64* @VLC_CODEC_RGB24, align 8
  store i64 %127, i64* %9, align 8
  br label %128

128:                                              ; preds = %119, %126, %124
  br label %138

129:                                              ; preds = %77
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ntohl(i32 %132)
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i64, i64* @VLC_CODEC_ARGB, align 8
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %135, %129
  br label %138

138:                                              ; preds = %77, %137, %128, %118, %109, %100
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  br label %264

142:                                              ; preds = %138
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ntohl(i32 %149)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ntohl(i32 %153)
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ntohl(i32 %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ntohl(i32 %161)
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @video_format_Setup(%struct.TYPE_26__* %145, i64 %146, i32 %150, i32 %154, i32 %158, i32 %162, i32 %167, i32 %172)
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 8
  %185 = mul nsw i32 %178, %184
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %10, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ntohl(i32 %189)
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %11, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* %10, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %207, label %195

195:                                              ; preds = %142
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %11, align 8
  %200 = sdiv i64 %198, %199
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp slt i64 %200, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %195, %142
  br label %264

208:                                              ; preds = %195
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %210 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_23__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %264

213:                                              ; preds = %208
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %215 = call %struct.TYPE_22__* @decoder_NewPicture(%struct.TYPE_23__* %214)
  store %struct.TYPE_22__* %215, %struct.TYPE_22__** %6, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %217 = icmp eq %struct.TYPE_22__* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %264

219:                                              ; preds = %213
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %12, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  store i32* %227, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %228

228:                                              ; preds = %253, %219
  %229 = load i32, i32* %14, align 4
  %230 = zext i32 %229 to i64
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp slt i64 %230, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %228
  %238 = load i32*, i32** %13, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = load i64, i64* %10, align 8
  %241 = call i32 @memcpy(i32* %238, i32* %239, i64 %240)
  %242 = load i64, i64* %11, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 %242
  store i32* %244, i32** %12, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %13, align 8
  br label %253

253:                                              ; preds = %237
  %254 = load i32, i32* %14, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %14, align 4
  br label %228

256:                                              ; preds = %228
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %256, %218, %212, %207, %141, %76, %60, %32, %25
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %266 = call i32 @block_Release(%struct.TYPE_24__* %265)
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = call i32 @decoder_QueueVideo(%struct.TYPE_23__* %267, %struct.TYPE_22__* %268)
  %270 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %264, %17
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @video_format_Setup(%struct.TYPE_26__*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @decoder_NewPicture(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_24__*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
