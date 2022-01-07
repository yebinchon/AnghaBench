; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_varg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_varg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i8* null, align 8
@IR_SLOAD = common dso_local global i32 0, align 4
@IRSLOAD_READONLY = common dso_local global i32 0, align 4
@IRSLOAD_FRAME = common dso_local global i32 0, align 4
@FRAME_VARG = common dso_local global i32 0, align 4
@IR_GE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IR_SUB = common dso_local global i32 0, align 4
@IRT_IGC = common dso_local global i32 0, align 4
@REF_BASE = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IR_AREF = common dso_local global i32 0, align 4
@IR_VLOAD = common dso_local global i32 0, align 4
@IR_LE = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_INT_NUM = common dso_local global i32 0, align 4
@IRCONV_INDEX = common dso_local global i32 0, align 4
@IR_LT = common dso_local global i32 0, align 4
@IR_BSHR = common dso_local global i32 0, align 4
@IR_BSHL = common dso_local global i32 0, align 4
@BC_VARG = common dso_local global i32 0, align 4
@LJ_TRERR_NYIBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32)* @rec_varg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_varg(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = call i32 @frame_delta(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @LJ_FR2, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -1
  %50 = call i32 @frame_isvarg(i32* %49)
  %51 = call i32 @lua_assert(i32 %50)
  %52 = load i32, i32* @LJ_FR2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %54, %3
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %102

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %87
  br label %102

102:                                              ; preds = %101, %80
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %133, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @LJ_FR2, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i8* @getslot(%struct.TYPE_13__* %112, i32 %118)
  br label %122

120:                                              ; preds = %107
  %121 = load i8*, i8** @TREF_NIL, align 8
  br label %122

122:                                              ; preds = %120, %111
  %123 = phi i8* [ %119, %111 ], [ %121, %120 ]
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 %124, i32* %132, align 4
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %103

136:                                              ; preds = %103
  br label %539

137:                                              ; preds = %68
  %138 = load i32, i32* @IR_SLOAD, align 4
  %139 = call i32 @IRTI(i32 %138)
  %140 = load i32, i32* @LJ_FR2, align 4
  %141 = load i32, i32* @IRSLOAD_READONLY, align 4
  %142 = load i32, i32* @IRSLOAD_FRAME, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @emitir(i32 %139, i32 %140, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @LJ_FR2, align 4
  %146 = add nsw i32 1, %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = mul nsw i32 8, %148
  %150 = load i32, i32* @FRAME_VARG, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %307

154:                                              ; preds = %137
  %155 = load i32, i32* %8, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %264

157:                                              ; preds = %154
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  br label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load i32, i32* @IR_GE, align 4
  %172 = call i32 @IRTGI(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %6, align 4
  %177 = mul nsw i32 8, %176
  %178 = add nsw i32 %175, %177
  %179 = call i32 @lj_ir_kint(%struct.TYPE_13__* %174, i32 %178)
  %180 = call i32 @emitir(i32 %172, i32 %173, i32 %179)
  br label %196

181:                                              ; preds = %165
  %182 = load i32, i32* @IR_EQ, align 4
  %183 = call i32 @IRTGI(i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 -1
  %192 = call i64 @frame_ftsz(i32* %191)
  %193 = trunc i64 %192 to i32
  %194 = call i32 @lj_ir_kint(%struct.TYPE_13__* %185, i32 %193)
  %195 = call i32 @emitir(i32 %183, i32 %184, i32 %194)
  br label %196

196:                                              ; preds = %181, %170
  %197 = load i32, i32* @IR_SUB, align 4
  %198 = load i32, i32* @IRT_IGC, align 4
  %199 = call i32 @IRT(i32 %197, i32 %198)
  %200 = load i32, i32* @REF_BASE, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @emitir(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* @IR_ADD, align 4
  %204 = load i32, i32* @IRT_PGC, align 4
  %205 = call i32 @IRT(i32 %203, i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 %208, 8
  %210 = call i32 @lj_ir_kint(%struct.TYPE_13__* %207, i32 %209)
  %211 = call i32 @emitir(i32 %205, i32 %206, i32 %210)
  store i32 %211, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %260, %196
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %263

216:                                              ; preds = %212
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* @LJ_FR2, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* %8, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %221, i64 %228
  %230 = call i32 @itype2irt(i32* %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* @IR_AREF, align 4
  %232 = load i32, i32* @IRT_PGC, align 4
  %233 = call i32 @IRT(i32 %231, i32 %232)
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @lj_ir_kint(%struct.TYPE_13__* %235, i32 %236)
  %238 = call i32 @emitir(i32 %233, i32 %234, i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* @IR_VLOAD, align 4
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @IRTG(i32 %239, i32 %240)
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @emitir(i32 %241, i32 %242, i32 0)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i64 @irtype_ispri(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %216
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @TREF_PRI(i32 %248)
  store i32 %249, i32* %17, align 4
  br label %250

250:                                              ; preds = %247, %216
  %251 = load i32, i32* %17, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  store i32 %251, i32* %259, align 4
  br label %260

260:                                              ; preds = %250
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %212

263:                                              ; preds = %212
  br label %272

264:                                              ; preds = %154
  %265 = load i32, i32* @IR_LE, align 4
  %266 = call i32 @IRTGI(i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %269 = load i32, i32* %11, align 4
  %270 = call i32 @lj_ir_kint(%struct.TYPE_13__* %268, i32 %269)
  %271 = call i32 @emitir(i32 %266, i32 %267, i32 %270)
  store i32 0, i32* %8, align 4
  br label %272

272:                                              ; preds = %264, %263
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %12, align 4
  br label %274

274:                                              ; preds = %289, %272
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %6, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %292

278:                                              ; preds = %274
  %279 = load i8*, i8** @TREF_NIL, align 8
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  store i32 %280, i32* %288, align 4
  br label %289

289:                                              ; preds = %278
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %274

292:                                              ; preds = %274
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %293, %294
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp sgt i32 %295, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %292
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* %6, align 4
  %303 = add nsw i32 %301, %302
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 8
  br label %306

306:                                              ; preds = %300, %292
  br label %538

307:                                              ; preds = %137
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %309 = call i64 @select_detect(%struct.TYPE_13__* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %528

311:                                              ; preds = %307
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %18, align 4
  %320 = load i8*, i8** @TREF_NIL, align 8
  %321 = ptrtoint i8* %320 to i32
  store i32 %321, i32* %19, align 4
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %323 = load i32, i32* %18, align 4
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 5
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %5, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = call i32 @lj_ffrecord_select_mode(%struct.TYPE_13__* %322, i32 %323, i32* %332)
  store i32 %333, i32* %20, align 4
  %334 = load i32, i32* %20, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %311
  br label %529

337:                                              ; preds = %311
  %338 = load i32, i32* %20, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %337
  %341 = load i32, i32* %18, align 4
  %342 = call i32 @tref_isinteger(i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %340
  %345 = load i32, i32* @IR_CONV, align 4
  %346 = call i32 @IRTGI(i32 %345)
  %347 = load i32, i32* %18, align 4
  %348 = load i32, i32* @IRCONV_INT_NUM, align 4
  %349 = load i32, i32* @IRCONV_INDEX, align 4
  %350 = or i32 %348, %349
  %351 = call i32 @emitir(i32 %346, i32 %347, i32 %350)
  store i32 %351, i32* %18, align 4
  br label %352

352:                                              ; preds = %344, %340, %337
  %353 = load i32, i32* %20, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %380

355:                                              ; preds = %352
  %356 = load i32, i32* %18, align 4
  %357 = call i64 @tref_isk(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %380

359:                                              ; preds = %355
  %360 = load i32, i32* %20, align 4
  %361 = load i32, i32* %8, align 4
  %362 = icmp sle i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = load i32, i32* @IR_GE, align 4
  br label %367

365:                                              ; preds = %359
  %366 = load i32, i32* @IR_LT, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %364, %363 ], [ %366, %365 ]
  %369 = call i32 @IRTGI(i32 %368)
  %370 = load i32, i32* %10, align 4
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %20, align 4
  %374 = mul nsw i32 8, %373
  %375 = add nsw i32 %372, %374
  %376 = call i32 @lj_ir_kint(%struct.TYPE_13__* %371, i32 %375)
  %377 = call i32 @emitir(i32 %369, i32 %370, i32 %376)
  %378 = load i32, i32* %11, align 4
  %379 = sub nsw i32 %378, 8
  store i32 %379, i32* %11, align 4
  br label %452

380:                                              ; preds = %355, %352
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* %8, align 4
  %383 = icmp sle i32 %381, %382
  br i1 %383, label %384, label %424

384:                                              ; preds = %380
  %385 = load i32, i32* @IR_ADD, align 4
  %386 = call i32 @IRTI(i32 %385)
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sub nsw i32 0, %389
  %391 = call i32 @lj_ir_kint(%struct.TYPE_13__* %388, i32 %390)
  %392 = call i32 @emitir(i32 %386, i32 %387, i32 %391)
  store i32 %392, i32* %21, align 4
  %393 = load i32, i32* %7, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %384
  %396 = load i32, i32* @IR_GE, align 4
  %397 = call i32 @IRTGI(i32 %396)
  %398 = load i32, i32* %21, align 4
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %400 = call i32 @lj_ir_kint(%struct.TYPE_13__* %399, i32 0)
  %401 = call i32 @emitir(i32 %397, i32 %398, i32 %400)
  br label %402

402:                                              ; preds = %395, %384
  %403 = load i32, i32* @IR_BSHR, align 4
  %404 = call i32 @IRTI(i32 %403)
  %405 = load i32, i32* %21, align 4
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %407 = call i32 @lj_ir_kint(%struct.TYPE_13__* %406, i32 3)
  %408 = call i32 @emitir(i32 %404, i32 %405, i32 %407)
  store i32 %408, i32* %19, align 4
  %409 = load i32, i32* %20, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %402
  %412 = load i32, i32* @IR_ADD, align 4
  %413 = call i32 @IRTI(i32 %412)
  %414 = load i32, i32* %18, align 4
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %416 = call i32 @lj_ir_kint(%struct.TYPE_13__* %415, i32 -1)
  %417 = call i32 @emitir(i32 %413, i32 %414, i32 %416)
  store i32 %417, i32* %18, align 4
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %419 = load i32, i32* %19, align 4
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* %8, align 4
  %422 = call i32 @rec_idx_abc(%struct.TYPE_13__* %418, i32 %419, i32 %420, i32 %421)
  br label %423

423:                                              ; preds = %411, %402
  br label %451

424:                                              ; preds = %380
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %426 = load i32, i32* %11, align 4
  %427 = call i32 @lj_ir_kint(%struct.TYPE_13__* %425, i32 %426)
  store i32 %427, i32* %22, align 4
  %428 = load i32, i32* %20, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %442

430:                                              ; preds = %424
  %431 = load i32, i32* @IR_BSHL, align 4
  %432 = call i32 @IRTI(i32 %431)
  %433 = load i32, i32* %18, align 4
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %435 = call i32 @lj_ir_kint(%struct.TYPE_13__* %434, i32 3)
  %436 = call i32 @emitir(i32 %432, i32 %433, i32 %435)
  store i32 %436, i32* %23, align 4
  %437 = load i32, i32* @IR_ADD, align 4
  %438 = call i32 @IRTI(i32 %437)
  %439 = load i32, i32* %23, align 4
  %440 = load i32, i32* %22, align 4
  %441 = call i32 @emitir(i32 %438, i32 %439, i32 %440)
  store i32 %441, i32* %22, align 4
  br label %445

442:                                              ; preds = %424
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %444 = call i32 @lj_ir_kint(%struct.TYPE_13__* %443, i32 0)
  store i32 %444, i32* %19, align 4
  br label %445

445:                                              ; preds = %442, %430
  %446 = load i32, i32* @IR_LT, align 4
  %447 = call i32 @IRTGI(i32 %446)
  %448 = load i32, i32* %10, align 4
  %449 = load i32, i32* %22, align 4
  %450 = call i32 @emitir(i32 %447, i32 %448, i32 %449)
  br label %451

451:                                              ; preds = %445, %423
  br label %452

452:                                              ; preds = %451, %367
  %453 = load i32, i32* %20, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %509

455:                                              ; preds = %452
  %456 = load i32, i32* %20, align 4
  %457 = load i32, i32* %8, align 4
  %458 = icmp sle i32 %456, %457
  br i1 %458, label %459, label %509

459:                                              ; preds = %455
  %460 = load i32, i32* @IR_SUB, align 4
  %461 = load i32, i32* @IRT_IGC, align 4
  %462 = call i32 @IRT(i32 %460, i32 %461)
  %463 = load i32, i32* @REF_BASE, align 4
  %464 = load i32, i32* %10, align 4
  %465 = call i32 @emitir(i32 %462, i32 %463, i32 %464)
  store i32 %465, i32* %26, align 4
  %466 = load i32, i32* @IR_ADD, align 4
  %467 = load i32, i32* @IRT_PGC, align 4
  %468 = call i32 @IRT(i32 %466, i32 %467)
  %469 = load i32, i32* %26, align 4
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %471 = load i32, i32* %11, align 4
  %472 = load i32, i32* @LJ_FR2, align 4
  %473 = shl i32 8, %472
  %474 = sub nsw i32 %471, %473
  %475 = call i32 @lj_ir_kint(%struct.TYPE_13__* %470, i32 %474)
  %476 = call i32 @emitir(i32 %468, i32 %469, i32 %475)
  store i32 %476, i32* %26, align 4
  %477 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 5
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %20, align 4
  %483 = sub nsw i32 %482, 2
  %484 = load i32, i32* @LJ_FR2, align 4
  %485 = sub nsw i32 %483, %484
  %486 = load i32, i32* %8, align 4
  %487 = sub nsw i32 %485, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %481, i64 %488
  %490 = call i32 @itype2irt(i32* %489)
  store i32 %490, i32* %24, align 4
  %491 = load i32, i32* @IR_AREF, align 4
  %492 = load i32, i32* @IRT_PGC, align 4
  %493 = call i32 @IRT(i32 %491, i32 %492)
  %494 = load i32, i32* %26, align 4
  %495 = load i32, i32* %18, align 4
  %496 = call i32 @emitir(i32 %493, i32 %494, i32 %495)
  store i32 %496, i32* %25, align 4
  %497 = load i32, i32* @IR_VLOAD, align 4
  %498 = load i32, i32* %24, align 4
  %499 = call i32 @IRTG(i32 %497, i32 %498)
  %500 = load i32, i32* %25, align 4
  %501 = call i32 @emitir(i32 %499, i32 %500, i32 0)
  store i32 %501, i32* %19, align 4
  %502 = load i32, i32* %24, align 4
  %503 = call i64 @irtype_ispri(i32 %502)
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %459
  %506 = load i32, i32* %24, align 4
  %507 = call i32 @TREF_PRI(i32 %506)
  store i32 %507, i32* %19, align 4
  br label %508

508:                                              ; preds = %505, %459
  br label %509

509:                                              ; preds = %508, %455, %452
  %510 = load i32, i32* %19, align 4
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %5, align 4
  %515 = sub nsw i32 %514, 2
  %516 = load i32, i32* @LJ_FR2, align 4
  %517 = sub nsw i32 %515, %516
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %513, i64 %518
  store i32 %510, i32* %519, align 4
  %520 = load i32, i32* %5, align 4
  %521 = sub nsw i32 %520, 1
  %522 = load i32, i32* @LJ_FR2, align 4
  %523 = sub nsw i32 %521, %522
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i32 0, i32 0
  store i32 %523, i32* %525, align 8
  %526 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 3
  store i32 2, i32* %527, align 8
  br label %537

528:                                              ; preds = %307
  br label %529

529:                                              ; preds = %528, %336
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 4
  %532 = load i32, i32* @BC_VARG, align 4
  %533 = call i32 @setintV(i32* %531, i32 %532)
  %534 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %535 = load i32, i32* @LJ_TRERR_NYIBC, align 4
  %536 = call i32 @lj_trace_err_info(%struct.TYPE_13__* %534, i32 %535)
  br label %537

537:                                              ; preds = %529, %509
  br label %538

538:                                              ; preds = %537, %306
  br label %539

539:                                              ; preds = %538, %136
  ret void
}

declare dso_local i32 @frame_delta(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @frame_isvarg(i32*) #1

declare dso_local i8* @getslot(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @frame_ftsz(i32*) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @itype2irt(i32*) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i64 @irtype_ispri(i32) #1

declare dso_local i32 @TREF_PRI(i32) #1

declare dso_local i64 @select_detect(%struct.TYPE_13__*) #1

declare dso_local i32 @lj_ffrecord_select_mode(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @tref_isinteger(i32) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local i32 @rec_idx_abc(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @setintV(i32*, i32) #1

declare dso_local i32 @lj_trace_err_info(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
