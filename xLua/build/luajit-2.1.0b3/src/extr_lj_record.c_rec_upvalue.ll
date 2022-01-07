; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_upvalue.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_upvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64, i64*, %struct.TYPE_21__*, %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_23__ }

@PROTO_CLC_POLY = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IRT_FUNC = common dso_local global i32 0, align 4
@TREF_FRAME = common dso_local global i64 0, align 8
@HASH_BIAS = common dso_local global i64 0, align 8
@IR_UREFO = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@REF_BASE = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@IR_UGT = common dso_local global i32 0, align 4
@IR_SUB = common dso_local global i32 0, align 4
@IR_UREFC = common dso_local global i32 0, align 4
@IR_ULOAD = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@IR_USTORE = common dso_local global i32 0, align 4
@IR_OBAR = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i64, i64)* @rec_upvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rec_upvalue(%struct.TYPE_22__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_18__* @gcref(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = call i64 @getcurrf(%struct.TYPE_22__* %28)
  store i64 %29, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = call i64 @rec_upvalue_constify(%struct.TYPE_22__* %30, %struct.TYPE_23__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @tref_isk(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PROTO_CLC_POLY, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %82

51:                                               ; preds = %42
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = call i64 @lj_ir_kfunc(%struct.TYPE_22__* %52, %struct.TYPE_17__* %55)
  store i64 %56, i64* %13, align 8
  %57 = load i32, i32* @IR_EQ, align 4
  %58 = load i32, i32* @IRT_FUNC, align 4
  %59 = call i32 @IRTG(i32 %57, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @emitir(i32 %59, i64 %60, i64 %61)
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @TREF_FRAME, align 8
  %65 = or i64 %63, %64
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 -1
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %51, %34
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = call i64 @uvval(%struct.TYPE_23__* %73)
  %75 = call i64 @lj_record_constify(%struct.TYPE_22__* %72, i64 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %4, align 8
  br label %283

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %3
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i64, i64* %6, align 8
  %84 = shl i64 %83, 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HASH_BIAS, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @hashrot(i64 %87, i64 %92)
  %94 = and i32 %93, 255
  %95 = sext i32 %94 to i64
  %96 = or i64 %84, %95
  store i64 %96, i64* %6, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %218, label %101

101:                                              ; preds = %82
  %102 = load i32, i32* @IR_UREFO, align 4
  %103 = load i32, i32* @IRT_PGC, align 4
  %104 = call i32 @IRTG(i32 %102, i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @emitir(i32 %104, i64 %105, i64 %106)
  %108 = call i64 @tref_ref(i64 %107)
  store i64 %108, i64* %10, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = call i64 @uvval(%struct.TYPE_23__* %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @tvref(i32 %115)
  %117 = icmp sge i64 %110, %116
  br i1 %117, label %118, label %196

118:                                              ; preds = %101
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %120 = call i64 @uvval(%struct.TYPE_23__* %119)
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @tvref(i32 %125)
  %127 = icmp slt i64 %120, %126
  br i1 %127, label %128, label %196

128:                                              ; preds = %118
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %130 = call i64 @uvval(%struct.TYPE_23__* %129)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = sub nsw i64 %130, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %128
  %145 = load i32, i32* @IR_EQ, align 4
  %146 = load i32, i32* @IRT_PGC, align 4
  %147 = call i32 @IRTG(i32 %145, i32 %146)
  %148 = load i64, i64* @REF_BASE, align 8
  %149 = load i32, i32* @IR_ADD, align 4
  %150 = load i32, i32* @IRT_PGC, align 4
  %151 = call i32 @IRT(i32 %149, i32 %150)
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @LJ_FR2, align 4
  %157 = sub nsw i32 %155, %156
  %158 = mul nsw i32 %157, -8
  %159 = call i64 @lj_ir_kint(%struct.TYPE_22__* %153, i32 %158)
  %160 = call i64 @emitir(i32 %151, i64 %152, i64 %159)
  %161 = call i64 @emitir(i32 %147, i64 %148, i64 %160)
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %14, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load i64, i64* %7, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %144
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i64 @getslot(%struct.TYPE_22__* %171, i32 %172)
  store i64 %173, i64* %4, align 8
  br label %283

174:                                              ; preds = %144
  %175 = load i64, i64* %7, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %175, i64* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = icmp sge i32 %182, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %174
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %188, %174
  store i64 0, i64* %4, align 8
  br label %283

195:                                              ; preds = %128
  br label %196

196:                                              ; preds = %195, %118, %101
  %197 = load i32, i32* @IR_UGT, align 4
  %198 = load i32, i32* @IRT_PGC, align 4
  %199 = call i32 @IRTG(i32 %197, i32 %198)
  %200 = load i32, i32* @IR_SUB, align 4
  %201 = load i32, i32* @IRT_PGC, align 4
  %202 = call i32 @IRT(i32 %200, i32 %201)
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @REF_BASE, align 8
  %205 = call i64 @emitir(i32 %202, i64 %203, i64 %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = mul nsw i64 %213, 8
  %215 = trunc i64 %214 to i32
  %216 = call i64 @lj_ir_kint(%struct.TYPE_22__* %206, i32 %215)
  %217 = call i64 @emitir(i32 %199, i64 %205, i64 %216)
  br label %226

218:                                              ; preds = %82
  store i32 1, i32* %11, align 4
  %219 = load i32, i32* @IR_UREFC, align 4
  %220 = load i32, i32* @IRT_PGC, align 4
  %221 = call i32 @IRTG(i32 %219, i32 %220)
  %222 = load i64, i64* %9, align 8
  %223 = load i64, i64* %6, align 8
  %224 = call i64 @emitir(i32 %221, i64 %222, i64 %223)
  %225 = call i64 @tref_ref(i64 %224)
  store i64 %225, i64* %10, align 8
  br label %226

226:                                              ; preds = %218, %196
  %227 = load i64, i64* %7, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %226
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %231 = call i64 @uvval(%struct.TYPE_23__* %230)
  %232 = call i32 @itype2irt(i64 %231)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* @IR_ULOAD, align 4
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @IRTG(i32 %233, i32 %234)
  %236 = load i64, i64* %10, align 8
  %237 = call i64 @emitir(i32 %235, i64 %236, i64 0)
  store i64 %237, i64* %16, align 8
  %238 = load i32, i32* %15, align 4
  %239 = call i64 @irtype_ispri(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %229
  %242 = load i32, i32* %15, align 4
  %243 = call i64 @TREF_PRI(i32 %242)
  store i64 %243, i64* %16, align 8
  br label %244

244:                                              ; preds = %241, %229
  %245 = load i64, i64* %16, align 8
  store i64 %245, i64* %4, align 8
  br label %283

246:                                              ; preds = %226
  %247 = load i32, i32* @LJ_DUALNUM, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %246
  %250 = load i64, i64* %7, align 8
  %251 = call i64 @tref_isinteger(i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load i32, i32* @IR_CONV, align 4
  %255 = call i32 @IRTN(i32 %254)
  %256 = load i64, i64* %7, align 8
  %257 = load i64, i64* @IRCONV_NUM_INT, align 8
  %258 = call i64 @emitir(i32 %255, i64 %256, i64 %257)
  store i64 %258, i64* %7, align 8
  br label %259

259:                                              ; preds = %253, %249, %246
  %260 = load i32, i32* @IR_USTORE, align 4
  %261 = load i64, i64* %7, align 8
  %262 = call i32 @tref_type(i64 %261)
  %263 = call i32 @IRT(i32 %260, i32 %262)
  %264 = load i64, i64* %10, align 8
  %265 = load i64, i64* %7, align 8
  %266 = call i64 @emitir(i32 %263, i64 %264, i64 %265)
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %259
  %270 = load i64, i64* %7, align 8
  %271 = call i64 @tref_isgcv(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32, i32* @IR_OBAR, align 4
  %275 = load i32, i32* @IRT_NIL, align 4
  %276 = call i32 @IRT(i32 %274, i32 %275)
  %277 = load i64, i64* %10, align 8
  %278 = load i64, i64* %7, align 8
  %279 = call i64 @emitir(i32 %276, i64 %277, i64 %278)
  br label %280

280:                                              ; preds = %273, %269, %259
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  store i32 1, i32* %282, align 8
  store i64 0, i64* %4, align 8
  br label %283

283:                                              ; preds = %280, %244, %194, %170, %78
  %284 = load i64, i64* %4, align 8
  ret i64 %284
}

declare dso_local %struct.TYPE_18__* @gcref(i32) #1

declare dso_local i64 @getcurrf(%struct.TYPE_22__*) #1

declare dso_local i64 @rec_upvalue_constify(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tref_isk(i64) #1

declare dso_local i64 @lj_ir_kfunc(%struct.TYPE_22__*, %struct.TYPE_17__*) #1

declare dso_local i64 @emitir(i32, i64, i64) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i64 @lj_record_constify(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @uvval(%struct.TYPE_23__*) #1

declare dso_local i32 @hashrot(i64, i64) #1

declare dso_local i64 @tref_ref(i64) #1

declare dso_local i64 @tvref(i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i64 @lj_ir_kint(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @getslot(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @itype2irt(i64) #1

declare dso_local i64 @irtype_ispri(i32) #1

declare dso_local i64 @TREF_PRI(i32) #1

declare dso_local i64 @tref_isinteger(i64) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i32 @tref_type(i64) #1

declare dso_local i64 @tref_isgcv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
