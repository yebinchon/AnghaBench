; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_sdl_image.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_sdl_image.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8**, i32 }
%struct.TYPE_30__ = type { i32, i32, i8**, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SDL_image couldn't load the image (%s)\00", align 1
@VLC_CODEC_RGB16 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB24 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unknown bits/pixel format (%d)\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8**, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = icmp eq %struct.TYPE_29__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %439

43:                                               ; preds = %2
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %52 = call i32 @block_Release(%struct.TYPE_29__* %51)
  %53 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %439

54:                                               ; preds = %43
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @SDL_RWFromConstMem(i32 %57, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call %struct.TYPE_30__* @IMG_LoadTyped_RW(i32* %62, i32 1, i8* %66)
  store %struct.TYPE_30__* %67, %struct.TYPE_30__** %8, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %69 = icmp eq %struct.TYPE_30__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = call i32 (...) @IMG_GetError()
  %73 = call i32 @msg_Warn(%struct.TYPE_27__* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %429

74:                                               ; preds = %54
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %95 [
    i32 16, label %80
    i32 8, label %85
    i32 24, label %85
    i32 32, label %90
  ]

80:                                               ; preds = %74
  %81 = load i32, i32* @VLC_CODEC_RGB16, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  br label %103

85:                                               ; preds = %74, %74
  %86 = load i32, i32* @VLC_CODEC_RGB24, align 4
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  br label %103

90:                                               ; preds = %74
  %91 = load i32, i32* @VLC_CODEC_RGB32, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  br label %103

95:                                               ; preds = %74
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @msg_Warn(%struct.TYPE_27__* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %429

103:                                              ; preds = %90, %85, %80
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_27__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %103
  br label %429

130:                                              ; preds = %103
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %132 = call %struct.TYPE_26__* @decoder_NewPicture(%struct.TYPE_27__* %131)
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %7, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %134 = icmp eq %struct.TYPE_26__* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %429

136:                                              ; preds = %130
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %408 [
    i32 8, label %142
    i32 16, label %208
    i32 24, label %271
    i32 32, label %338
  ]

142:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %204, %142
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %207

149:                                              ; preds = %143
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %152, i64 %158
  store i8** %159, i8*** %11, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %166, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %165, i64 %174
  store i8** %175, i8*** %12, align 8
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %200, %149
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %176
  %183 = load i8**, i8*** %11, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %11, align 8
  %185 = load i8*, i8** %183, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = call i32 @SDL_GetRGB(i32 %186, %struct.TYPE_22__* %189, i8** %14, i8** %15, i8** %16)
  %191 = load i8*, i8** %14, align 8
  %192 = load i8**, i8*** %12, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i32 1
  store i8** %193, i8*** %12, align 8
  store i8* %191, i8** %192, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = load i8**, i8*** %12, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i32 1
  store i8** %196, i8*** %12, align 8
  store i8* %194, i8** %195, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load i8**, i8*** %12, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %12, align 8
  store i8* %197, i8** %198, align 8
  br label %200

200:                                              ; preds = %182
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %176

203:                                              ; preds = %176
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %143

207:                                              ; preds = %143
  br label %408

208:                                              ; preds = %136
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 2
  %211 = load i8**, i8*** %210, align 8
  store i8** %211, i8*** %17, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i8**, i8*** %216, align 8
  store i8** %217, i8*** %18, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %208
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  br label %239

235:                                              ; preds = %208
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  br label %239

239:                                              ; preds = %235, %228
  %240 = phi i32 [ %234, %228 ], [ %238, %235 ]
  store i32 %240, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %241

241:                                              ; preds = %267, %239
  %242 = load i32, i32* %20, align 4
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %270

247:                                              ; preds = %241
  %248 = load i8**, i8*** %18, align 8
  %249 = load i8**, i8*** %17, align 8
  %250 = load i32, i32* %19, align 4
  %251 = call i32 @memcpy(i8** %248, i8** %249, i32 %250)
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i8**, i8*** %17, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  store i8** %257, i8*** %17, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i8**, i8*** %18, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8*, i8** %264, i64 %265
  store i8** %266, i8*** %18, align 8
  br label %267

267:                                              ; preds = %247
  %268 = load i32, i32* %20, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %20, align 4
  br label %241

270:                                              ; preds = %241
  br label %408

271:                                              ; preds = %136
  store i32 0, i32* %21, align 4
  br label %272

272:                                              ; preds = %334, %271
  %273 = load i32, i32* %21, align 4
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %337

278:                                              ; preds = %272
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 2
  %281 = load i8**, i8*** %280, align 8
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = mul nsw i32 %282, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %281, i64 %287
  store i8** %288, i8*** %22, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %21, align 4
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = mul nsw i32 %295, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %294, i64 %303
  store i8** %304, i8*** %23, align 8
  store i32 0, i32* %24, align 4
  br label %305

305:                                              ; preds = %330, %278
  %306 = load i32, i32* %24, align 4
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp slt i32 %306, %309
  br i1 %310, label %311, label %333

311:                                              ; preds = %305
  %312 = load i8**, i8*** %22, align 8
  %313 = bitcast i8** %312 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 4
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %316, align 8
  %318 = call i32 @SDL_GetRGB(i32 %314, %struct.TYPE_22__* %317, i8** %25, i8** %26, i8** %27)
  %319 = load i8*, i8** %25, align 8
  %320 = load i8**, i8*** %23, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i32 1
  store i8** %321, i8*** %23, align 8
  store i8* %319, i8** %320, align 8
  %322 = load i8*, i8** %26, align 8
  %323 = load i8**, i8*** %23, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i32 1
  store i8** %324, i8*** %23, align 8
  store i8* %322, i8** %323, align 8
  %325 = load i8*, i8** %27, align 8
  %326 = load i8**, i8*** %23, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i32 1
  store i8** %327, i8*** %23, align 8
  store i8* %325, i8** %326, align 8
  %328 = load i8**, i8*** %22, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 3
  store i8** %329, i8*** %22, align 8
  br label %330

330:                                              ; preds = %311
  %331 = load i32, i32* %24, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %24, align 4
  br label %305

333:                                              ; preds = %305
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %21, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %21, align 4
  br label %272

337:                                              ; preds = %272
  br label %408

338:                                              ; preds = %136
  store i32 0, i32* %28, align 4
  br label %339

339:                                              ; preds = %404, %338
  %340 = load i32, i32* %28, align 4
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp slt i32 %340, %343
  br i1 %344, label %345, label %407

345:                                              ; preds = %339
  %346 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %346, i32 0, i32 2
  %348 = load i8**, i8*** %347, align 8
  %349 = load i32, i32* %28, align 4
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = mul nsw i32 %349, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %348, i64 %354
  store i8** %355, i8*** %29, align 8
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i64 0
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 0
  %361 = load i8**, i8*** %360, align 8
  %362 = load i32, i32* %28, align 4
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = mul nsw i32 %362, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %361, i64 %370
  store i8** %371, i8*** %30, align 8
  store i32 0, i32* %31, align 4
  br label %372

372:                                              ; preds = %400, %345
  %373 = load i32, i32* %31, align 4
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %403

378:                                              ; preds = %372
  %379 = load i8**, i8*** %29, align 8
  %380 = bitcast i8** %379 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %382, i32 0, i32 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %383, align 8
  %385 = call i32 @SDL_GetRGBA(i32 %381, %struct.TYPE_22__* %384, i8** %32, i8** %33, i8** %34, i8** %35)
  %386 = load i8*, i8** %34, align 8
  %387 = load i8**, i8*** %30, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i32 1
  store i8** %388, i8*** %30, align 8
  store i8* %386, i8** %387, align 8
  %389 = load i8*, i8** %33, align 8
  %390 = load i8**, i8*** %30, align 8
  %391 = getelementptr inbounds i8*, i8** %390, i32 1
  store i8** %391, i8*** %30, align 8
  store i8* %389, i8** %390, align 8
  %392 = load i8*, i8** %32, align 8
  %393 = load i8**, i8*** %30, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i32 1
  store i8** %394, i8*** %30, align 8
  store i8* %392, i8** %393, align 8
  %395 = load i8*, i8** %35, align 8
  %396 = load i8**, i8*** %30, align 8
  %397 = getelementptr inbounds i8*, i8** %396, i32 1
  store i8** %397, i8*** %30, align 8
  store i8* %395, i8** %396, align 8
  %398 = load i8**, i8*** %29, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 4
  store i8** %399, i8*** %29, align 8
  br label %400

400:                                              ; preds = %378
  %401 = load i32, i32* %31, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %31, align 4
  br label %372

403:                                              ; preds = %372
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %28, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %28, align 4
  br label %339

407:                                              ; preds = %339
  br label %408

408:                                              ; preds = %136, %407, %337, %270, %207
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @VLC_TICK_INVALID, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %408
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  br label %422

418:                                              ; preds = %408
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  br label %422

422:                                              ; preds = %418, %414
  %423 = phi i64 [ %417, %414 ], [ %421, %418 ]
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 0
  store i64 %423, i64* %425, align 8
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %428 = call i32 @decoder_QueueVideo(%struct.TYPE_27__* %426, %struct.TYPE_26__* %427)
  br label %429

429:                                              ; preds = %422, %135, %129, %95, %70
  %430 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %431 = icmp ne %struct.TYPE_30__* %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %434 = call i32 @SDL_FreeSurface(%struct.TYPE_30__* %433)
  br label %435

435:                                              ; preds = %432, %429
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %437 = call i32 @block_Release(%struct.TYPE_29__* %436)
  %438 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %438, i32* %3, align 4
  br label %439

439:                                              ; preds = %435, %50, %41
  %440 = load i32, i32* %3, align 4
  ret i32 %440
}

declare dso_local i32 @block_Release(%struct.TYPE_29__*) #1

declare dso_local i32* @SDL_RWFromConstMem(i32, i32) #1

declare dso_local %struct.TYPE_30__* @IMG_LoadTyped_RW(i32*, i32, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @IMG_GetError(...) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @decoder_NewPicture(%struct.TYPE_27__*) #1

declare dso_local i32 @SDL_GetRGB(i32, %struct.TYPE_22__*, i8**, i8**, i8**) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @SDL_GetRGBA(i32, %struct.TYPE_22__*, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @SDL_FreeSurface(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
