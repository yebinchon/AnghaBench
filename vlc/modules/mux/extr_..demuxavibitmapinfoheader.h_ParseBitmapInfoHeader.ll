; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_..demuxavibitmapinfoheader.h_ParseBitmapInfoHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_..demuxavibitmapinfoheader.h_ParseBitmapInfoHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32** }
%struct.bitmapinfoheader_properties = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i64 0, align 8
@BI_BITFIELDS = common dso_local global i64 0, align 8
@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB24 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB16 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB15 = common dso_local global i64 0, align 8
@VLC_CODEC_I410 = common dso_local global i64 0, align 8
@VLC_CODEC_RGBP = common dso_local global i64 0, align 8
@VLC_CODEC_GREY = common dso_local global i64 0, align 8
@VLC_CODEC_BGRA = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, %struct.TYPE_9__*, %struct.bitmapinfoheader_properties*)* @ParseBitmapInfoHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseBitmapInfoHeader(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_9__* %2, %struct.bitmapinfoheader_properties* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.bitmapinfoheader_properties*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.bitmapinfoheader_properties* %3, %struct.bitmapinfoheader_properties** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 1
  %17 = bitcast %struct.TYPE_10__* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @INT_MAX, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 24
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = icmp uge i64 %24, 24
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, 24
  store i64 %28, i64* %11, align 8
  br label %30

29:                                               ; preds = %23, %4
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BI_RGB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BI_BITFIELDS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %256

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %100 [
    i32 32, label %46
    i32 24, label %55
    i32 16, label %64
    i32 15, label %73
    i32 9, label %82
    i32 8, label %86
  ]

46:                                               ; preds = %42
  %47 = load i64, i64* @VLC_CODEC_RGB32, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 @SetBitmapRGBMasks(i64 %52, %struct.TYPE_9__* %53)
  br label %110

55:                                               ; preds = %42
  %56 = load i64, i64* @VLC_CODEC_RGB24, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = call i32 @SetBitmapRGBMasks(i64 %61, %struct.TYPE_9__* %62)
  br label %110

64:                                               ; preds = %42
  %65 = load i64, i64* @VLC_CODEC_RGB16, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = call i32 @SetBitmapRGBMasks(i64 %70, %struct.TYPE_9__* %71)
  br label %110

73:                                               ; preds = %42
  %74 = load i64, i64* @VLC_CODEC_RGB15, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = call i32 @SetBitmapRGBMasks(i64 %79, %struct.TYPE_9__* %80)
  br label %110

82:                                               ; preds = %42
  %83 = load i64, i64* @VLC_CODEC_I410, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %110

86:                                               ; preds = %42
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i64, i64* @VLC_CODEC_RGBP, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %99

95:                                               ; preds = %86
  %96 = load i64, i64* @VLC_CODEC_GREY, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  br label %110

100:                                              ; preds = %42
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i64, i64* @VLC_CODEC_RGBP, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %99, %82, %73, %64, %55, %46
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BI_BITFIELDS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %110
  %117 = load i64, i64* %11, align 8
  %118 = icmp uge i64 %117, 12
  br i1 %118, label %119, label %159

119:                                              ; preds = %116
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = call i8* @GetDWLE(i32* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 7
  store i8* %122, i8** %125, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = call i8* @GetDWLE(i32* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 6
  store i8* %128, i8** %131, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = call i8* @GetDWLE(i32* %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  store i8* %134, i8** %137, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp uge i64 %138, 16
  br i1 %139, label %140, label %158

140:                                              ; preds = %119
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 8
  %143 = call i8* @GetDWLE(i32* %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %12, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VLC_CODEC_RGB32, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %140
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 255
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i64, i64* @VLC_CODEC_BGRA, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %150, %140
  br label %158

158:                                              ; preds = %157, %119
  br label %159

159:                                              ; preds = %158, %116
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %164 = call i32 @SetBitmapRGBMasks(i64 %162, %struct.TYPE_9__* %163)
  br label %236

165:                                              ; preds = %110
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VLC_CODEC_RGBP, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %235

171:                                              ; preds = %165
  %172 = call i8* @malloc(i64 4)
  %173 = bitcast i8* %172 to %struct.TYPE_8__*
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %176, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = icmp ne %struct.TYPE_8__* %180, null
  br i1 %181, label %182, label %234

182:                                              ; preds = %171
  %183 = load i64, i64* %11, align 8
  %184 = udiv i64 %183, 4
  %185 = call i32 @__MIN(i64 %184, i32 256)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i32 %185, i32* %190, align 8
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %230, %182
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %192, %198
  br i1 %199, label %200, label %233

200:                                              ; preds = %191
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %226, %200
  %202 = load i32, i32* %14, align 4
  %203 = icmp slt i32 %202, 4
  br i1 %203, label %204, label %229

204:                                              ; preds = %201
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %13, align 4
  %207 = mul nsw i32 4, %206
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %212, i32* %225, align 4
  br label %226

226:                                              ; preds = %204
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %201

229:                                              ; preds = %201
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %191

233:                                              ; preds = %191
  br label %234

234:                                              ; preds = %233, %171
  br label %235

235:                                              ; preds = %234, %165
  br label %236

236:                                              ; preds = %235, %159
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = ashr i32 %242, 3
  %244 = mul nsw i32 %239, %243
  %245 = load %struct.bitmapinfoheader_properties*, %struct.bitmapinfoheader_properties** %9, align 8
  %246 = getelementptr inbounds %struct.bitmapinfoheader_properties, %struct.bitmapinfoheader_properties* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @INT32_MAX, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %236
  %253 = load %struct.bitmapinfoheader_properties*, %struct.bitmapinfoheader_properties** %9, align 8
  %254 = getelementptr inbounds %struct.bitmapinfoheader_properties, %struct.bitmapinfoheader_properties* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %236
  br label %295

256:                                              ; preds = %36
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load i64, i64* %11, align 8
  %263 = icmp ugt i64 %262, 0
  br i1 %263, label %264, label %289

264:                                              ; preds = %256
  %265 = load i64, i64* %11, align 8
  %266 = call i8* @malloc(i64 %265)
  %267 = bitcast i8* %266 to i32*
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  store i32* %267, i32** %269, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  %274 = zext i1 %273 to i32
  %275 = call i64 @unlikely(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %264
  %278 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %278, i32* %5, align 4
  br label %341

279:                                              ; preds = %264
  %280 = load i64, i64* %11, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = load i32*, i32** %10, align 8
  %287 = load i64, i64* %11, align 8
  %288 = call i32 @memcpy(i32* %285, i32* %286, i64 %287)
  br label %289

289:                                              ; preds = %279, %256
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %294 = call i32 @SetBitmapRGBMasks(i64 %292, %struct.TYPE_9__* %293)
  br label %295

295:                                              ; preds = %289, %255
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @video_format_Setup(%struct.TYPE_11__* %297, i64 %300, i32 %303, i32 %306, i32 %309, i32 %312, i32 %316, i32 %320)
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @INT32_MAX, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %295
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = mul nsw i32 -1, %331
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  store i32 %332, i32* %335, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 1
  store i32 %332, i32* %338, align 4
  br label %339

339:                                              ; preds = %328, %295
  %340 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %339, %277
  %342 = load i32, i32* %5, align 4
  ret i32 %342
}

declare dso_local i32 @SetBitmapRGBMasks(i64, %struct.TYPE_9__*) #1

declare dso_local i8* @GetDWLE(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @__MIN(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @video_format_Setup(%struct.TYPE_11__*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
