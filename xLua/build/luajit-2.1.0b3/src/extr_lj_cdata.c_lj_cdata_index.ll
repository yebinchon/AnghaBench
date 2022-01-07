; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cdata.c_lj_cdata_index.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cdata.c_lj_cdata_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i32 }

@CTSIZE_PTR = common dso_local global i32 0, align 4
@CTA_QUAL = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@CTSIZE_INVALID = common dso_local global i64 0, align 8
@LJ_ERR_FFI_INVSIZE = common dso_local global i32 0, align 4
@CTF_VECTOR = common dso_local global i32 0, align 4
@CTF_COMPLEX = common dso_local global i32 0, align 4
@CTF_CONST = common dso_local global i32 0, align 4
@CTID_INT_PSZ = common dso_local global i64 0, align 8
@CTID_CTYPEID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_36__* @lj_cdata_index(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca %struct.TYPE_34__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_36__*, align 8
  %22 = alloca %struct.TYPE_36__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %7, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %26 = call i64 @cdataptr(%struct.TYPE_35__* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_36__* @ctype_get(%struct.TYPE_37__* %28, i64 %31)
  store %struct.TYPE_36__* %32, %struct.TYPE_36__** %13, align 8
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ctype_isref(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %5
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CTSIZE_PTR, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @lua_assert(i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = bitcast i32* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %12, align 8
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %51 = call %struct.TYPE_36__* @ctype_child(%struct.TYPE_37__* %49, %struct.TYPE_36__* %50)
  store %struct.TYPE_36__* %51, %struct.TYPE_36__** %13, align 8
  br label %52

52:                                               ; preds = %38, %5
  br label %53

53:                                               ; preds = %372, %52
  br label %54

54:                                               ; preds = %74, %53
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ctype_isattrib(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ctype_attrib(i32 %63)
  %65 = load i64, i64* @CTA_QUAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %77 = call %struct.TYPE_36__* @ctype_child(%struct.TYPE_37__* %75, %struct.TYPE_36__* %76)
  store %struct.TYPE_36__* %77, %struct.TYPE_36__** %13, align 8
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ctype_isref(i32 %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @lua_assert(i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @tvisint(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @intV(i32* %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  br label %112

94:                                               ; preds = %78
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @tvisnum(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %183

98:                                               ; preds = %94
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @numV(i32* %99)
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* @LJ_64, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, i64* %15, align 8
  %105 = trunc i64 %104 to i32
  br label %110

106:                                              ; preds = %98
  %107 = load i64, i64* %15, align 8
  %108 = call i64 @lj_num2int(i64 %107)
  %109 = trunc i64 %108 to i32
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i32 [ %105, %103 ], [ %109, %106 ]
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %210, %110, %90
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ctype_ispointer(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %182

118:                                              ; preds = %112
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ctype_cid(i32 %122)
  %124 = call i64 @lj_ctype_size(%struct.TYPE_37__* %119, i32 %123)
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @CTSIZE_INVALID, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @LJ_ERR_FFI_INVSIZE, align 4
  %133 = call i32 @lj_err_caller(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %118
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @ctype_isptr(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i32*, i32** %12, align 8
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @cdata_getptr(i32* %141, i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %12, align 8
  br label %172

147:                                              ; preds = %134
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CTF_VECTOR, align 4
  %152 = load i32, i32* @CTF_COMPLEX, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %147
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CTF_COMPLEX, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %14, align 4
  %165 = and i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %163, %156
  %167 = load i32, i32* @CTF_CONST, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %147
  br label %172

172:                                              ; preds = %171, %140
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i64, i64* %16, align 8
  %176 = trunc i64 %175 to i32
  %177 = mul nsw i32 %174, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  %180 = load i32**, i32*** %10, align 8
  store i32* %179, i32** %180, align 8
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  store %struct.TYPE_36__* %181, %struct.TYPE_36__** %6, align 8
  br label %388

182:                                              ; preds = %112
  br label %357

183:                                              ; preds = %94
  %184 = load i32*, i32** %9, align 8
  %185 = call i64 @tviscdata(i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %183
  %188 = load i32*, i32** %9, align 8
  %189 = call %struct.TYPE_35__* @cdataV(i32* %188)
  store %struct.TYPE_35__* %189, %struct.TYPE_35__** %17, align 8
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call %struct.TYPE_36__* @ctype_raw(%struct.TYPE_37__* %190, i64 %193)
  store %struct.TYPE_36__* %194, %struct.TYPE_36__** %18, align 8
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @ctype_isenum(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %187
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %203 = call %struct.TYPE_36__* @ctype_child(%struct.TYPE_37__* %201, %struct.TYPE_36__* %202)
  store %struct.TYPE_36__* %203, %struct.TYPE_36__** %18, align 8
  br label %204

204:                                              ; preds = %200, %187
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @ctype_isinteger(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %204
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %213 = load i64, i64* @CTID_INT_PSZ, align 8
  %214 = call %struct.TYPE_36__* @ctype_get(%struct.TYPE_37__* %212, i64 %213)
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %217 = call i64 @cdataptr(%struct.TYPE_35__* %216)
  %218 = call i32 @lj_cconv_ct_ct(%struct.TYPE_37__* %211, %struct.TYPE_36__* %214, %struct.TYPE_36__* %215, i32* %14, i64 %217, i32 0)
  br label %112

219:                                              ; preds = %204
  br label %356

220:                                              ; preds = %183
  %221 = load i32*, i32** %9, align 8
  %222 = call i64 @tvisstr(i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %355

224:                                              ; preds = %220
  %225 = load i32*, i32** %9, align 8
  %226 = call %struct.TYPE_34__* @strV(i32* %225)
  store %struct.TYPE_34__* %226, %struct.TYPE_34__** %19, align 8
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @ctype_isstruct(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %224
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %236 = load i32*, i32** %11, align 8
  %237 = call %struct.TYPE_36__* @lj_ctype_getfieldq(%struct.TYPE_37__* %233, %struct.TYPE_36__* %234, %struct.TYPE_34__* %235, i64* %20, i32* %236)
  store %struct.TYPE_36__* %237, %struct.TYPE_36__** %21, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %239 = icmp ne %struct.TYPE_36__* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load i32*, i32** %12, align 8
  %242 = load i64, i64* %20, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32**, i32*** %10, align 8
  store i32* %243, i32** %244, align 8
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  store %struct.TYPE_36__* %245, %struct.TYPE_36__** %6, align 8
  br label %388

246:                                              ; preds = %232
  br label %354

247:                                              ; preds = %224
  %248 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @ctype_iscomplex(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %307

253:                                              ; preds = %247
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %306

258:                                              ; preds = %253
  %259 = load i32, i32* @CTF_CONST, align 4
  %260 = load i32*, i32** %11, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %264 = call i8* @strdata(%struct.TYPE_34__* %263)
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 114
  br i1 %268, label %269, label %280

269:                                              ; preds = %258
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %271 = call i8* @strdata(%struct.TYPE_34__* %270)
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 101
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = load i32*, i32** %12, align 8
  %278 = load i32**, i32*** %10, align 8
  store i32* %277, i32** %278, align 8
  %279 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  store %struct.TYPE_36__* %279, %struct.TYPE_36__** %6, align 8
  br label %388

280:                                              ; preds = %269, %258
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %282 = call i8* @strdata(%struct.TYPE_34__* %281)
  %283 = getelementptr inbounds i8, i8* %282, i64 0
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 105
  br i1 %286, label %287, label %304

287:                                              ; preds = %280
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %289 = call i8* @strdata(%struct.TYPE_34__* %288)
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 109
  br i1 %293, label %294, label %304

294:                                              ; preds = %287
  %295 = load i32*, i32** %12, align 8
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = ashr i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %295, i64 %300
  %302 = load i32**, i32*** %10, align 8
  store i32* %301, i32** %302, align 8
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  store %struct.TYPE_36__* %303, %struct.TYPE_36__** %6, align 8
  br label %388

304:                                              ; preds = %287, %280
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305, %253
  br label %353

307:                                              ; preds = %247
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @CTID_CTYPEID, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %352

313:                                              ; preds = %307
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %315 = load i32*, i32** %12, align 8
  %316 = bitcast i32* %315 to i64*
  %317 = load i64, i64* %316, align 8
  %318 = call %struct.TYPE_36__* @ctype_raw(%struct.TYPE_37__* %314, i64 %317)
  store %struct.TYPE_36__* %318, %struct.TYPE_36__** %22, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @ctype_isptr(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %313
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %327 = call %struct.TYPE_36__* @ctype_rawchild(%struct.TYPE_37__* %325, %struct.TYPE_36__* %326)
  store %struct.TYPE_36__* %327, %struct.TYPE_36__** %22, align 8
  br label %328

328:                                              ; preds = %324, %313
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %330 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @ctype_isstruct(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %328
  %335 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %338 = call %struct.TYPE_36__* @lj_ctype_getfield(%struct.TYPE_37__* %335, %struct.TYPE_36__* %336, %struct.TYPE_34__* %337, i64* %23)
  store %struct.TYPE_36__* %338, %struct.TYPE_36__** %24, align 8
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %340 = icmp ne %struct.TYPE_36__* %339, null
  br i1 %340, label %341, label %349

341:                                              ; preds = %334
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @ctype_isconstval(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  store %struct.TYPE_36__* %348, %struct.TYPE_36__** %6, align 8
  br label %388

349:                                              ; preds = %341, %334
  br label %350

350:                                              ; preds = %349, %328
  %351 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  store %struct.TYPE_36__* %351, %struct.TYPE_36__** %13, align 8
  br label %352

352:                                              ; preds = %350, %307
  br label %353

353:                                              ; preds = %352, %306
  br label %354

354:                                              ; preds = %353, %246
  br label %355

355:                                              ; preds = %354, %220
  br label %356

356:                                              ; preds = %355, %219
  br label %357

357:                                              ; preds = %356, %182
  br label %358

358:                                              ; preds = %357
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @ctype_isptr(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %383

364:                                              ; preds = %358
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %367 = call %struct.TYPE_36__* @ctype_rawchild(%struct.TYPE_37__* %365, %struct.TYPE_36__* %366)
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i64 @ctype_isstruct(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %364
  %373 = load i32*, i32** %12, align 8
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @cdata_getptr(i32* %373, i32 %376)
  %378 = inttoptr i64 %377 to i32*
  store i32* %378, i32** %12, align 8
  %379 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %380 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %381 = call %struct.TYPE_36__* @ctype_child(%struct.TYPE_37__* %379, %struct.TYPE_36__* %380)
  store %struct.TYPE_36__* %381, %struct.TYPE_36__** %13, align 8
  br label %53

382:                                              ; preds = %364
  br label %383

383:                                              ; preds = %382, %358
  %384 = load i32*, i32** %11, align 8
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, 1
  store i32 %386, i32* %384, align 4
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  store %struct.TYPE_36__* %387, %struct.TYPE_36__** %6, align 8
  br label %388

388:                                              ; preds = %383, %347, %294, %276, %240, %172
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  ret %struct.TYPE_36__* %389
}

declare dso_local i64 @cdataptr(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_36__* @ctype_get(%struct.TYPE_37__*, i64) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local %struct.TYPE_36__* @ctype_child(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i64 @ctype_attrib(i32) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i64 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i64 @ctype_ispointer(i32) #1

declare dso_local i64 @lj_ctype_size(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @lj_err_caller(i32, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @cdata_getptr(i32*, i32) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_35__* @cdataV(i32*) #1

declare dso_local %struct.TYPE_36__* @ctype_raw(%struct.TYPE_37__*, i64) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i64 @ctype_isinteger(i32) #1

declare dso_local i32 @lj_cconv_ct_ct(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*, i64, i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local %struct.TYPE_34__* @strV(i32*) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local %struct.TYPE_36__* @lj_ctype_getfieldq(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_34__*, i64*, i32*) #1

declare dso_local i64 @ctype_iscomplex(i32) #1

declare dso_local i8* @strdata(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_36__* @ctype_rawchild(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @lj_ctype_getfield(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_34__*, i64*) #1

declare dso_local i64 @ctype_isconstval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
