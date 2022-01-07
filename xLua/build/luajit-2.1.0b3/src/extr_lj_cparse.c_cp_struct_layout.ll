; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_struct_layout.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_struct_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@CTA_SUBTYPE = common dso_local global i32 0, align 4
@CTF_QUAL = common dso_local global i32 0, align 4
@CTF_VLA = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i32 0, align 4
@CTF_UNION = common dso_local global i32 0, align 4
@LJ_ERR_FFI_INVSIZE = common dso_local global i32 0, align 4
@CTFP_PACKED = common dso_local global i32 0, align 4
@CTFP_ALIGNED = common dso_local global i32 0, align 4
@CTBSZ_FIELD = common dso_local global i32 0, align 4
@CT_FIELD = common dso_local global i32 0, align 4
@CT_BITFIELD = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CTSHIFT_BITCSZ = common dso_local global i32 0, align 4
@CTSHIFT_BITBSZ = common dso_local global i32 0, align 4
@CTSHIFT_BITPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i32)* @cp_struct_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_struct_layout(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ctype_align(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.TYPE_8__* @ctype_get(i32 %25, i64 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %300, %3
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %304

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call %struct.TYPE_8__* @ctype_get(i32 %40, i64 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %13, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ctype_isfield(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %37
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CTA_SUBTYPE, align 4
  %56 = call i64 @ctype_isxattrib(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %300

58:                                               ; preds = %51
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %300

61:                                               ; preds = %58, %37
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ctype_cid(i32 %67)
  %69 = call i32 @lj_ctype_info(i32 %64, i32 %68, i32* %17)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %17, align 4
  %71 = mul nsw i32 8, %70
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @CTF_QUAL, align 4
  %74 = load i32, i32* @CTF_VLA, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp uge i32 %79, 536870912
  br i1 %80, label %92, label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @CTF_VLA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %87, %81, %61
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @CTSIZE_INVALID, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, i32* %18, align 4
  %98 = call i64 @ctype_isarray(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @CTF_UNION, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %96, %92
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = load i32, i32* @LJ_ERR_FFI_INVSIZE, align 4
  %108 = call i32 @cp_err(%struct.TYPE_9__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %110

110:                                              ; preds = %109, %87
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @cp_field_align(%struct.TYPE_9__* %111, %struct.TYPE_8__* %112, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CTFP_PACKED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @CTFP_ALIGNED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @ctype_align(i32 %127)
  %129 = load i32, i32* %15, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %110
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @ctype_align(i32 %132)
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %131, %126, %121
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %134
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %145, %134
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* %15, align 4
  %162 = shl i32 8, %161
  %163 = sub i32 %162, 1
  store i32 %163, i32* %16, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ctype_bitcsz(i32 %166)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @CTBSZ_FIELD, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %160
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @ctype_isfield(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %171, %160
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %16, align 4
  %183 = xor i32 %182, -1
  %184 = and i32 %181, %183
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = ashr i32 %185, 3
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %283

189:                                              ; preds = %171
  %190 = load i32, i32* %19, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %212, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @CTFP_ALIGNED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %212, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @CTFP_PACKED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %219, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %16, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %20, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %204, %192, %189
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %16, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %212, %204, %197
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %16, align 4
  %226 = and i32 %224, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = load i32, i32* @CT_FIELD, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @ctype_cid(i32 %232)
  %234 = call i8* @CTINFO(i32 %229, i32 %233)
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %7, align 4
  %239 = ashr i32 %238, 3
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  br label %282

242:                                              ; preds = %223, %219
  %243 = load i32, i32* @CT_BITFIELD, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* @CTF_QUAL, align 4
  %246 = load i32, i32* @CTF_UNSIGNED, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @CTF_BOOL, align 4
  %249 = or i32 %247, %248
  %250 = and i32 %244, %249
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* @CTSHIFT_BITCSZ, align 4
  %253 = sub nsw i32 %252, 3
  %254 = shl i32 %251, %253
  %255 = add nsw i32 %250, %254
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* @CTSHIFT_BITBSZ, align 4
  %258 = shl i32 %256, %257
  %259 = add nsw i32 %255, %258
  %260 = call i8* @CTINFO(i32 %243, i32 %259)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %20, align 4
  %266 = sub nsw i32 %265, 1
  %267 = and i32 %264, %266
  %268 = load i32, i32* @CTSHIFT_BITPOS, align 4
  %269 = shl i32 %267, %268
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %20, align 4
  %276 = sub nsw i32 %275, 1
  %277 = xor i32 %276, -1
  %278 = and i32 %274, %277
  %279 = ashr i32 %278, 3
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %242, %228
  br label %283

283:                                              ; preds = %282, %177
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @CTF_UNION, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* %19, align 4
  store i32 %293, i32* %8, align 4
  br label %294

294:                                              ; preds = %292, %288
  br label %299

295:                                              ; preds = %283
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %7, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %295, %294
  br label %300

300:                                              ; preds = %299, %58, %51
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %12, align 8
  br label %34

304:                                              ; preds = %34
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @CTALIGN(i32 %306)
  %308 = add nsw i32 %305, %307
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @CTF_UNION, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %304
  %316 = load i32, i32* %8, align 4
  br label %319

317:                                              ; preds = %304
  %318 = load i32, i32* %7, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  store i32 %320, i32* %7, align 4
  %321 = load i32, i32* %9, align 4
  %322 = shl i32 8, %321
  %323 = sub i32 %322, 1
  store i32 %323, i32* %9, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %9, align 4
  %328 = xor i32 %327, -1
  %329 = and i32 %326, %328
  %330 = ashr i32 %329, 3
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  ret void
}

declare dso_local i32 @ctype_align(i32) #1

declare dso_local %struct.TYPE_8__* @ctype_get(i32, i64) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

declare dso_local i32 @lj_ctype_info(i32, i32, i32*) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local i32 @cp_err(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cp_field_align(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ctype_bitcsz(i32) #1

declare dso_local i8* @CTINFO(i32, i32) #1

declare dso_local i32 @CTALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
