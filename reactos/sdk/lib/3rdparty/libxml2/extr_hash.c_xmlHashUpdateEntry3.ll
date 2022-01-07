; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashUpdateEntry3.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashUpdateEntry3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i8*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashUpdateEntry3(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 (i8*, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i32*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i32*)* %5, i32 (i8*, i32*)** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  store i32 -1, i32* %7, align 4
  br label %348

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @xmlDictOwns(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @xmlDictLookup(i32* %38, i32* %39, i32 -1)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %348

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @xmlDictOwns(i32* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32* @xmlDictLookup(i32* %58, i32* %59, i32 -1)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 -1, i32* %7, align 4
  br label %348

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %48, %45
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @xmlDictOwns(i32* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32* @xmlDictLookup(i32* %78, i32* %79, i32 -1)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 -1, i32* %7, align 4
  br label %348

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %68, %65
  br label %86

86:                                               ; preds = %85, %23
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i64 @xmlHashComputeKey(%struct.TYPE_6__* %87, i32* %88, i32* %89, i32* %90)
  store i64 %91, i64* %14, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  br label %283

101:                                              ; preds = %86
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %191

106:                                              ; preds = %101
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %16, align 8
  br label %112

112:                                              ; preds = %152, %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = icmp ne %struct.TYPE_7__* %115, null
  br i1 %116, label %117, label %156

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = icmp eq i32* %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %117
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = icmp eq i32* %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %123
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = icmp eq i32* %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %137 = icmp ne i32 (i8*, i32*)* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 %139(i8* %142, i32* %145)
  br label %147

147:                                              ; preds = %138, %135
  %148 = load i8*, i8** %12, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  store i32 0, i32* %7, align 4
  br label %348

151:                                              ; preds = %129, %123, %117
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %16, align 8
  br label %112

156:                                              ; preds = %112
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = icmp eq i32* %159, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %156
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = icmp eq i32* %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %162
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = icmp eq i32* %171, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %168
  %175 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %176 = icmp ne i32 (i8*, i32*)* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 %178(i8* %181, i32* %184)
  br label %186

186:                                              ; preds = %177, %174
  %187 = load i8*, i8** %12, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  store i32 0, i32* %7, align 4
  br label %348

190:                                              ; preds = %168, %162, %156
  br label %282

191:                                              ; preds = %101
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %195
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %16, align 8
  br label %197

197:                                              ; preds = %240, %191
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = icmp ne %struct.TYPE_7__* %200, null
  br i1 %201, label %202, label %244

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %9, align 8
  %207 = call i64 @xmlStrEqual(i32* %205, i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %239

209:                                              ; preds = %202
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = call i64 @xmlStrEqual(i32* %212, i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %209
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = call i64 @xmlStrEqual(i32* %219, i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %216
  %224 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %225 = icmp ne i32 (i8*, i32*)* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 %227(i8* %230, i32* %233)
  br label %235

235:                                              ; preds = %226, %223
  %236 = load i8*, i8** %12, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  store i8* %236, i8** %238, align 8
  store i32 0, i32* %7, align 4
  br label %348

239:                                              ; preds = %216, %209, %202
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  store %struct.TYPE_7__* %243, %struct.TYPE_7__** %16, align 8
  br label %197

244:                                              ; preds = %197
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = call i64 @xmlStrEqual(i32* %247, i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %281

251:                                              ; preds = %244
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = call i64 @xmlStrEqual(i32* %254, i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %281

258:                                              ; preds = %251
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = load i32*, i32** %11, align 8
  %263 = call i64 @xmlStrEqual(i32* %261, i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %267 = icmp ne i32 (i8*, i32*)* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 %269(i8* %272, i32* %275)
  br label %277

277:                                              ; preds = %268, %265
  %278 = load i8*, i8** %12, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  store i32 0, i32* %7, align 4
  br label %348

281:                                              ; preds = %258, %251, %244
  br label %282

282:                                              ; preds = %281, %190
  br label %283

283:                                              ; preds = %282, %100
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %285 = icmp eq %struct.TYPE_7__* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load i64, i64* %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 %290
  store %struct.TYPE_7__* %291, %struct.TYPE_7__** %15, align 8
  br label %298

292:                                              ; preds = %283
  %293 = call %struct.TYPE_7__* @xmlMalloc(i32 4)
  store %struct.TYPE_7__* %293, %struct.TYPE_7__** %15, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %295 = icmp eq %struct.TYPE_7__* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 -1, i32* %7, align 4
  br label %348

297:                                              ; preds = %292
  br label %298

298:                                              ; preds = %297, %286
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %313

303:                                              ; preds = %298
  %304 = load i32*, i32** %9, align 8
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 5
  store i32* %304, i32** %306, align 8
  %307 = load i32*, i32** %10, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  store i32* %307, i32** %309, align 8
  %310 = load i32*, i32** %11, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  store i32* %310, i32** %312, align 8
  br label %329

313:                                              ; preds = %298
  %314 = load i32*, i32** %9, align 8
  %315 = call i8* @xmlStrdup(i32* %314)
  %316 = bitcast i8* %315 to i32*
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 5
  store i32* %316, i32** %318, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call i8* @xmlStrdup(i32* %319)
  %321 = bitcast i8* %320 to i32*
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 4
  store i32* %321, i32** %323, align 8
  %324 = load i32*, i32** %11, align 8
  %325 = call i8* @xmlStrdup(i32* %324)
  %326 = bitcast i8* %325 to i32*
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 3
  store i32* %326, i32** %328, align 8
  br label %329

329:                                              ; preds = %313, %303
  %330 = load i8*, i8** %12, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 2
  store i8* %330, i8** %332, align 8
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %334, align 8
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  store i64 1, i64* %336, align 8
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %342 = icmp ne %struct.TYPE_7__* %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %329
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  store %struct.TYPE_7__* %344, %struct.TYPE_7__** %346, align 8
  br label %347

347:                                              ; preds = %343, %329
  store i32 0, i32* %7, align 4
  br label %348

348:                                              ; preds = %347, %296, %277, %235, %186, %147, %83, %63, %43, %22
  %349 = load i32, i32* %7, align 4
  ret i32 %349
}

declare dso_local i32 @xmlDictOwns(i32*, i32*) #1

declare dso_local i32* @xmlDictLookup(i32*, i32*, i32) #1

declare dso_local i64 @xmlHashComputeKey(%struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @xmlMalloc(i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
