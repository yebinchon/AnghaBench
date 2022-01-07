; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetTextBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetTextBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i8* }

@VLC_CODEC_QTXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Serif\00", align 1
@VLC_CODEC_SPU = common dso_local global i64 0, align 8
@VLC_CODEC_TX3G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"tx3g\00", align 1
@STYLE_DEFAULT_FONT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ftab\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Sans-Serif\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Sans-serif\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Monospace\00", align 1
@VLC_CODEC_WEBVTT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"wvtt\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"vttc\00", align 1
@VLC_CODEC_TTML = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"stpp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32)* @GetTextBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTextBox(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @VLC_UNUSED(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VLC_CODEC_QTXT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %118

29:                                               ; preds = %3
  %30 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32* null, i32** %4, align 8
  br label %291

34:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @bo_add_8(i32* %39, i32 0)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %35

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @bo_add_16be(i32* %45, i32 1)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 44
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @bo_add_mem(i32* %53, i32 %57, i8* %61)
  br label %116

63:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %70, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @bo_add_8(i32* %68, i32 0)
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %64

73:                                               ; preds = %64
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @bo_add_16be(i32* %74, i32 1)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @bo_add_32be(i32* %76, i32 0)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @bo_add_32be(i32* %78, i32 0)
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %86, %73
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @bo_add_16be(i32* %84, i32 0)
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %80

89:                                               ; preds = %80
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @bo_add_64be(i32* %90, i32 0)
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @bo_add_64be(i32* %92, i32 0)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @bo_add_16be(i32* %94, i32 0)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @bo_add_16be(i32* %96, i32 0)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @bo_add_8(i32* %98, i32 0)
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @bo_add_16be(i32* %100, i32 0)
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %108, %89
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @bo_add_16be(i32* %106, i32 255)
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %102

111:                                              ; preds = %102
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @bo_add_8(i32* %112, i32 5)
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @bo_add_mem(i32* %114, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %52
  %117 = load i32*, i32** %8, align 8
  store i32* %117, i32** %4, align 8
  br label %291

118:                                              ; preds = %3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VLC_CODEC_SPU, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VLC_CODEC_TX3G, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %231

132:                                              ; preds = %125, %118
  %133 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %133, i32** %13, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  store i32* null, i32** %4, align 8
  br label %291

137:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %144, %137
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %139, 6
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @bo_add_8(i32* %142, i32 0)
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %138

147:                                              ; preds = %138
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @bo_add_16be(i32* %148, i32 1)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VLC_CODEC_TX3G, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %147
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %160, 32
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load i32*, i32** %13, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @bo_add_mem(i32* %163, i32 %167, i8* %171)
  br label %229

173:                                              ; preds = %156, %147
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @bo_add_32be(i32* %174, i32 0)
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @bo_add_16be(i32* %176, i32 0)
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 @bo_add_32be(i32* %178, i32 0)
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @bo_add_64be(i32* %180, i32 0)
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @bo_add_16be(i32* %182, i32 0)
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @bo_add_16be(i32* %184, i32 0)
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @bo_add_16be(i32* %186, i32 0)
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @bo_add_8(i32* %188, i32 0)
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* @STYLE_DEFAULT_FONT_SIZE, align 4
  %192 = call i32 @bo_add_8(i32* %190, i32 %191)
  %193 = load i32*, i32** %13, align 8
  %194 = call i32 @bo_add_32be(i32* %193, i32 -1)
  %195 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %195, i32** %15, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %228

198:                                              ; preds = %173
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 2, i32 3
  %204 = call i32 @bo_add_16be(i32* %199, i32 %203)
  %205 = load i32*, i32** %15, align 8
  %206 = call i32 @bo_add_8(i32* %205, i32 5)
  %207 = load i32*, i32** %15, align 8
  %208 = call i32 @bo_add_mem(i32* %207, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @bo_add_8(i32* %209, i32 10)
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %216 = call i32 @bo_add_mem(i32* %211, i32 10, i8* %215)
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %198
  %220 = load i32*, i32** %15, align 8
  %221 = call i32 @bo_add_8(i32* %220, i32 9)
  %222 = load i32*, i32** %15, align 8
  %223 = call i32 @bo_add_mem(i32* %222, i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %219, %198
  %225 = load i32*, i32** %13, align 8
  %226 = load i32*, i32** %15, align 8
  %227 = call i32 @box_gather(i32* %225, i32* %226)
  br label %228

228:                                              ; preds = %224, %173
  br label %229

229:                                              ; preds = %228, %162
  %230 = load i32*, i32** %13, align 8
  store i32* %230, i32** %4, align 8
  br label %291

231:                                              ; preds = %125
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @VLC_CODEC_WEBVTT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %231
  %239 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32* %239, i32** %16, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  store i32* null, i32** %4, align 8
  br label %291

243:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  br label %244

244:                                              ; preds = %250, %243
  %245 = load i32, i32* %17, align 4
  %246 = icmp slt i32 %245, 6
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32*, i32** %16, align 8
  %249 = call i32 @bo_add_8(i32* %248, i32 0)
  br label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %244

253:                                              ; preds = %244
  %254 = load i32*, i32** %16, align 8
  %255 = call i32 @bo_add_16be(i32* %254, i32 1)
  %256 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32* %256, i32** %18, align 8
  %257 = load i32*, i32** %16, align 8
  %258 = load i32*, i32** %18, align 8
  %259 = call i32 @box_gather(i32* %257, i32* %258)
  %260 = load i32*, i32** %16, align 8
  store i32* %260, i32** %4, align 8
  br label %291

261:                                              ; preds = %231
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @VLC_CODEC_TTML, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %287

268:                                              ; preds = %261
  %269 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32* %269, i32** %19, align 8
  %270 = load i32*, i32** %19, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  store i32* null, i32** %4, align 8
  br label %291

273:                                              ; preds = %268
  store i32 0, i32* %20, align 4
  br label %274

274:                                              ; preds = %280, %273
  %275 = load i32, i32* %20, align 4
  %276 = icmp slt i32 %275, 6
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load i32*, i32** %19, align 8
  %279 = call i32 @bo_add_8(i32* %278, i32 0)
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %20, align 4
  br label %274

283:                                              ; preds = %274
  %284 = load i32*, i32** %19, align 8
  %285 = call i32 @bo_add_16be(i32* %284, i32 1)
  %286 = load i32*, i32** %19, align 8
  store i32* %286, i32** %4, align 8
  br label %291

287:                                              ; preds = %261
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  store i32* null, i32** %4, align 8
  br label %291

291:                                              ; preds = %290, %283, %272, %253, %242, %229, %136, %116, %33
  %292 = load i32*, i32** %4, align 8
  ret i32* %292
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

declare dso_local i32 @bo_add_16be(i32*, i32) #1

declare dso_local i32 @bo_add_mem(i32*, i32, i8*) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

declare dso_local i32 @bo_add_64be(i32*, i32) #1

declare dso_local i32 @box_gather(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
