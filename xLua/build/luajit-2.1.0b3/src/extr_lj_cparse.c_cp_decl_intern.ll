; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_intern.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@CTSIZE_INVALID = common dso_local global i32 0, align 4
@LJ_ERR_FFI_INVTYPE = common dso_local global i32 0, align 4
@CTA_QUAL = common dso_local global i32 0, align 4
@CTA_ALIGN = common dso_local global i32 0, align 4
@ALIGN = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CTF_FP = common dso_local global i32 0, align 4
@CT_ARRAY = common dso_local global i32 0, align 4
@CTF_QUAL = common dso_local global i32 0, align 4
@CTF_VECTOR = common dso_local global i64 0, align 8
@CTF_VOLATILE = common dso_local global i32 0, align 4
@LJ_ERR_FFI_INVSIZE = common dso_local global i32 0, align 4
@CTF_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @cp_decl_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_decl_intern(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %23 = load i32, i32* @CTSIZE_INVALID, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %413, %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @ctype_istypedef(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @lua_assert(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ctype_cid(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.TYPE_13__* @ctype_get(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.TYPE_13__* @ctype_get(i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @ctype_isstruct(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %43
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ctype_isenum(i32 %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %67, %43
  %72 = phi i1 [ true, %43 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @lua_assert(i32 %73)
  br label %412

75:                                               ; preds = %24
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @ctype_isfunc(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call %struct.TYPE_10__* @ctype_raw(i32 %85, i32 %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %15, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ctype_isfunc(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %82
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ctype_isrefarray(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %82
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = load i32, i32* @LJ_ERR_FFI_INVTYPE, align 4
  %102 = call i32 @cp_err(%struct.TYPE_11__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %79
  br label %105

105:                                              ; preds = %121, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %16, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ctype_isattrib(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %108
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  br label %105

125:                                              ; preds = %120, %105
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @lj_ctype_new(i32 %131, %struct.TYPE_10__** %12)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @CTSIZE_INVALID, align 4
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %8, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %5, align 4
  br label %411

146:                                              ; preds = %75
  %147 = load i32, i32* %10, align 4
  %148 = call i64 @ctype_isattrib(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @CTA_QUAL, align 4
  %153 = call i64 @ctype_isxattrib(i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  br label %170

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @CTA_ALIGN, align 4
  %162 = call i64 @ctype_isxattrib(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @ALIGN, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @CTF_INSERT(i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %155
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @lj_ctype_intern(i32 %173, i32 %176, i32 %177)
  store i32 %178, i32* %5, align 4
  br label %410

179:                                              ; preds = %146
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @ctype_isnum(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %270

183:                                              ; preds = %179
  %184 = load i32, i32* %5, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @lua_assert(i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @CTF_BOOL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %269, label %192

192:                                              ; preds = %183
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ctype_msizeP(i32 %195)
  store i32 %196, i32* %17, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ctype_vsizeP(i32 %199)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %192
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @CTF_FP, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i32, i32* %17, align 4
  %210 = icmp eq i32 %209, 4
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %17, align 4
  %213 = icmp eq i32 %212, 8
  br i1 %213, label %214, label %226

214:                                              ; preds = %211, %208, %203
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @lj_fls(i32 %215)
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = icmp sgt i32 %217, 4
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 4, i32* %19, align 4
  br label %220

220:                                              ; preds = %219, %214
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @ALIGN, align 4
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @CTF_INSERT(i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %220, %211, %192
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %268

229:                                              ; preds = %226
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @lj_fls(i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %20, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %267

235:                                              ; preds = %229
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @lj_ctype_intern(i32 %238, i32 %239, i32 %240)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %18, align 4
  %243 = shl i32 1, %242
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp sgt i32 %244, 4
  br i1 %245, label %246, label %247

246:                                              ; preds = %235
  store i32 4, i32* %18, align 4
  br label %247

247:                                              ; preds = %246, %235
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @ctype_align(i32 %248)
  %250 = load i32, i32* %18, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @ctype_align(i32 %253)
  store i32 %254, i32* %18, align 4
  br label %255

255:                                              ; preds = %252, %247
  %256 = load i32, i32* @CT_ARRAY, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @CTF_QUAL, align 4
  %259 = and i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* @CTF_VECTOR, align 8
  %262 = add nsw i64 %260, %261
  %263 = load i32, i32* %18, align 4
  %264 = call i64 @CTALIGN(i32 %263)
  %265 = add nsw i64 %262, %264
  %266 = call i32 @CTINFO(i32 %256, i64 %265)
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %255, %229
  br label %268

268:                                              ; preds = %267, %226
  br label %269

269:                                              ; preds = %268, %183
  br label %397

270:                                              ; preds = %179
  %271 = load i32, i32* %10, align 4
  %272 = call i64 @ctype_isptr(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %322

274:                                              ; preds = %270
  %275 = load i32, i32* %5, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %274
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %5, align 4
  %282 = call %struct.TYPE_10__* @ctype_raw(i32 %280, i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @ctype_isref(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %277
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = load i32, i32* @LJ_ERR_FFI_INVTYPE, align 4
  %290 = call i32 @cp_err(%struct.TYPE_11__* %288, i32 %289)
  br label %291

291:                                              ; preds = %287, %277, %274
  %292 = load i32, i32* %10, align 4
  %293 = call i64 @ctype_isref(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %291
  %296 = load i32, i32* @CTF_VOLATILE, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %10, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %10, align 4
  br label %300

300:                                              ; preds = %316, %295
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %320

303:                                              ; preds = %300
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i64 %308
  store %struct.TYPE_10__* %309, %struct.TYPE_10__** %21, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @ctype_isattrib(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %303
  br label %320

316:                                              ; preds = %303
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %6, align 4
  br label %300

320:                                              ; preds = %315, %300
  br label %321

321:                                              ; preds = %320, %291
  br label %396

322:                                              ; preds = %270
  %323 = load i32, i32* %10, align 4
  %324 = call i64 @ctype_isarray(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %391

326:                                              ; preds = %322
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %368

331:                                              ; preds = %326
  %332 = load i32, i32* %8, align 4
  %333 = call i64 @ctype_isref(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %337 = load i32, i32* @LJ_ERR_FFI_INVTYPE, align 4
  %338 = call i32 @cp_err(%struct.TYPE_11__* %336, i32 %337)
  br label %339

339:                                              ; preds = %335, %331
  %340 = load i32, i32* %8, align 4
  %341 = call i64 @ctype_isvltype(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %339
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @CTSIZE_INVALID, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %343, %339
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %349 = load i32, i32* @LJ_ERR_FFI_INVSIZE, align 4
  %350 = call i32 @cp_err(%struct.TYPE_11__* %348, i32 %349)
  br label %351

351:                                              ; preds = %347, %343
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* @CTSIZE_INVALID, align 4
  %354 = icmp ne i32 %352, %353
  br i1 %354, label %355, label %367

355:                                              ; preds = %351
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* %7, align 4
  %358 = mul nsw i32 %356, %357
  store i32 %358, i32* %22, align 4
  %359 = load i32, i32* %22, align 4
  %360 = icmp uge i32 %359, -2147483648
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %363 = load i32, i32* @LJ_ERR_FFI_INVSIZE, align 4
  %364 = call i32 @cp_err(%struct.TYPE_11__* %362, i32 %363)
  br label %365

365:                                              ; preds = %361, %355
  %366 = load i32, i32* %22, align 4
  store i32 %366, i32* %11, align 4
  br label %367

367:                                              ; preds = %365, %351
  br label %368

368:                                              ; preds = %367, %326
  %369 = load i32, i32* %8, align 4
  %370 = load i32, i32* @CTF_ALIGN, align 4
  %371 = and i32 %369, %370
  %372 = load i32, i32* %10, align 4
  %373 = load i32, i32* @CTF_ALIGN, align 4
  %374 = and i32 %372, %373
  %375 = icmp sgt i32 %371, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %368
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @CTF_ALIGN, align 4
  %379 = xor i32 %378, -1
  %380 = and i32 %377, %379
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* @CTF_ALIGN, align 4
  %383 = and i32 %381, %382
  %384 = or i32 %380, %383
  store i32 %384, i32* %10, align 4
  br label %385

385:                                              ; preds = %376, %368
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* @CTF_QUAL, align 4
  %388 = and i32 %386, %387
  %389 = load i32, i32* %10, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %10, align 4
  br label %395

391:                                              ; preds = %322
  %392 = load i32, i32* %10, align 4
  %393 = call i32 @ctype_isvoid(i32 %392)
  %394 = call i32 @lua_assert(i32 %393)
  br label %395

395:                                              ; preds = %391, %385
  br label %396

396:                                              ; preds = %395, %321
  br label %397

397:                                              ; preds = %396, %269
  %398 = load i32, i32* %11, align 4
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* %5, align 4
  %401 = add nsw i32 %399, %400
  store i32 %401, i32* %8, align 4
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %10, align 4
  %406 = load i32, i32* %5, align 4
  %407 = add nsw i32 %405, %406
  %408 = load i32, i32* %11, align 4
  %409 = call i32 @lj_ctype_intern(i32 %404, i32 %407, i32 %408)
  store i32 %409, i32* %5, align 4
  br label %410

410:                                              ; preds = %397, %170
  br label %411

411:                                              ; preds = %410, %125
  br label %412

412:                                              ; preds = %411, %71
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %6, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %24, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* %5, align 4
  ret i32 %417
}

declare dso_local i64 @ctype_istypedef(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local %struct.TYPE_13__* @ctype_get(i32, i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local %struct.TYPE_10__* @ctype_raw(i32, i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i32 @cp_err(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i32 @lj_ctype_new(i32, %struct.TYPE_10__**) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

declare dso_local i32 @CTF_INSERT(i32, i32, i32) #1

declare dso_local i32 @lj_ctype_intern(i32, i32, i32) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @ctype_msizeP(i32) #1

declare dso_local i32 @ctype_vsizeP(i32) #1

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i32 @ctype_align(i32) #1

declare dso_local i32 @CTINFO(i32, i64) #1

declare dso_local i64 @CTALIGN(i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local i64 @ctype_isvltype(i32) #1

declare dso_local i32 @ctype_isvoid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
