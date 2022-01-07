; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetStblBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetStblBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"stsd\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"co64\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stco\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stsc\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"created %d chunks (stco)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stts\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ctts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"stsz\00", align 1
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"stss\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stbl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_10__*, i32, i32)* @GetStblBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetStblBox(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %42 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %607

46:                                               ; preds = %4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @bo_add_32be(i32* %47, i32 1)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AUDIO_ES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @GetSounBox(i32* %57, %struct.TYPE_10__* %58, i32 %59)
  %61 = call i32 @box_gather(i32* %56, i32* %60)
  br label %92

62:                                               ; preds = %46
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VIDEO_ES, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32* @GetVideBox(i32* %71, %struct.TYPE_10__* %72, i32 %73)
  %75 = call i32 @box_gather(i32* %70, i32* %74)
  br label %91

76:                                               ; preds = %62
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SPU_ES, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32* @GetTextBox(i32* %85, %struct.TYPE_10__* %86, i32 %87)
  %89 = call i32 @box_gather(i32* %84, i32* %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %55
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %96, i32** %11, align 8
  br label %99

97:                                               ; preds = %92
  %98 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i32* %98, i32** %11, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i32*, i32** %11, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @bo_free(i32* %103)
  store i32* null, i32** %5, align 8
  br label %607

105:                                              ; preds = %99
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @bo_add_32be(i32* %106, i32 0)
  %108 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %108, i32** %12, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @bo_free(i32* %112)
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @bo_free(i32* %114)
  store i32* null, i32** %5, align 8
  br label %607

116:                                              ; preds = %105
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @bo_add_32be(i32* %117, i32 0)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %217, %116
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %220

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %17, align 8
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bo_add_64be(i32* %133, i32 %139)
  br label %150

141:                                              ; preds = %125
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %144 = load i32, i32* %16, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bo_add_32be(i32* %142, i32 %148)
  br label %150

150:                                              ; preds = %141, %132
  br label %151

151:                                              ; preds = %190, %150
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ult i32 %152, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %151
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub i32 %161, 1
  %163 = icmp uge i32 %158, %162
  br i1 %163, label %186, label %164

164:                                              ; preds = %157
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %172 = load i32, i32* %16, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %170, %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %179, 1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %177, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %164, %157
  %187 = load i32, i32* %16, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %193

189:                                              ; preds = %164
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %151

193:                                              ; preds = %186, %151
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sub i32 %195, %196
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %193
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %13, align 4
  %202 = add i32 1, %201
  %203 = call i32 @bo_add_32be(i32* %200, i32 %202)
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %18, align 4
  %207 = sub i32 %205, %206
  %208 = call i32 @bo_add_32be(i32* %204, i32 %207)
  %209 = load i32*, i32** %12, align 8
  %210 = call i32 @bo_add_32be(i32* %209, i32 1)
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %18, align 4
  %213 = sub i32 %211, %212
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %199, %193
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %13, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %119

220:                                              ; preds = %119
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @bo_swap_32be(i32* %221, i32 12, i32 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @msg_Dbg(i32* %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %220
  %231 = load i32*, i32** %12, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @bo_swap_32be(i32* %231, i32 12, i32 %232)
  %234 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store i32* %234, i32** %19, align 8
  %235 = load i32*, i32** %19, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %244, label %237

237:                                              ; preds = %230
  %238 = load i32*, i32** %10, align 8
  %239 = call i32 @bo_free(i32* %238)
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 @bo_free(i32* %240)
  %242 = load i32*, i32** %12, align 8
  %243 = call i32 @bo_free(i32* %242)
  store i32* null, i32** %5, align 8
  br label %607

244:                                              ; preds = %230
  %245 = load i32*, i32** %19, align 8
  %246 = call i32 @bo_add_32be(i32* %245, i32 0)
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %247

247:                                              ; preds = %307, %244
  %248 = load i32, i32* %23, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ult i32 %248, %251
  br i1 %252, label %253, label %310

253:                                              ; preds = %247
  %254 = load i32, i32* %23, align 4
  store i32 %254, i32* %24, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = load i32, i32* %23, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i64 %259
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @GetScaledEntryDuration(%struct.TYPE_11__* %260, i32 %263, i64* %20, i32* %21)
  store i32 %264, i32* %25, align 4
  %265 = load i32, i32* %23, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %26, align 4
  br label %267

267:                                              ; preds = %294, %253
  %268 = load i32, i32* %26, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ult i32 %268, %271
  br i1 %272, label %273, label %297

273:                                              ; preds = %267
  %274 = load i64, i64* %20, align 8
  store i64 %274, i64* %27, align 8
  %275 = load i32, i32* %21, align 4
  store i32 %275, i32* %28, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = load i32, i32* %26, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i64 %280
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @GetScaledEntryDuration(%struct.TYPE_11__* %281, i32 %284, i64* %27, i32* %28)
  store i32 %285, i32* %29, align 4
  %286 = load i32, i32* %29, align 4
  %287 = load i32, i32* %25, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %273
  br label %297

290:                                              ; preds = %273
  %291 = load i64, i64* %27, align 8
  store i64 %291, i64* %20, align 8
  %292 = load i32, i32* %28, align 4
  store i32 %292, i32* %21, align 4
  %293 = load i32, i32* %26, align 4
  store i32 %293, i32* %23, align 4
  br label %294

294:                                              ; preds = %290
  %295 = load i32, i32* %26, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %26, align 4
  br label %267

297:                                              ; preds = %289, %267
  %298 = load i32*, i32** %19, align 8
  %299 = load i32, i32* %23, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %23, align 4
  %301 = load i32, i32* %24, align 4
  %302 = sub i32 %300, %301
  %303 = call i32 @bo_add_32be(i32* %298, i32 %302)
  %304 = load i32*, i32** %19, align 8
  %305 = load i32, i32* %25, align 4
  %306 = call i32 @bo_add_32be(i32* %304, i32 %305)
  br label %307

307:                                              ; preds = %297
  %308 = load i32, i32* %22, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %22, align 4
  br label %247

310:                                              ; preds = %247
  %311 = load i32*, i32** %19, align 8
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @bo_swap_32be(i32* %311, i32 12, i32 %312)
  store i32* null, i32** %30, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %388

318:                                              ; preds = %310
  %319 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  store i32* %319, i32** %30, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %388

321:                                              ; preds = %318
  %322 = load i32*, i32** %30, align 8
  %323 = call i32 @bo_add_32be(i32* %322, i32 0)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %31, align 4
  br label %324

324:                                              ; preds = %381, %321
  %325 = load i32, i32* %31, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp ult i32 %325, %328
  br i1 %329, label %330, label %384

330:                                              ; preds = %324
  %331 = load i32, i32* %31, align 4
  store i32 %331, i32* %32, align 4
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %333, align 8
  %335 = load i32, i32* %31, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %33, align 8
  br label %340

340:                                              ; preds = %365, %330
  %341 = load i32, i32* %31, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp ult i32 %341, %344
  br i1 %345, label %346, label %368

346:                                              ; preds = %340
  %347 = load i32, i32* %31, align 4
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %347, %350
  br i1 %351, label %363, label %352

352:                                              ; preds = %346
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = load i32, i32* %31, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %33, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %352, %346
  br label %368

364:                                              ; preds = %352
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %31, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %31, align 4
  br label %340

368:                                              ; preds = %363, %340
  %369 = load i32*, i32** %30, align 8
  %370 = load i32, i32* %31, align 4
  %371 = load i32, i32* %32, align 4
  %372 = sub i32 %370, %371
  %373 = call i32 @bo_add_32be(i32* %369, i32 %372)
  %374 = load i32*, i32** %30, align 8
  %375 = load i64, i64* %33, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @samples_from_vlc_tick(i64 %375, i32 %378)
  %380 = call i32 @bo_add_32be(i32* %374, i32 %379)
  br label %381

381:                                              ; preds = %368
  %382 = load i32, i32* %22, align 4
  %383 = add i32 %382, 1
  store i32 %383, i32* %22, align 4
  br label %324

384:                                              ; preds = %324
  %385 = load i32*, i32** %30, align 8
  %386 = load i32, i32* %22, align 4
  %387 = call i32 @bo_swap_32be(i32* %385, i32 12, i32 %386)
  br label %388

388:                                              ; preds = %384, %318, %310
  %389 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  store i32* %389, i32** %34, align 8
  %390 = load i32*, i32** %34, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %399, label %392

392:                                              ; preds = %388
  %393 = load i32*, i32** %10, align 8
  %394 = call i32 @bo_free(i32* %393)
  %395 = load i32*, i32** %11, align 8
  %396 = call i32 @bo_free(i32* %395)
  %397 = load i32*, i32** %19, align 8
  %398 = call i32 @bo_free(i32* %397)
  store i32* null, i32** %5, align 8
  br label %607

399:                                              ; preds = %388
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %400

400:                                              ; preds = %432, %399
  %401 = load i32, i32* %36, align 4
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp ult i32 %401, %404
  br i1 %405, label %406, label %435

406:                                              ; preds = %400
  %407 = load i32, i32* %36, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %406
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %411, align 8
  %413 = load i32, i32* %36, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %35, align 4
  br label %431

418:                                              ; preds = %406
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %420, align 8
  %422 = load i32, i32* %36, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %35, align 4
  %428 = icmp ne i32 %426, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %418
  store i32 0, i32* %35, align 4
  br label %435

430:                                              ; preds = %418
  br label %431

431:                                              ; preds = %430, %409
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %36, align 4
  %434 = add i32 %433, 1
  store i32 %434, i32* %36, align 4
  br label %400

435:                                              ; preds = %429, %400
  %436 = load i32*, i32** %34, align 8
  %437 = load i32, i32* %35, align 4
  %438 = call i32 @bo_add_32be(i32* %436, i32 %437)
  %439 = load i32*, i32** %34, align 8
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @bo_add_32be(i32* %439, i32 %442)
  %444 = load i32, i32* %35, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %468

446:                                              ; preds = %435
  store i32 0, i32* %37, align 4
  br label %447

447:                                              ; preds = %464, %446
  %448 = load i32, i32* %37, align 4
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = icmp ult i32 %448, %451
  br i1 %452, label %453, label %467

453:                                              ; preds = %447
  %454 = load i32*, i32** %34, align 8
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %456, align 8
  %458 = load i32, i32* %37, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @bo_add_32be(i32* %454, i32 %462)
  br label %464

464:                                              ; preds = %453
  %465 = load i32, i32* %37, align 4
  %466 = add i32 %465, 1
  store i32 %466, i32* %37, align 4
  br label %447

467:                                              ; preds = %447
  br label %468

468:                                              ; preds = %467, %435
  store i32* null, i32** %38, align 8
  store i32 0, i32* %22, align 4
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @VIDEO_ES, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %482, label %475

475:                                              ; preds = %468
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @AUDIO_ES, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %552

482:                                              ; preds = %475, %468
  store i64 -1, i64* %39, align 8
  store i32 0, i32* %40, align 4
  br label %483

483:                                              ; preds = %548, %482
  %484 = load i32, i32* %40, align 4
  %485 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = icmp ult i32 %484, %487
  br i1 %488, label %489, label %551

489:                                              ; preds = %483
  %490 = load i64, i64* %39, align 8
  %491 = icmp ne i64 %490, -1
  br i1 %491, label %492, label %517

492:                                              ; preds = %489
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 1
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %494, align 8
  %496 = load i32, i32* %40, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 3
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %502, align 8
  %504 = load i32, i32* %40, align 4
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 2
  %508 = load i64, i64* %507, align 8
  %509 = add nsw i64 %500, %508
  %510 = load i64, i64* %39, align 8
  %511 = add nsw i64 %510, %509
  store i64 %511, i64* %39, align 8
  %512 = load i64, i64* %39, align 8
  %513 = call i64 @VLC_TICK_FROM_SEC(i32 2)
  %514 = icmp slt i64 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %492
  br label %548

516:                                              ; preds = %492
  br label %517

517:                                              ; preds = %516, %489
  %518 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 1
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %519, align 8
  %521 = load i32, i32* %40, align 4
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %547

529:                                              ; preds = %517
  %530 = load i32*, i32** %38, align 8
  %531 = icmp eq i32* %530, null
  br i1 %531, label %532, label %540

532:                                              ; preds = %529
  %533 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  store i32* %533, i32** %38, align 8
  %534 = load i32*, i32** %38, align 8
  %535 = icmp ne i32* %534, null
  br i1 %535, label %537, label %536

536:                                              ; preds = %532
  br label %551

537:                                              ; preds = %532
  %538 = load i32*, i32** %38, align 8
  %539 = call i32 @bo_add_32be(i32* %538, i32 0)
  br label %540

540:                                              ; preds = %537, %529
  %541 = load i32*, i32** %38, align 8
  %542 = load i32, i32* %40, align 4
  %543 = add i32 1, %542
  %544 = call i32 @bo_add_32be(i32* %541, i32 %543)
  %545 = load i32, i32* %22, align 4
  %546 = add i32 %545, 1
  store i32 %546, i32* %22, align 4
  store i64 0, i64* %39, align 8
  br label %547

547:                                              ; preds = %540, %517
  br label %548

548:                                              ; preds = %547, %515
  %549 = load i32, i32* %40, align 4
  %550 = add i32 %549, 1
  store i32 %550, i32* %40, align 4
  br label %483

551:                                              ; preds = %536, %483
  br label %552

552:                                              ; preds = %551, %475
  %553 = load i32*, i32** %38, align 8
  %554 = icmp ne i32* %553, null
  br i1 %554, label %555, label %559

555:                                              ; preds = %552
  %556 = load i32*, i32** %38, align 8
  %557 = load i32, i32* %22, align 4
  %558 = call i32 @bo_swap_32be(i32* %556, i32 12, i32 %557)
  br label %559

559:                                              ; preds = %555, %552
  %560 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32* %560, i32** %41, align 8
  %561 = load i32*, i32** %41, align 8
  %562 = icmp ne i32* %561, null
  br i1 %562, label %576, label %563

563:                                              ; preds = %559
  %564 = load i32*, i32** %10, align 8
  %565 = call i32 @bo_free(i32* %564)
  %566 = load i32*, i32** %11, align 8
  %567 = call i32 @bo_free(i32* %566)
  %568 = load i32*, i32** %19, align 8
  %569 = call i32 @bo_free(i32* %568)
  %570 = load i32*, i32** %34, align 8
  %571 = call i32 @bo_free(i32* %570)
  %572 = load i32*, i32** %38, align 8
  %573 = call i32 @bo_free(i32* %572)
  %574 = load i32*, i32** %30, align 8
  %575 = call i32 @bo_free(i32* %574)
  store i32* null, i32** %5, align 8
  br label %607

576:                                              ; preds = %559
  %577 = load i32*, i32** %41, align 8
  %578 = load i32*, i32** %10, align 8
  %579 = call i32 @box_gather(i32* %577, i32* %578)
  %580 = load i32*, i32** %41, align 8
  %581 = load i32*, i32** %19, align 8
  %582 = call i32 @box_gather(i32* %580, i32* %581)
  %583 = load i32*, i32** %38, align 8
  %584 = icmp ne i32* %583, null
  br i1 %584, label %585, label %589

585:                                              ; preds = %576
  %586 = load i32*, i32** %41, align 8
  %587 = load i32*, i32** %38, align 8
  %588 = call i32 @box_gather(i32* %586, i32* %587)
  br label %589

589:                                              ; preds = %585, %576
  %590 = load i32*, i32** %30, align 8
  %591 = icmp ne i32* %590, null
  br i1 %591, label %592, label %596

592:                                              ; preds = %589
  %593 = load i32*, i32** %41, align 8
  %594 = load i32*, i32** %30, align 8
  %595 = call i32 @box_gather(i32* %593, i32* %594)
  br label %596

596:                                              ; preds = %592, %589
  %597 = load i32*, i32** %41, align 8
  %598 = load i32*, i32** %12, align 8
  %599 = call i32 @box_gather(i32* %597, i32* %598)
  %600 = load i32*, i32** %41, align 8
  %601 = load i32*, i32** %34, align 8
  %602 = call i32 @box_gather(i32* %600, i32* %601)
  %603 = load i32*, i32** %41, align 8
  %604 = load i32*, i32** %11, align 8
  %605 = call i32 @box_gather(i32* %603, i32* %604)
  %606 = load i32*, i32** %41, align 8
  store i32* %606, i32** %5, align 8
  br label %607

607:                                              ; preds = %596, %563, %392, %237, %111, %102, %45
  %608 = load i32*, i32** %5, align 8
  ret i32* %608
}

declare dso_local i32* @box_full_new(i8*, i32, i32) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

declare dso_local i32 @box_gather(i32*, i32*) #1

declare dso_local i32* @GetSounBox(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @GetVideBox(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @GetTextBox(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bo_free(i32*) #1

declare dso_local i32 @bo_add_64be(i32*, i32) #1

declare dso_local i32 @bo_swap_32be(i32*, i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

declare dso_local i32 @GetScaledEntryDuration(%struct.TYPE_11__*, i32, i64*, i32*) #1

declare dso_local i32 @samples_from_vlc_tick(i64, i32) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32* @box_new(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
