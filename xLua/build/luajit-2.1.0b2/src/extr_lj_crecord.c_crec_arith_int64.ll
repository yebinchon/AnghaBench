; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_int64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@CTF_UNSIGNED = common dso_local global i32 0, align 4
@IRT_U64 = common dso_local global i64 0, align 8
@CTID_UINT64 = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@CTID_INT64 = common dso_local global i32 0, align 4
@MM_add = common dso_local global i64 0, align 8
@CTF_FP = common dso_local global i32 0, align 4
@IRT_U32 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRCONV_ANY = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@MM_eq = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i64 0, align 8
@MM_lt = common dso_local global i64 0, align 8
@IR_LT = common dso_local global i64 0, align 8
@IR_LE = common dso_local global i64 0, align 8
@IR_ULT = common dso_local global i64 0, align 8
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@IR_CNEWI = common dso_local global i64 0, align 8
@IRT_CDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__**, i64)* @crec_arith_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crec_arith_int64(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ctype_isnum(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %333

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ctype_isnum(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %333

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i32 @lj_needsplit(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CTF_UNSIGNED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %43, i64 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %65, label %49

49:                                               ; preds = %42, %31
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %50, i64 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CTF_UNSIGNED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %59, i64 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %68

65:                                               ; preds = %58, %42
  %66 = load i64, i64* @IRT_U64, align 8
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* @CTID_UINT64, align 4
  store i32 %67, i32* %11, align 4
  br label %181

68:                                               ; preds = %58, %49
  %69 = load i64, i64* @IRT_I64, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i32, i32* @CTID_INT64, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @MM_add, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %180

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %79, %84
  %86 = load i32, i32* @CTF_FP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %180, label %89

89:                                               ; preds = %74
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %180

96:                                               ; preds = %89
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %97, i64 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %180

103:                                              ; preds = %96
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %109, i64 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %108, %113
  %115 = load i32, i32* @CTF_UNSIGNED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %103
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @tref_isk(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %118
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @tref_ref(i32 %127)
  %129 = call %struct.TYPE_11__* @IR(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %124, %103
  %134 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %134, i64 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CTF_UNSIGNED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i64, i64* @IRT_U32, align 8
  br label %146

144:                                              ; preds = %133
  %145 = load i64, i64* @IRT_INT, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i64 [ %143, %142 ], [ %145, %144 ]
  store i64 %147, i64* %10, align 8
  br label %259

148:                                              ; preds = %124, %118
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @tref_isk(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tref_ref(i32 %157)
  %159 = call %struct.TYPE_11__* @IR(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sge i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %154
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %164, i64 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @CTF_UNSIGNED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i64, i64* @IRT_U32, align 8
  br label %176

174:                                              ; preds = %163
  %175 = load i64, i64* @IRT_INT, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i64 [ %173, %172 ], [ %175, %174 ]
  store i64 %177, i64* %10, align 8
  br label %259

178:                                              ; preds = %154, %148
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %96, %89, %74, %68
  br label %181

181:                                              ; preds = %180, %65
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %251, %181
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %185, label %254

185:                                              ; preds = %182
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @tref_type(i32 %190)
  store i64 %191, i64* %15, align 8
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* @IRT_NUM, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %185
  %196 = load i64, i64* %15, align 8
  %197 = load i64, i64* @IRT_FLOAT, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %195, %185
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i32, i32* @IRCONV_ANY, align 4
  %208 = call i32 @emitconv(i32 %204, i64 %205, i64 %206, i32 %207)
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %250

213:                                              ; preds = %195
  %214 = load i64, i64* %15, align 8
  %215 = load i64, i64* @IRT_I64, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %249, label %217

217:                                              ; preds = %213
  %218 = load i64, i64* %15, align 8
  %219 = load i64, i64* @IRT_U64, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %249, label %221

221:                                              ; preds = %217
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i64, i64* %10, align 8
  %228 = load i64, i64* @IRT_INT, align 8
  %229 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %229, i64 %231
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @CTF_UNSIGNED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %221
  br label %242

240:                                              ; preds = %221
  %241 = load i32, i32* @IRCONV_SEXT, align 4
  br label %242

242:                                              ; preds = %240, %239
  %243 = phi i32 [ 0, %239 ], [ %241, %240 ]
  %244 = call i32 @emitconv(i32 %226, i64 %227, i64 %228, i32 %243)
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %217, %213
  br label %250

250:                                              ; preds = %249, %199
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %182

254:                                              ; preds = %182
  %255 = load i64, i64* %9, align 8
  %256 = load i64, i64* @MM_add, align 8
  %257 = icmp slt i64 %255, %256
  br i1 %257, label %258, label %305

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258, %176, %146
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* @MM_eq, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i64, i64* @IR_EQ, align 8
  store i64 %264, i64* %14, align 8
  br label %289

265:                                              ; preds = %259
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* @MM_lt, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i64, i64* @IR_LT, align 8
  br label %273

271:                                              ; preds = %265
  %272 = load i64, i64* @IR_LE, align 8
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i64 [ %270, %269 ], [ %272, %271 ]
  store i64 %274, i64* %14, align 8
  %275 = load i64, i64* %10, align 8
  %276 = load i64, i64* @IRT_U32, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = load i64, i64* %10, align 8
  %280 = load i64, i64* @IRT_U64, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %278, %273
  %283 = load i64, i64* @IR_ULT, align 8
  %284 = load i64, i64* @IR_LT, align 8
  %285 = sub nsw i64 %283, %284
  %286 = load i64, i64* %14, align 8
  %287 = add nsw i64 %286, %285
  store i64 %287, i64* %14, align 8
  br label %288

288:                                              ; preds = %282, %278
  br label %289

289:                                              ; preds = %288, %263
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* %10, align 8
  %293 = call i32 @IRTG(i64 %291, i64 %292)
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %7, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @lj_ir_set(%struct.TYPE_9__* %290, i32 %293, i32 %296, i32 %299)
  %301 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* @TREF_TRUE, align 4
  store i32 %304, i32* %5, align 4
  br label %334

305:                                              ; preds = %254
  %306 = load i64, i64* %9, align 8
  %307 = load i64, i64* @IR_ADD, align 8
  %308 = trunc i64 %307 to i32
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %306, %309
  %311 = load i64, i64* @MM_add, align 8
  %312 = trunc i64 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = sub nsw i64 %310, %313
  %315 = load i64, i64* %10, align 8
  %316 = call i32 @IRT(i64 %314, i64 %315)
  %317 = load i32*, i32** %7, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %7, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @emitir(i32 %316, i32 %319, i32 %322)
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %305
  %325 = load i64, i64* @IR_CNEWI, align 8
  %326 = load i64, i64* @IRT_CDATA, align 8
  %327 = call i32 @IRTG(i64 %325, i64 %326)
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @lj_ir_kint(%struct.TYPE_9__* %328, i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @emitir(i32 %327, i32 %330, i32 %331)
  store i32 %332, i32* %5, align 4
  br label %334

333:                                              ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %334

334:                                              ; preds = %333, %324, %289
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @lj_needsplit(%struct.TYPE_9__*) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local %struct.TYPE_11__* @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i64 @tref_type(i32) #1

declare dso_local i32 @emitconv(i32, i64, i64, i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @IRTG(i64, i64) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i64, i64) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
