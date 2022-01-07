; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_carith.c_carith_int64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_carith.c_carith_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }

@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CTID_UINT64 = common dso_local global i32 0, align 4
@CTID_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32)* @carith_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carith_int64(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ctype_isnum(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %287

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %28, i64 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %34, label %287

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ctype_isnum(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %287

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 8
  br i1 %52, label %53, label %287

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CTF_UNSIGNED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %93, label %73

73:                                               ; preds = %64, %53
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CTF_UNSIGNED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %87, i64 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %95

93:                                               ; preds = %84, %64
  %94 = load i32, i32* @CTID_UINT64, align 4
  br label %97

95:                                               ; preds = %84, %73
  %96 = load i32, i32* @CTID_INT64, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %10, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32* @ctype_get(i32* %99, i32 %100)
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %106, i64 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = bitcast i64* %13 to i32*
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lj_cconv_ct_ct(i32* %102, i32* %103, %struct.TYPE_10__* %108, i32* %109, i32 %114, i32 0)
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 128
  br i1 %117, label %118, label %133

118:                                              ; preds = %97
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %123, i64 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = bitcast i64* %14 to i32*
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @lj_cconv_ct_ct(i32* %119, i32* %120, %struct.TYPE_10__* %125, i32* %126, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %118, %97
  %134 = load i32, i32* %9, align 4
  switch i32 %134, label %191 [
    i32 135, label %135
    i32 133, label %145
    i32 134, label %168
  ]

135:                                              ; preds = %133
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, 1
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @setboolV(i64 %139, i32 %143)
  store i32 1, i32* %5, align 4
  br label %288

145:                                              ; preds = %133
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, 1
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @CTID_INT64, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i64, i64* %13, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i64, i64* %14, align 8
  %157 = trunc i64 %156 to i32
  %158 = icmp slt i32 %155, %157
  %159 = zext i1 %158 to i32
  br label %165

160:                                              ; preds = %145
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = icmp slt i64 %161, %162
  %164 = zext i1 %163 to i32
  br label %165

165:                                              ; preds = %160, %153
  %166 = phi i32 [ %159, %153 ], [ %164, %160 ]
  %167 = call i32 @setboolV(i64 %149, i32 %166)
  store i32 1, i32* %5, align 4
  br label %288

168:                                              ; preds = %133
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, 1
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @CTID_INT64, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %168
  %177 = load i64, i64* %13, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i64, i64* %14, align 8
  %180 = trunc i64 %179 to i32
  %181 = icmp sle i32 %178, %180
  %182 = zext i1 %181 to i32
  br label %188

183:                                              ; preds = %168
  %184 = load i64, i64* %13, align 8
  %185 = load i64, i64* %14, align 8
  %186 = icmp sle i64 %184, %185
  %187 = zext i1 %186 to i32
  br label %188

188:                                              ; preds = %183, %176
  %189 = phi i32 [ %182, %176 ], [ %187, %183 ]
  %190 = call i32 @setboolV(i64 %172, i32 %189)
  store i32 1, i32* %5, align 4
  br label %288

191:                                              ; preds = %133
  br label %192

192:                                              ; preds = %191
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32* @lj_cdata_new(i32* %193, i32 %194, i32 8)
  store i32* %195, i32** %12, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = call i64 @cdataptr(i32* %196)
  %198 = inttoptr i64 %197 to i64*
  store i64* %198, i64** %15, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %202, 1
  %204 = load i32*, i32** %12, align 8
  %205 = call i32 @setcdataV(%struct.TYPE_8__* %199, i64 %203, i32* %204)
  %206 = load i32, i32* %9, align 4
  switch i32 %206, label %282 [
    i32 137, label %207
    i32 129, label %212
    i32 131, label %217
    i32 136, label %222
    i32 132, label %240
    i32 130, label %258
    i32 128, label %276
  ]

207:                                              ; preds = %192
  %208 = load i64, i64* %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i64*, i64** %15, align 8
  store i64 %210, i64* %211, align 8
  br label %284

212:                                              ; preds = %192
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* %14, align 8
  %215 = sub nsw i64 %213, %214
  %216 = load i64*, i64** %15, align 8
  store i64 %215, i64* %216, align 8
  br label %284

217:                                              ; preds = %192
  %218 = load i64, i64* %13, align 8
  %219 = load i64, i64* %14, align 8
  %220 = mul nsw i64 %218, %219
  %221 = load i64*, i64** %15, align 8
  store i64 %220, i64* %221, align 8
  br label %284

222:                                              ; preds = %192
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @CTID_INT64, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load i64, i64* %13, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i64, i64* %14, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @lj_carith_divi64(i32 %228, i32 %230)
  %232 = sext i32 %231 to i64
  %233 = load i64*, i64** %15, align 8
  store i64 %232, i64* %233, align 8
  br label %239

234:                                              ; preds = %222
  %235 = load i64, i64* %13, align 8
  %236 = load i64, i64* %14, align 8
  %237 = call i64 @lj_carith_divu64(i64 %235, i64 %236)
  %238 = load i64*, i64** %15, align 8
  store i64 %237, i64* %238, align 8
  br label %239

239:                                              ; preds = %234, %226
  br label %284

240:                                              ; preds = %192
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @CTID_INT64, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i64, i64* %13, align 8
  %246 = trunc i64 %245 to i32
  %247 = load i64, i64* %14, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @lj_carith_modi64(i32 %246, i32 %248)
  %250 = sext i32 %249 to i64
  %251 = load i64*, i64** %15, align 8
  store i64 %250, i64* %251, align 8
  br label %257

252:                                              ; preds = %240
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %14, align 8
  %255 = call i64 @lj_carith_modu64(i64 %253, i64 %254)
  %256 = load i64*, i64** %15, align 8
  store i64 %255, i64* %256, align 8
  br label %257

257:                                              ; preds = %252, %244
  br label %284

258:                                              ; preds = %192
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @CTID_INT64, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = load i64, i64* %13, align 8
  %264 = trunc i64 %263 to i32
  %265 = load i64, i64* %14, align 8
  %266 = trunc i64 %265 to i32
  %267 = call i32 @lj_carith_powi64(i32 %264, i32 %266)
  %268 = sext i32 %267 to i64
  %269 = load i64*, i64** %15, align 8
  store i64 %268, i64* %269, align 8
  br label %275

270:                                              ; preds = %258
  %271 = load i64, i64* %13, align 8
  %272 = load i64, i64* %14, align 8
  %273 = call i64 @lj_carith_powu64(i64 %271, i64 %272)
  %274 = load i64*, i64** %15, align 8
  store i64 %273, i64* %274, align 8
  br label %275

275:                                              ; preds = %270, %262
  br label %284

276:                                              ; preds = %192
  %277 = load i64, i64* %13, align 8
  %278 = trunc i64 %277 to i32
  %279 = sub nsw i32 0, %278
  %280 = sext i32 %279 to i64
  %281 = load i64*, i64** %15, align 8
  store i64 %280, i64* %281, align 8
  br label %284

282:                                              ; preds = %192
  %283 = call i32 @lua_assert(i32 0)
  br label %284

284:                                              ; preds = %282, %276, %275, %257, %239, %217, %212, %207
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %286 = call i32 @lj_gc_check(%struct.TYPE_8__* %285)
  store i32 1, i32* %5, align 4
  br label %288

287:                                              ; preds = %44, %34, %25, %4
  store i32 0, i32* %5, align 4
  br label %288

288:                                              ; preds = %287, %284, %188, %165, %135
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32* @ctype_get(i32*, i32) #1

declare dso_local i32 @lj_cconv_ct_ct(i32*, i32*, %struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @setboolV(i64, i32) #1

declare dso_local i32* @lj_cdata_new(i32*, i32, i32) #1

declare dso_local i64 @cdataptr(i32*) #1

declare dso_local i32 @setcdataV(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @lj_carith_divi64(i32, i32) #1

declare dso_local i64 @lj_carith_divu64(i64, i64) #1

declare dso_local i32 @lj_carith_modi64(i32, i32) #1

declare dso_local i64 @lj_carith_modu64(i64, i64) #1

declare dso_local i32 @lj_carith_powi64(i32, i32) #1

declare dso_local i64 @lj_carith_powu64(i64, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_gc_check(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
