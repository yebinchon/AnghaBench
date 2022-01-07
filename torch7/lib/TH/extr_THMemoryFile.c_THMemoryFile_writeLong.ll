; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_writeLong.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_writeLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to write in a read-only file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64)* @THMemoryFile_writeLong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @THMemoryFile_writeLong(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @THArgCheck(i32 %25, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @THArgCheck(i32 %30, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %370

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %209

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %79

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %7, align 8
  %54 = mul i64 8, %53
  store i64 %54, i64* %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %55, i64 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memmove(i8* %70, i64* %71, i64 %72)
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %74
  store i64 %78, i64* %76, align 8
  br label %185

79:                                               ; preds = %46
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %125

84:                                               ; preds = %79
  %85 = load i64, i64* %7, align 8
  %86 = mul i64 4, %85
  store i64 %86, i64* %10, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %90, %91
  %93 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %87, i64 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = bitcast i8* %102 to i64*
  store i64* %103, i64** %11, align 8
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %116, %84
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %108
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %12, align 8
  br label %104

119:                                              ; preds = %104
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %184

125:                                              ; preds = %79
  %126 = call i32 (...) @THDiskFile_isLittleEndianCPU()
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i64, i64* %7, align 8
  %131 = mul i64 8, %130
  store i64 %131, i64* %14, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %135, %136
  %138 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %132, i64 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = bitcast i8* %147 to i64*
  store i64* %148, i64** %15, align 8
  store i64 0, i64* %16, align 8
  br label %149

149:                                              ; preds = %175, %125
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %7, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %178

153:                                              ; preds = %149
  %154 = load i64*, i64** %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = mul i64 2, %155
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = add i64 %156, %161
  %163 = getelementptr inbounds i64, i64* %154, i64 %162
  store i64 0, i64* %163, align 8
  %164 = load i64*, i64** %6, align 8
  %165 = load i64, i64* %16, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %15, align 8
  %169 = load i64, i64* %16, align 8
  %170 = mul i64 2, %169
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = add i64 %170, %172
  %174 = getelementptr inbounds i64, i64* %168, i64 %173
  store i64 %167, i64* %174, align 8
  br label %175

175:                                              ; preds = %153
  %176 = load i64, i64* %16, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %16, align 8
  br label %149

178:                                              ; preds = %149
  %179 = load i64, i64* %14, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %179
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %178, %119
  br label %185

185:                                              ; preds = %184, %52
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ugt i64 %188, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %185
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 0, i8* %207, align 1
  br label %208

208:                                              ; preds = %193, %185
  br label %368

209:                                              ; preds = %35
  store i64 0, i64* %17, align 8
  br label %210

210:                                              ; preds = %341, %209
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %7, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %344

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %264
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %230, %233
  %235 = trunc i64 %234 to i32
  %236 = load i64*, i64** %6, align 8
  %237 = load i64, i64* %17, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @snprintf(i8* %224, i32 %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %239)
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = icmp sgt i32 %241, -1
  br i1 %242, label %243, label %264

243:                                              ; preds = %215
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = sub i64 %251, %254
  %256 = icmp ult i64 %245, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %243
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %262, %259
  store i64 %263, i64* %261, align 8
  br label %281

264:                                              ; preds = %243, %215
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = sdiv i32 %275, 2
  %277 = add nsw i32 %270, %276
  %278 = add nsw i32 %277, 2
  %279 = sext i32 %278 to i64
  %280 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %265, i64 %279)
  br label %215

281:                                              ; preds = %257
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %340

287:                                              ; preds = %281
  %288 = load i64, i64* %17, align 8
  %289 = load i64, i64* %7, align 8
  %290 = sub i64 %289, 1
  %291 = icmp ult i64 %288, %290
  br i1 %291, label %292, label %313

292:                                              ; preds = %287
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, 1
  %298 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %293, i64 %297)
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  %308 = call i32 @sprintf(i8* %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = add i64 %311, 1
  store i64 %312, i64* %310, align 8
  br label %313

313:                                              ; preds = %292, %287
  %314 = load i64, i64* %17, align 8
  %315 = load i64, i64* %7, align 8
  %316 = sub i64 %315, 1
  %317 = icmp eq i64 %314, %316
  br i1 %317, label %318, label %339

318:                                              ; preds = %313
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = add i64 %322, 1
  %324 = call i32 @THMemoryFile_grow(%struct.TYPE_7__* %319, i64 %323)
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = call i32 @sprintf(i8* %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %318, %313
  br label %340

340:                                              ; preds = %339, %281
  br label %341

341:                                              ; preds = %340
  %342 = load i64, i64* %17, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %17, align 8
  br label %210

344:                                              ; preds = %210
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp ugt i64 %347, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %344
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  store i64 %355, i64* %357, align 8
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 3
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds i8, i8* %362, i64 %365
  store i8 0, i8* %366, align 1
  br label %367

367:                                              ; preds = %352, %344
  br label %368

368:                                              ; preds = %367, %208
  %369 = load i64, i64* %7, align 8
  store i64 %369, i64* %4, align 8
  br label %370

370:                                              ; preds = %368, %34
  %371 = load i64, i64* %4, align 8
  ret i64 %371
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i32 @THMemoryFile_grow(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memmove(i8*, i64*, i64) #1

declare dso_local i32 @THDiskFile_isLittleEndianCPU(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
