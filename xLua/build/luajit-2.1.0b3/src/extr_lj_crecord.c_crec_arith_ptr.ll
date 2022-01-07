; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_ptr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MM_sub = common dso_local global i64 0, align 8
@MM_eq = common dso_local global i64 0, align 8
@MM_lt = common dso_local global i64 0, align 8
@MM_le = common dso_local global i64 0, align 8
@IR_SUB = common dso_local global i64 0, align 8
@IRT_INTP = common dso_local global i64 0, align 8
@IR_BSAR = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IR_ULT = common dso_local global i32 0, align 4
@IR_ULE = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i64 0, align 8
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i64 0, align 8
@MM_add = common dso_local global i64 0, align 8
@IRT_I8 = common dso_local global i64 0, align 8
@IRT_U32 = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRCONV_ANY = common dso_local global i32 0, align 4
@IR_MUL = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@IR_CNEWI = common dso_local global i32 0, align 4
@IRT_CDATA = common dso_local global i64 0, align 8
@IRCONV_SEXT = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64*, %struct.TYPE_10__**, i64)* @crec_arith_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_arith_ptr(%struct.TYPE_9__* %0, i64* %1, %struct.TYPE_10__** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i32 @J2G(%struct.TYPE_9__* %20)
  %22 = call i32* @ctype_ctsG(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %23, i64 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %4
  store i64 0, i64* %5, align 8
  br label %295

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ctype_isptr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ctype_isrefarray(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %172

48:                                               ; preds = %42, %36
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @MM_sub, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @MM_eq, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @MM_lt, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @MM_le, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %154

64:                                               ; preds = %60, %56, %52, %48
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ctype_isptr(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %73, i64 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ctype_isrefarray(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %154

80:                                               ; preds = %72, %64
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @MM_sub, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ctype_cid(i32 %88)
  %90 = call i32 @lj_ctype_size(i32* %85, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %84
  store i64 0, i64* %5, align 8
  br label %295

100:                                              ; preds = %93
  %101 = load i64, i64* @IR_SUB, align 8
  %102 = load i64, i64* @IRT_INTP, align 8
  %103 = call i32 @IRT(i64 %101, i64 %102)
  %104 = load i64*, i64** %7, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @emitir(i32 %103, i64 %106, i64 %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* @IR_BSAR, align 8
  %112 = load i64, i64* @IRT_INTP, align 8
  %113 = call i32 @IRT(i64 %111, i64 %112)
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @lj_fls(i32 %116)
  %118 = call i64 @lj_ir_kint(%struct.TYPE_9__* %115, i32 %117)
  %119 = call i64 @emitir(i32 %113, i64 %114, i64 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  store i64 %120, i64* %5, align 8
  br label %295

121:                                              ; preds = %80
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @MM_eq, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @IR_EQ, align 4
  br label %137

127:                                              ; preds = %121
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @MM_lt, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @IR_ULT, align 4
  br label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @IR_ULE, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  br label %137

137:                                              ; preds = %135, %125
  %138 = phi i32 [ %126, %125 ], [ %136, %135 ]
  store i32 %138, i32* %14, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i64, i64* @IRT_PTR, align 8
  %142 = call i32 @IRTG(i32 %140, i64 %141)
  %143 = load i64*, i64** %7, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %7, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @lj_ir_set(%struct.TYPE_9__* %139, i32 %142, i64 %145, i64 %148)
  %150 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* @TREF_TRUE, align 8
  store i64 %153, i64* %5, align 8
  br label %295

154:                                              ; preds = %72, %60
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* @MM_add, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* @MM_sub, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %158, %154
  %163 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %163, i64 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @ctype_isnum(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %162, %158
  store i64 0, i64* %5, align 8
  br label %295

171:                                              ; preds = %162
  br label %215

172:                                              ; preds = %42
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @MM_add, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %213

176:                                              ; preds = %172
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @ctype_isnum(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %176
  %183 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %183, i64 1
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @ctype_isptr(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %191, i64 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @ctype_isrefarray(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %190, %182
  %199 = load i64*, i64** %7, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %15, align 8
  %202 = load i64*, i64** %7, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %7, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  store i64 %204, i64* %206, align 8
  %207 = load i64, i64* %15, align 8
  %208 = load i64*, i64** %7, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %210, i64 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  store %struct.TYPE_10__* %212, %struct.TYPE_10__** %11, align 8
  br label %214

213:                                              ; preds = %190, %176, %172
  store i64 0, i64* %5, align 8
  br label %295

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214, %171
  %216 = load i64*, i64** %7, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 1
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %16, align 8
  %219 = load i64, i64* %16, align 8
  %220 = call i64 @tref_type(i64 %219)
  store i64 %220, i64* %17, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ctype_cid(i32 %224)
  %226 = call i32 @lj_ctype_size(i32* %221, i32 %225)
  store i32 %226, i32* %18, align 4
  %227 = load i64*, i64** %7, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IRT_I8, align 8
  %231 = load i32, i32* @IRT_U32, align 4
  %232 = call i32 @tref_typerange(i64 %229, i64 %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %215
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* @IRT_INTP, align 8
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* %17, align 8
  %239 = load i64, i64* @IRT_NUM, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %234
  %242 = load i64, i64* %17, align 8
  %243 = load i64, i64* @IRT_FLOAT, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241, %234
  %246 = load i32, i32* @IRCONV_ANY, align 4
  br label %248

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ]
  %250 = call i64 @emitconv(i64 %235, i64 %236, i64 %237, i32 %249)
  store i64 %250, i64* %16, align 8
  br label %251

251:                                              ; preds = %248, %215
  %252 = load i64, i64* @IR_MUL, align 8
  %253 = load i64, i64* @IRT_INTP, align 8
  %254 = call i32 @IRT(i64 %252, i64 %253)
  %255 = load i64, i64* %16, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %257 = load i32, i32* %18, align 4
  %258 = call i64 @lj_ir_kintp(%struct.TYPE_9__* %256, i32 %257)
  %259 = call i64 @emitir(i32 %254, i64 %255, i64 %258)
  store i64 %259, i64* %16, align 8
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* @IR_ADD, align 8
  %262 = trunc i64 %261 to i32
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %260, %263
  %265 = load i64, i64* @MM_add, align 8
  %266 = trunc i64 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = sub nsw i64 %264, %267
  %269 = load i64, i64* @IRT_PTR, align 8
  %270 = call i32 @IRT(i64 %268, i64 %269)
  %271 = load i64*, i64** %7, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %16, align 8
  %275 = call i64 @emitir(i32 %270, i64 %273, i64 %274)
  store i64 %275, i64* %16, align 8
  %276 = load i32*, i32** %10, align 8
  %277 = load i32, i32* @CT_PTR, align 4
  %278 = load i32, i32* @CTALIGN_PTR, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ctype_cid(i32 %281)
  %283 = or i32 %278, %282
  %284 = call i32 @CTINFO(i32 %277, i32 %283)
  %285 = load i32, i32* @CTSIZE_PTR, align 4
  %286 = call i32 @lj_ctype_intern(i32* %276, i32 %284, i32 %285)
  store i32 %286, i32* %19, align 4
  %287 = load i32, i32* @IR_CNEWI, align 4
  %288 = load i64, i64* @IRT_CDATA, align 8
  %289 = call i32 @IRTG(i32 %287, i64 %288)
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %291 = load i32, i32* %19, align 4
  %292 = call i64 @lj_ir_kint(%struct.TYPE_9__* %290, i32 %291)
  %293 = load i64, i64* %16, align 8
  %294 = call i64 @emitir(i32 %289, i64 %292, i64 %293)
  store i64 %294, i64* %5, align 8
  br label %295

295:                                              ; preds = %251, %213, %170, %137, %100, %99, %35
  %296 = load i64, i64* %5, align 8
  ret i64 %296
}

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_9__*) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i32 @lj_ctype_size(i32*, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i64 @emitir(i32, i64, i64) #1

declare dso_local i32 @IRT(i64, i64) #1

declare dso_local i64 @lj_ir_kint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_9__*, i32, i64, i64) #1

declare dso_local i32 @IRTG(i32, i64) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i64 @tref_type(i64) #1

declare dso_local i32 @tref_typerange(i64, i64, i32) #1

declare dso_local i64 @emitconv(i64, i64, i64, i32) #1

declare dso_local i64 @lj_ir_kintp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
