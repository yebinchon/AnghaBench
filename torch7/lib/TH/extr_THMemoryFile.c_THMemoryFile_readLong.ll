; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_readLong.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_readLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to read in a write-only file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%ld%n\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"read error: read %d blocks instead of %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64)* @THMemoryFile_readLong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @THMemoryFile_readLong(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %9, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @THArgCheck(i32 %33, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @THArgCheck(i32 %38, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %369

43:                                               ; preds = %3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %236

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %60, label %105

60:                                               ; preds = %54, %49
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 8, %61
  store i64 %62, i64* %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %65, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ule i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i64, i64* %10, align 8
  br label %82

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  br label %82

82:                                               ; preds = %74, %72
  %83 = phi i64 [ %73, %72 ], [ %81, %74 ]
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = udiv i64 %84, 8
  store i64 %85, i64* %9, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i64, i64* %9, align 8
  %97 = mul i64 %96, 8
  %98 = call i32 @memmove(i64* %86, i8* %95, i64 %97)
  %99 = load i64, i64* %9, align 8
  %100 = mul i64 %99, 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %235

105:                                              ; preds = %54
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %168

110:                                              ; preds = %105
  %111 = load i64, i64* %7, align 8
  %112 = mul i64 4, %111
  store i64 %112, i64* %12, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %115, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ule i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i64, i64* %12, align 8
  br label %132

124:                                              ; preds = %110
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  br label %132

132:                                              ; preds = %124, %122
  %133 = phi i64 [ %123, %122 ], [ %131, %124 ]
  store i64 %133, i64* %13, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = bitcast i8* %142 to i64*
  store i64* %143, i64** %14, align 8
  %144 = load i64, i64* %13, align 8
  %145 = udiv i64 %144, 4
  store i64 %145, i64* %9, align 8
  store i64 0, i64* %15, align 8
  br label %146

146:                                              ; preds = %158, %132
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %9, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i64*, i64** %14, align 8
  %152 = load i64, i64* %15, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %6, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %150
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %15, align 8
  br label %146

161:                                              ; preds = %146
  %162 = load i64, i64* %9, align 8
  %163 = mul i64 %162, 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %163
  store i64 %167, i64* %165, align 8
  br label %234

168:                                              ; preds = %105
  %169 = call i32 (...) @THDiskFile_isLittleEndianCPU()
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %16, align 4
  %173 = load i64, i64* %7, align 8
  %174 = mul i64 8, %173
  store i64 %174, i64* %17, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = bitcast i8* %183 to i64*
  store i64* %184, i64** %18, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %17, align 8
  %189 = add i64 %187, %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ule i64 %189, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %168
  %195 = load i64, i64* %17, align 8
  br label %204

196:                                              ; preds = %168
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  br label %204

204:                                              ; preds = %196, %194
  %205 = phi i64 [ %195, %194 ], [ %203, %196 ]
  store i64 %205, i64* %19, align 8
  %206 = load i64, i64* %19, align 8
  %207 = udiv i64 %206, 8
  store i64 %207, i64* %9, align 8
  store i64 0, i64* %20, align 8
  br label %208

208:                                              ; preds = %224, %204
  %209 = load i64, i64* %20, align 8
  %210 = load i64, i64* %9, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %208
  %213 = load i64*, i64** %18, align 8
  %214 = load i64, i64* %20, align 8
  %215 = mul i64 2, %214
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 %215, %217
  %219 = getelementptr inbounds i64, i64* %213, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %6, align 8
  %222 = load i64, i64* %20, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  store i64 %220, i64* %223, align 8
  br label %224

224:                                              ; preds = %212
  %225 = load i64, i64* %20, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %20, align 8
  br label %208

227:                                              ; preds = %208
  %228 = load i64, i64* %9, align 8
  %229 = mul i64 %228, 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, %229
  store i64 %233, i64* %231, align 8
  br label %234

234:                                              ; preds = %227, %161
  br label %235

235:                                              ; preds = %234, %82
  br label %349

236:                                              ; preds = %43
  store i64 0, i64* %21, align 8
  br label %237

237:                                              ; preds = %309, %236
  %238 = load i64, i64* %21, align 8
  %239 = load i64, i64* %7, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %312

241:                                              ; preds = %237
  store i64 0, i64* %22, align 8
  store i8 0, i8* %23, align 1
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  %251 = call i8* @THMemoryFile_strnextspace(i8* %250, i8* %23)
  store i8* %251, i8** %24, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i8, i8* %256, i64 %259
  %261 = load i64*, i64** %6, align 8
  %262 = load i64, i64* %21, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = call i32 @sscanf(i8* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %263, i32* %25)
  store i32 %264, i32* %26, align 4
  %265 = load i32, i32* %25, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %22, align 8
  %267 = load i32, i32* %26, align 4
  %268 = icmp sle i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %241
  br label %312

270:                                              ; preds = %241
  %271 = load i64, i64* %9, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %9, align 8
  br label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %26, align 4
  %275 = load i32, i32* @EOF, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %296

277:                                              ; preds = %273
  br label %278

278:                                              ; preds = %290, %277
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 4
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = icmp ne i8 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %278
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, 1
  store i64 %294, i64* %292, align 8
  br label %278

295:                                              ; preds = %278
  br label %302

296:                                              ; preds = %273
  %297 = load i64, i64* %22, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, %297
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %296, %295
  %303 = load i8*, i8** %24, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i8, i8* %23, align 1
  %307 = load i8*, i8** %24, align 8
  store i8 %306, i8* %307, align 1
  br label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* %21, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %21, align 8
  br label %237

312:                                              ; preds = %269, %237
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %348

318:                                              ; preds = %312
  %319 = load i64, i64* %7, align 8
  %320 = icmp ugt i64 %319, 0
  br i1 %320, label %321, label %348

321:                                              ; preds = %318
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = icmp slt i64 %324, %327
  br i1 %328, label %329, label %347

329:                                              ; preds = %321
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 4
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp eq i32 %340, 10
  br i1 %341, label %342, label %347

342:                                              ; preds = %329
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %344, align 8
  br label %347

347:                                              ; preds = %342, %329, %321
  br label %348

348:                                              ; preds = %347, %318, %312
  br label %349

349:                                              ; preds = %348, %235
  %350 = load i64, i64* %9, align 8
  %351 = load i64, i64* %7, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %367

353:                                              ; preds = %349
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  store i32 1, i32* %356, align 8
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %353
  %363 = load i64, i64* %9, align 8
  %364 = load i64, i64* %7, align 8
  %365 = call i32 @THError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %363, i64 %364)
  br label %366

366:                                              ; preds = %362, %353
  br label %367

367:                                              ; preds = %366, %349
  %368 = load i64, i64* %9, align 8
  store i64 %368, i64* %4, align 8
  br label %369

369:                                              ; preds = %367, %42
  %370 = load i64, i64* %4, align 8
  ret i64 %370
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i32 @memmove(i64*, i8*, i64) #1

declare dso_local i32 @THDiskFile_isLittleEndianCPU(...) #1

declare dso_local i8* @THMemoryFile_strnextspace(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*) #1

declare dso_local i32 @THError(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
