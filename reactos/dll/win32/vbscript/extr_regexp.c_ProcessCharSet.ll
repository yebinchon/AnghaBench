; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_ProcessCharSet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_ProcessCharSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@REG_FOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ProcessCharSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ProcessCharSet(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %8, align 8
  store i8 0, i8* %9, align 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 1, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = icmp sle i64 %52, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* @TRUE, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %76, i64 %82
  store i8* %83, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %96, label %102

96:                                               ; preds = %2
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 93
  br label %102

102:                                              ; preds = %96, %2
  %103 = phi i1 [ false, %2 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = ashr i32 %108, 3
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @heap_alloc(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %102
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @JS_ReportOutOfMemory(i32 %124)
  %126 = load i64, i64* @FALSE, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* @FALSE, align 8
  store i64 %129, i64* %3, align 8
  br label %509

130:                                              ; preds = %102
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @memset(i32 %134, i32 0, i32 %135)
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %3, align 8
  br label %509

142:                                              ; preds = %130
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 94
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @FALSE, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %6, align 8
  br label %165

157:                                              ; preds = %142
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  br label %165

165:                                              ; preds = %157, %147
  br label %166

166:                                              ; preds = %506, %392, %370, %348, %327, %298, %295, %165
  %167 = load i8*, i8** %6, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = icmp ne i8* %167, %168
  br i1 %169, label %170, label %507

170:                                              ; preds = %166
  %171 = load i8*, i8** %6, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  switch i32 %173, label %396 [
    i32 92, label %174
  ]

174:                                              ; preds = %170
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %6, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %6, align 8
  %179 = load i8, i8* %177, align 1
  store i8 %179, i8* %12, align 1
  %180 = load i8, i8* %12, align 1
  %181 = sext i8 %180 to i32
  switch i32 %181, label %393 [
    i32 98, label %182
    i32 102, label %183
    i32 110, label %184
    i32 114, label %185
    i32 116, label %186
    i32 118, label %187
    i32 99, label %188
    i32 120, label %208
    i32 117, label %209
    i32 48, label %246
    i32 49, label %246
    i32 50, label %246
    i32 51, label %246
    i32 52, label %246
    i32 53, label %246
    i32 54, label %246
    i32 55, label %246
    i32 100, label %295
    i32 68, label %298
    i32 115, label %307
    i32 83, label %328
    i32 119, label %349
    i32 87, label %371
  ]

182:                                              ; preds = %174
  store i8 8, i8* %13, align 1
  br label %395

183:                                              ; preds = %174
  store i8 12, i8* %13, align 1
  br label %395

184:                                              ; preds = %174
  store i8 10, i8* %13, align 1
  br label %395

185:                                              ; preds = %174
  store i8 13, i8* %13, align 1
  br label %395

186:                                              ; preds = %174
  store i8 9, i8* %13, align 1
  br label %395

187:                                              ; preds = %174
  store i8 11, i8* %13, align 1
  br label %395

188:                                              ; preds = %174
  %189 = load i8*, i8** %6, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = icmp ult i8* %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i8*, i8** %6, align 8
  %194 = load i8, i8* %193, align 1
  %195 = call i32 @JS_ISWORD(i8 signext %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %6, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  %202 = and i32 %201, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %13, align 1
  br label %207

204:                                              ; preds = %192, %188
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 -1
  store i8* %206, i8** %6, align 8
  store i8 92, i8* %13, align 1
  br label %207

207:                                              ; preds = %204, %197
  br label %395

208:                                              ; preds = %174
  store i32 2, i32* %14, align 4
  br label %210

209:                                              ; preds = %174
  store i32 4, i32* %14, align 4
  br label %210

210:                                              ; preds = %209, %208
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %240, %210
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i8*, i8** %6, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = icmp ult i8* %216, %217
  br label %219

219:                                              ; preds = %215, %211
  %220 = phi i1 [ false, %211 ], [ %218, %215 ]
  br i1 %220, label %221, label %243

221:                                              ; preds = %219
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %6, align 8
  %224 = load i8, i8* %222, align 1
  store i8 %224, i8* %12, align 1
  %225 = load i8, i8* %12, align 1
  %226 = call i32 @isASCIIHexDigit(i8 signext %225, i32* %16)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i8*, i8** %6, align 8
  %232 = sext i32 %230 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8* %234, i8** %6, align 8
  store i32 92, i32* %11, align 4
  br label %243

235:                                              ; preds = %221
  %236 = load i32, i32* %11, align 4
  %237 = shl i32 %236, 4
  %238 = load i32, i32* %16, align 4
  %239 = or i32 %237, %238
  store i32 %239, i32* %11, align 4
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %15, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %15, align 4
  br label %211

243:                                              ; preds = %228, %219
  %244 = load i32, i32* %11, align 4
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %13, align 1
  br label %395

246:                                              ; preds = %174, %174, %174, %174, %174, %174, %174, %174
  %247 = load i8, i8* %12, align 1
  %248 = call i32 @JS7_UNDEC(i8 signext %247)
  store i32 %248, i32* %11, align 4
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  store i8 %250, i8* %12, align 1
  %251 = load i8, i8* %12, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp sle i32 48, %252
  br i1 %253, label %254, label %292

254:                                              ; preds = %246
  %255 = load i8, i8* %12, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp sle i32 %256, 55
  br i1 %257, label %258, label %292

258:                                              ; preds = %254
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %6, align 8
  %261 = load i32, i32* %11, align 4
  %262 = mul nsw i32 8, %261
  %263 = load i8, i8* %12, align 1
  %264 = call i32 @JS7_UNDEC(i8 signext %263)
  %265 = add nsw i32 %262, %264
  store i32 %265, i32* %11, align 4
  %266 = load i8*, i8** %6, align 8
  %267 = load i8, i8* %266, align 1
  store i8 %267, i8* %12, align 1
  %268 = load i8, i8* %12, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp sle i32 48, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %258
  %272 = load i8, i8* %12, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp sle i32 %273, 55
  br i1 %274, label %275, label %291

275:                                              ; preds = %271
  %276 = load i8*, i8** %6, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %6, align 8
  %278 = load i32, i32* %11, align 4
  %279 = mul nsw i32 8, %278
  %280 = load i8, i8* %12, align 1
  %281 = call i32 @JS7_UNDEC(i8 signext %280)
  %282 = add nsw i32 %279, %281
  store i32 %282, i32* %15, align 4
  %283 = load i32, i32* %15, align 4
  %284 = icmp sle i32 %283, 255
  br i1 %284, label %285, label %287

285:                                              ; preds = %275
  %286 = load i32, i32* %15, align 4
  store i32 %286, i32* %11, align 4
  br label %290

287:                                              ; preds = %275
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 -1
  store i8* %289, i8** %6, align 8
  br label %290

290:                                              ; preds = %287, %285
  br label %291

291:                                              ; preds = %290, %271, %258
  br label %292

292:                                              ; preds = %291, %254, %246
  %293 = load i32, i32* %11, align 4
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %13, align 1
  br label %395

295:                                              ; preds = %174
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %297 = call i32 @AddCharacterRangeToCharSet(%struct.TYPE_14__* %296, i8 signext 48, i8 signext 57)
  br label %166

298:                                              ; preds = %174
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %300 = call i32 @AddCharacterRangeToCharSet(%struct.TYPE_14__* %299, i8 signext 0, i8 signext 47)
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = trunc i32 %304 to i8
  %306 = call i32 @AddCharacterRangeToCharSet(%struct.TYPE_14__* %301, i8 signext 58, i8 signext %305)
  br label %166

307:                                              ; preds = %174
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %15, align 4
  br label %311

311:                                              ; preds = %324, %307
  %312 = load i32, i32* %15, align 4
  %313 = icmp sge i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @isspaceW(i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %320 = load i32, i32* %15, align 4
  %321 = trunc i32 %320 to i8
  %322 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %319, i8 signext %321)
  br label %323

323:                                              ; preds = %318, %314
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %15, align 4
  br label %311

327:                                              ; preds = %311
  br label %166

328:                                              ; preds = %174
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %15, align 4
  br label %332

332:                                              ; preds = %345, %328
  %333 = load i32, i32* %15, align 4
  %334 = icmp sge i32 %333, 0
  br i1 %334, label %335, label %348

335:                                              ; preds = %332
  %336 = load i32, i32* %15, align 4
  %337 = call i32 @isspaceW(i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %335
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %341 = load i32, i32* %15, align 4
  %342 = trunc i32 %341 to i8
  %343 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %340, i8 signext %342)
  br label %344

344:                                              ; preds = %339, %335
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %15, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %15, align 4
  br label %332

348:                                              ; preds = %332
  br label %166

349:                                              ; preds = %174
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  store i32 %352, i32* %15, align 4
  br label %353

353:                                              ; preds = %367, %349
  %354 = load i32, i32* %15, align 4
  %355 = icmp sge i32 %354, 0
  br i1 %355, label %356, label %370

356:                                              ; preds = %353
  %357 = load i32, i32* %15, align 4
  %358 = trunc i32 %357 to i8
  %359 = call i32 @JS_ISWORD(i8 signext %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %363 = load i32, i32* %15, align 4
  %364 = trunc i32 %363 to i8
  %365 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %362, i8 signext %364)
  br label %366

366:                                              ; preds = %361, %356
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %15, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %15, align 4
  br label %353

370:                                              ; preds = %353
  br label %166

371:                                              ; preds = %174
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  store i32 %374, i32* %15, align 4
  br label %375

375:                                              ; preds = %389, %371
  %376 = load i32, i32* %15, align 4
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %375
  %379 = load i32, i32* %15, align 4
  %380 = trunc i32 %379 to i8
  %381 = call i32 @JS_ISWORD(i8 signext %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %378
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %385 = load i32, i32* %15, align 4
  %386 = trunc i32 %385 to i8
  %387 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %384, i8 signext %386)
  br label %388

388:                                              ; preds = %383, %378
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %15, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %15, align 4
  br label %375

392:                                              ; preds = %375
  br label %166

393:                                              ; preds = %174
  %394 = load i8, i8* %12, align 1
  store i8 %394, i8* %13, align 1
  br label %395

395:                                              ; preds = %393, %292, %243, %207, %187, %186, %185, %184, %183, %182
  br label %400

396:                                              ; preds = %170
  %397 = load i8*, i8** %6, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %6, align 8
  %399 = load i8, i8* %397, align 1
  store i8 %399, i8* %13, align 1
  br label %400

400:                                              ; preds = %396, %395
  %401 = load i64, i64* %8, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %467

403:                                              ; preds = %400
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @REG_FOLD, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %460

412:                                              ; preds = %403
  %413 = load i8, i8* %9, align 1
  %414 = sext i8 %413 to i32
  %415 = load i8, i8* %13, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp sle i32 %414, %416
  %418 = zext i1 %417 to i32
  %419 = call i32 @assert(i32 %418)
  %420 = load i8, i8* %9, align 1
  %421 = sext i8 %420 to i32
  store i32 %421, i32* %15, align 4
  br label %422

422:                                              ; preds = %456, %412
  %423 = load i32, i32* %15, align 4
  %424 = load i8, i8* %13, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp sle i32 %423, %425
  br i1 %426, label %427, label %459

427:                                              ; preds = %422
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %429 = load i32, i32* %15, align 4
  %430 = trunc i32 %429 to i8
  %431 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %428, i8 signext %430)
  %432 = load i32, i32* %15, align 4
  %433 = trunc i32 %432 to i8
  %434 = call signext i8 @toupperW(i8 signext %433)
  store i8 %434, i8* %17, align 1
  %435 = load i32, i32* %15, align 4
  %436 = trunc i32 %435 to i8
  %437 = call signext i8 @tolowerW(i8 signext %436)
  store i8 %437, i8* %18, align 1
  %438 = load i32, i32* %15, align 4
  %439 = load i8, i8* %17, align 1
  %440 = sext i8 %439 to i32
  %441 = icmp ne i32 %438, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %427
  %443 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %444 = load i8, i8* %17, align 1
  %445 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %443, i8 signext %444)
  br label %446

446:                                              ; preds = %442, %427
  %447 = load i32, i32* %15, align 4
  %448 = load i8, i8* %18, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp ne i32 %447, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %453 = load i8, i8* %18, align 1
  %454 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %452, i8 signext %453)
  br label %455

455:                                              ; preds = %451, %446
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %15, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %15, align 4
  br label %422

459:                                              ; preds = %422
  br label %465

460:                                              ; preds = %403
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %462 = load i8, i8* %9, align 1
  %463 = load i8, i8* %13, align 1
  %464 = call i32 @AddCharacterRangeToCharSet(%struct.TYPE_14__* %461, i8 signext %462, i8 signext %463)
  br label %465

465:                                              ; preds = %460, %459
  %466 = load i64, i64* @FALSE, align 8
  store i64 %466, i64* %8, align 8
  br label %506

467:                                              ; preds = %400
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @REG_FOLD, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %467
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %478 = load i8, i8* %13, align 1
  %479 = call signext i8 @toupperW(i8 signext %478)
  %480 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %477, i8 signext %479)
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %482 = load i8, i8* %13, align 1
  %483 = call signext i8 @tolowerW(i8 signext %482)
  %484 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %481, i8 signext %483)
  br label %489

