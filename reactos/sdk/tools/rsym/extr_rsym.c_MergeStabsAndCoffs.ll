; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_MergeStabsAndCoffs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_MergeStabsAndCoffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to allocate memory for merged symbols\0A\00", align 1
@CompareSymEntry = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__**, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*)* @MergeStabsAndCoffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MergeStabsAndCoffs(i32* %0, %struct.TYPE_7__** %1, i32 %2, %struct.TYPE_7__* %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %26, align 8
  store i32 0, i32* %7, align 4
  br label %340

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_7__* @malloc(i32 %33)
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %340

42:                                               ; preds = %27
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %21, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %288, %42
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %291

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = bitcast %struct.TYPE_7__* %53 to i8*
  %59 = bitcast %struct.TYPE_7__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 32, i1 false)
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %179, %47
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br label %80

80:                                               ; preds = %66, %62
  %81 = phi i1 [ false, %62 ], [ %79, %66 ]
  br i1 %81, label %82, label %182

82:                                               ; preds = %80
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %90
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i64 %106, i64* %113, align 8
  br label %114

114:                                              ; preds = %100, %90, %82
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %114
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %122
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  store i64 %138, i64* %145, align 8
  br label %146

146:                                              ; preds = %132, %122, %114
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %146
  %155 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %154
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  store i64 %170, i64* %177, align 8
  br label %178

178:                                              ; preds = %164, %154, %146
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %62

182:                                              ; preds = %80
  %183 = load i32, i32* %15, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %224, %182
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp sle i64 %195, %203
  br label %205

205:                                              ; preds = %189, %185
  %206 = phi i1 [ false, %185 ], [ %204, %189 ]
  br i1 %206, label %207, label %227

207:                                              ; preds = %205
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %207
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  store %struct.TYPE_7__* %219, %struct.TYPE_7__** %21, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %215, %207
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %185

227:                                              ; preds = %205
  %228 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %19, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %238 = icmp ne %struct.TYPE_7__* %237, null
  br i1 %238, label %239, label %270

239:                                              ; preds = %227
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = load i32*, i32** %8, align 8
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp sle i64 %242, %250
  br i1 %251, label %252, label %270

252:                                              ; preds = %239
  %253 = load i64, i64* %17, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp slt i64 %253, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %252
  %259 = load i32, i32* %20, align 4
  %260 = sext i32 %259 to i64
  %261 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  store i64 %260, i64* %267, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  store i64 0, i64* %269, align 8
  br label %270

270:                                              ; preds = %258, %252, %239, %227
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %19, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %270
  %275 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %17, align 8
  br label %283

283:                                              ; preds = %274, %270
  %284 = load i32, i32* %19, align 4
  store i32 %284, i32* %18, align 4
  %285 = load i32*, i32** %8, align 8
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %283
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  br label %43

291:                                              ; preds = %43
  store i32 0, i32* %16, align 4
  br label %292

292:                                              ; preds = %329, %291
  %293 = load i32, i32* %16, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %332

296:                                              ; preds = %292
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %298 = load i32, i32* %16, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %328

304:                                              ; preds = %296
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %328

312:                                              ; preds = %304
  %313 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = load i32*, i32** %8, align 8
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i64 %317
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %320 = load i32, i32* %16, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i64 %321
  %323 = bitcast %struct.TYPE_7__* %318 to i8*
  %324 = bitcast %struct.TYPE_7__* %322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %323, i8* align 8 %324, i64 32, i1 false)
  %325 = load i32*, i32** %8, align 8
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %312, %304, %296
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %16, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %16, align 4
  br label %292

332:                                              ; preds = %292
  %333 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32*, i32** %8, align 8
  %336 = load i32, i32* %335, align 4
  %337 = load i64, i64* @CompareSymEntry, align 8
  %338 = inttoptr i64 %337 to i32 (i8*, i8*)*
  %339 = call i32 @qsort(%struct.TYPE_7__* %334, i32 %336, i32 4, i32 (i8*, i8*)* %338)
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %332, %39, %25
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qsort(%struct.TYPE_7__*, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