485:                                              ; preds = %467
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %487 = load i8, i8* %13, align 1
  %488 = call i32 @AddCharacterToCharSet(%struct.TYPE_14__* %486, i8 signext %487)
  br label %489

489:                                              ; preds = %485, %476
  %490 = load i8*, i8** %6, align 8
  %491 = load i8*, i8** %7, align 8
  %492 = getelementptr inbounds i8, i8* %491, i64 -1
  %493 = icmp ult i8* %490, %492
  br i1 %493, label %494, label %505

494:                                              ; preds = %489
  %495 = load i8*, i8** %6, align 8
  %496 = load i8, i8* %495, align 1
  %497 = sext i8 %496 to i32
  %498 = icmp eq i32 %497, 45
  br i1 %498, label %499, label %504

499:                                              ; preds = %494
  %500 = load i8*, i8** %6, align 8
  %501 = getelementptr inbounds i8, i8* %500, i32 1
  store i8* %501, i8** %6, align 8
  %502 = load i64, i64* @TRUE, align 8
  store i64 %502, i64* %8, align 8
  %503 = load i8, i8* %13, align 1
  store i8 %503, i8* %9, align 1
  br label %504

504:                                              ; preds = %499, %494
  br label %505

505:                                              ; preds = %504, %489
  br label %506

506:                                              ; preds = %505, %465
  br label %166

507:                                              ; preds = %166
  %508 = load i64, i64* @TRUE, align 8
  store i64 %508, i64* %3, align 8
  br label %509

509:                                              ; preds = %507, %140, %121
  %510 = load i64, i64* %3, align 8
  ret i64 %510
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @heap_alloc(i32) #1

declare dso_local i32 @JS_ReportOutOfMemory(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @JS_ISWORD(i8 signext) #1

declare dso_local i32 @isASCIIHexDigit(i8 signext, i32*) #1

declare dso_local i32 @JS7_UNDEC(i8 signext) #1

declare dso_local i32 @AddCharacterRangeToCharSet(%struct.TYPE_14__*, i8 signext, i8 signext) #1

declare dso_local i32 @isspaceW(i32) #1

declare dso_local i32 @AddCharacterToCharSet(%struct.TYPE_14__*, i8 signext) #1

declare dso_local signext i8 @toupperW(i8 signext) #1

declare dso_local signext i8 @tolowerW(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
