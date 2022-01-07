; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_conv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@IRCONV_SRCMASK = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@IRT_P64 = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@LJ_32 = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@XO_CVTSD2SS = common dso_local global i32 0, align 4
@XO_CVTSS2SD = common dso_local global i32 0, align 4
@IRT_U32 = common dso_local global i64 0, align 8
@LJ_K64_TOBIT = common dso_local global i64 0, align 8
@XO_SUBSD = common dso_local global i32 0, align 4
@XO_XORPS = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@XO_MOVD = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_K64_2P64 = common dso_local global i64 0, align 8
@XO_ADDSD = common dso_local global i32 0, align 4
@CC_NS = common dso_local global i32 0, align 4
@XO_TEST = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_CVTSI2SD = common dso_local global i32 0, align 4
@XO_CVTSI2SS = common dso_local global i32 0, align 4
@XO_CVTTSD2SI = common dso_local global i32 0, align 4
@XO_CVTTSS2SI = common dso_local global i32 0, align 4
@XOg_ADD = common dso_local global i32 0, align 4
@LJ_K64_M2P64_31 = common dso_local global i64 0, align 8
@XO_ADDSS = common dso_local global i32 0, align 4
@LJ_K32_M2P64_31 = common dso_local global i64 0, align 8
@XO_MOV = common dso_local global i32 0, align 4
@IRT_I8 = common dso_local global i64 0, align 8
@IRT_U16 = common dso_local global i64 0, align 8
@XO_MOVSXb = common dso_local global i32 0, align 4
@RSET_GPR8 = common dso_local global i32 0, align 4
@FORCE_REX = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i64 0, align 8
@XO_MOVZXb = common dso_local global i32 0, align 4
@IRT_I16 = common dso_local global i64 0, align 8
@XO_MOVSXw = common dso_local global i32 0, align 4
@XO_MOVZXw = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@XO_MOVSXd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*)* @asm_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_conv(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IRCONV_SRCMASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @IRT_I64, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %2
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @IRT_U64, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @LJ_64, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @IRT_P64, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %39, %2
  %53 = phi i1 [ true, %39 ], [ true, %2 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IRT_NUM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @IRT_FLOAT, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i1 [ true, %52 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @irt_type(i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @lua_assert(i32 %74)
  %76 = load i64, i64* @LJ_32, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %62
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @irt_isint64(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %84, %78
  %88 = phi i1 [ true, %78 ], [ %86, %84 ]
  br label %89

89:                                               ; preds = %87, %62
  %90 = phi i1 [ false, %62 ], [ %88, %87 ]
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @lua_assert(i32 %92)
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @irt_isfp(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %278

99:                                               ; preds = %89
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = load i32, i32* @RSET_FPR, align 4
  %103 = call i32 @ra_dest(%struct.TYPE_25__* %100, %struct.TYPE_24__* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %99
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @RSET_FPR, align 4
  %110 = call i32 @asm_fuseload(%struct.TYPE_25__* %107, i32 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @IRT_NUM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @XO_CVTSD2SS, align 4
  br label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @XO_CVTSS2SD, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @emit_mrm(%struct.TYPE_25__* %111, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %640

128:                                              ; preds = %119
  br label %272

129:                                              ; preds = %99
  %130 = load i64, i64* @LJ_32, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %184

132:                                              ; preds = %129
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @IRT_U32, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %184

136:                                              ; preds = %132
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @LJ_K64_TOBIT, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %11, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %145 = load i32, i32* @RSET_FPR, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @rset_exclude(i32 %145, i32 %146)
  %148 = call i32 @ra_scratch(%struct.TYPE_25__* %144, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @irt_isfloat(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %136
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = load i32, i32* @XO_CVTSD2SS, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @emit_rr(%struct.TYPE_25__* %155, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %136
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = load i32, i32* @XO_SUBSD, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @emit_rr(%struct.TYPE_25__* %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %167 = load i32, i32* @XO_XORPS, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @emit_rr(%struct.TYPE_25__* %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = load i32, i32* @XO_MOVSD, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @emit_rma(%struct.TYPE_25__* %171, i32 %172, i32 %173, i32* %174)
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %177 = load i32, i32* @XO_MOVD, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @RSET_GPR, align 4
  %182 = call i32 @asm_fuseload(%struct.TYPE_25__* %179, i32 %180, i32 %181)
  %183 = call i32 @emit_mrm(%struct.TYPE_25__* %176, i32 %177, i32 %178, i32 %182)
  br label %640

184:                                              ; preds = %132, %129
  %185 = load i64, i64* @LJ_64, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @IRT_U32, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @IRT_U64, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %191, %187
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @RSET_GPR, align 4
  %199 = call i32 @ra_alloc1(%struct.TYPE_25__* %196, i32 %197, i32 %198)
  br label %206

200:                                              ; preds = %191, %184
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @RSET_GPR, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @asm_fuseloadm(%struct.TYPE_25__* %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %200, %195
  %207 = phi i32 [ %199, %195 ], [ %205, %200 ]
  store i32 %207, i32* %13, align 4
  %208 = load i64, i64* @LJ_64, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %240

210:                                              ; preds = %206
  %211 = load i64, i64* %5, align 8
  %212 = load i64, i64* @IRT_U64, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %210
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %216 = call i32 @emit_label(%struct.TYPE_25__* %215)
  store i32 %216, i32* %14, align 4
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @LJ_K64_2P64, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %15, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %225 = load i32, i32* @XO_ADDSD, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = call i32 @emit_rma(%struct.TYPE_25__* %224, i32 %225, i32 %226, i32* %227)
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %230 = load i32, i32* @CC_NS, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @emit_sjcc(%struct.TYPE_25__* %229, i32 %230, i32 %231)
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %234 = load i32, i32* @XO_TEST, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* @REX_64, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @emit_rr(%struct.TYPE_25__* %233, i32 %234, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %214, %210, %206
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @irt_isnum(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @XO_CVTSI2SD, align 4
  br label %251

249:                                              ; preds = %240
  %250 = load i32, i32* @XO_CVTSI2SS, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = load i32, i32* %9, align 4
  %254 = load i64, i64* @LJ_64, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* @IRT_U32, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %259, %256
  %264 = load i32, i32* @REX_64, align 4
  br label %266

265:                                              ; preds = %259, %251
  br label %266

266:                                              ; preds = %265, %263
  %267 = phi i32 [ %264, %263 ], [ 0, %265 ]
  %268 = or i32 %253, %267
  %269 = load i32, i32* %13, align 4
  %270 = call i32 @emit_mrm(%struct.TYPE_25__* %241, i32 %252, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %271, %128
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %274 = load i32, i32* @XO_XORPS, align 4
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @emit_rr(%struct.TYPE_25__* %273, i32 %274, i32 %275, i32 %276)
  br label %640

278:                                              ; preds = %89
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %468

281:                                              ; preds = %278
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @irt_isguard(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %308

287:                                              ; preds = %281
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @irt_isint(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i64, i64* %5, align 8
  %295 = load i64, i64* @IRT_NUM, align 8
  %296 = icmp eq i64 %294, %295
  br label %297

297:                                              ; preds = %293, %287
  %298 = phi i1 [ false, %287 ], [ %296, %293 ]
  %299 = zext i1 %298 to i32
  %300 = call i32 @lua_assert(i32 %299)
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @RSET_FPR, align 4
  %306 = call i32 @ra_alloc1(%struct.TYPE_25__* %303, i32 %304, i32 %305)
  %307 = call i32 @asm_tointg(%struct.TYPE_25__* %301, %struct.TYPE_24__* %302, i32 %306)
  br label %467

308:                                              ; preds = %281
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %311 = load i32, i32* @RSET_GPR, align 4
  %312 = call i32 @ra_dest(%struct.TYPE_25__* %309, %struct.TYPE_24__* %310, i32 %311)
  store i32 %312, i32* %16, align 4
  %313 = load i64, i64* %5, align 8
  %314 = load i64, i64* @IRT_NUM, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = load i32, i32* @XO_CVTTSD2SI, align 4
  br label %320

318:                                              ; preds = %308
  %319 = load i32, i32* @XO_CVTTSS2SI, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %319, %318 ]
  store i32 %321, i32* %17, align 4
  %322 = load i64, i64* @LJ_64, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %320
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @irt_isu64(i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %336, label %422

330:                                              ; preds = %320
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @irt_isu32(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %422

336:                                              ; preds = %330, %324
  %337 = load i32, i32* %8, align 4
  %338 = call %struct.TYPE_23__* @IR(i32 %337)
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i64 @ra_noreg(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %336
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @RSET_FPR, align 4
  %347 = call i32 @ra_alloc1(%struct.TYPE_25__* %344, i32 %345, i32 %346)
  br label %352

348:                                              ; preds = %336
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %350 = load i32, i32* @RSET_FPR, align 4
  %351 = call i32 @ra_scratch(%struct.TYPE_25__* %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %343
  %353 = phi i32 [ %347, %343 ], [ %351, %348 ]
  store i32 %353, i32* %18, align 4
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %355 = call i32 @emit_label(%struct.TYPE_25__* %354)
  store i32 %355, i32* %19, align 4
  %356 = load i64, i64* @LJ_32, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %352
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %360 = load i32, i32* @XOg_ADD, align 4
  %361 = call i32 @XG_ARITHi(i32 %360)
  %362 = load i32, i32* %16, align 4
  %363 = call i32 @emit_gri(%struct.TYPE_25__* %359, i32 %361, i32 %362, i32 -2147483648)
  br label %364

364:                                              ; preds = %358, %352
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* @REX_64, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* %18, align 4
  %371 = call i32 @emit_rr(%struct.TYPE_25__* %365, i32 %366, i32 %369, i32 %370)
  %372 = load i64, i64* %5, align 8
  %373 = load i64, i64* @IRT_NUM, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %387

375:                                              ; preds = %364
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %377 = load i32, i32* @XO_ADDSD, align 4
  %378 = load i32, i32* %18, align 4
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i64, i64* @LJ_K64_M2P64_31, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  %386 = call i32 @emit_rma(%struct.TYPE_25__* %376, i32 %377, i32 %378, i32* %385)
  br label %399

387:                                              ; preds = %364
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %389 = load i32, i32* @XO_ADDSS, align 4
  %390 = load i32, i32* %18, align 4
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* @LJ_K32_M2P64_31, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  %398 = call i32 @emit_rma(%struct.TYPE_25__* %388, i32 %389, i32 %390, i32* %397)
  br label %399

399:                                              ; preds = %387, %375
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %401 = load i32, i32* @CC_NS, align 4
  %402 = load i32, i32* %19, align 4
  %403 = call i32 @emit_sjcc(%struct.TYPE_25__* %400, i32 %401, i32 %402)
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %405 = load i32, i32* @XO_TEST, align 4
  %406 = load i32, i32* %16, align 4
  %407 = load i32, i32* @REX_64, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* %16, align 4
  %410 = call i32 @emit_rr(%struct.TYPE_25__* %404, i32 %405, i32 %408, i32 %409)
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* @REX_64, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* %18, align 4
  %417 = call i32 @emit_rr(%struct.TYPE_25__* %411, i32 %412, i32 %415, i32 %416)
  %418 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %8, align 4
  %421 = call i32 @ra_left(%struct.TYPE_25__* %418, i32 %419, i32 %420)
  br label %466

422:                                              ; preds = %330, %324
  %423 = load i64, i64* @LJ_64, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %437

425:                                              ; preds = %422
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i64 @irt_isu32(i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %425
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %433 = load i32, i32* @XO_MOV, align 4
  %434 = load i32, i32* %16, align 4
  %435 = load i32, i32* %16, align 4
  %436 = call i32 @emit_rr(%struct.TYPE_25__* %432, i32 %433, i32 %434, i32 %435)
  br label %437

437:                                              ; preds = %431, %425, %422
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %439 = load i32, i32* %17, align 4
  %440 = load i32, i32* %16, align 4
  %441 = load i64, i64* @LJ_64, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %457

443:                                              ; preds = %437
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = call i64 @irt_is64(i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %455, label %449

449:                                              ; preds = %443
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i64 @irt_isu32(i32 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %449, %443
  %456 = load i32, i32* @REX_64, align 4
  br label %458

457:                                              ; preds = %449, %437
  br label %458

458:                                              ; preds = %457, %455
  %459 = phi i32 [ %456, %455 ], [ 0, %457 ]
  %460 = or i32 %440, %459
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* @RSET_FPR, align 4
  %464 = call i32 @asm_fuseload(%struct.TYPE_25__* %461, i32 %462, i32 %463)
  %465 = call i32 @emit_mrm(%struct.TYPE_25__* %438, i32 %439, i32 %460, i32 %464)
  br label %466

466:                                              ; preds = %458, %399
  br label %467

467:                                              ; preds = %466, %297
  br label %639

468:                                              ; preds = %278
  %469 = load i64, i64* %5, align 8
  %470 = load i64, i64* @IRT_I8, align 8
  %471 = icmp sge i64 %469, %470
  br i1 %471, label %472, label %563

472:                                              ; preds = %468
  %473 = load i64, i64* %5, align 8
  %474 = load i64, i64* @IRT_U16, align 8
  %475 = icmp sle i64 %473, %474
  br i1 %475, label %476, label %563

476:                                              ; preds = %472
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %478 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %479 = load i32, i32* @RSET_GPR, align 4
  %480 = call i32 @ra_dest(%struct.TYPE_25__* %477, %struct.TYPE_24__* %478, i32 %479)
  store i32 %480, i32* %21, align 4
  %481 = load i32, i32* @RSET_GPR, align 4
  store i32 %481, i32* %22, align 4
  %482 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @irt_isint(i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %493, label %487

487:                                              ; preds = %476
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = call i64 @irt_isu32(i32 %490)
  %492 = icmp ne i64 %491, 0
  br label %493

493:                                              ; preds = %487, %476
  %494 = phi i1 [ true, %476 ], [ %492, %487 ]
  %495 = zext i1 %494 to i32
  %496 = call i32 @lua_assert(i32 %495)
  %497 = load i64, i64* %5, align 8
  %498 = load i64, i64* @IRT_I8, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %506

500:                                              ; preds = %493
  %501 = load i32, i32* @XO_MOVSXb, align 4
  store i32 %501, i32* %23, align 4
  %502 = load i32, i32* @RSET_GPR8, align 4
  store i32 %502, i32* %22, align 4
  %503 = load i32, i32* @FORCE_REX, align 4
  %504 = load i32, i32* %21, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %21, align 4
  br label %526

506:                                              ; preds = %493
  %507 = load i64, i64* %5, align 8
  %508 = load i64, i64* @IRT_U8, align 8
  %509 = icmp eq i64 %507, %508
  br i1 %509, label %510, label %516

510:                                              ; preds = %506
  %511 = load i32, i32* @XO_MOVZXb, align 4
  store i32 %511, i32* %23, align 4
  %512 = load i32, i32* @RSET_GPR8, align 4
  store i32 %512, i32* %22, align 4
  %513 = load i32, i32* @FORCE_REX, align 4
  %514 = load i32, i32* %21, align 4
  %515 = or i32 %514, %513
  store i32 %515, i32* %21, align 4
  br label %525

516:                                              ; preds = %506
  %517 = load i64, i64* %5, align 8
  %518 = load i64, i64* @IRT_I16, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %522

520:                                              ; preds = %516
  %521 = load i32, i32* @XO_MOVSXw, align 4
  store i32 %521, i32* %23, align 4
  br label %524

522:                                              ; preds = %516
  %523 = load i32, i32* @XO_MOVZXw, align 4
  store i32 %523, i32* %23, align 4
  br label %524

524:                                              ; preds = %522, %520
  br label %525

525:                                              ; preds = %524, %510
  br label %526

526:                                              ; preds = %525, %500
  %527 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %528 = load i32, i32* %8, align 4
  %529 = load i32, i32* %22, align 4
  %530 = call i32 @asm_fuseload(%struct.TYPE_25__* %527, i32 %528, i32 %529)
  store i32 %530, i32* %20, align 4
  %531 = load i64, i64* @LJ_64, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %556, label %533

533:                                              ; preds = %526
  %534 = load i32, i32* %20, align 4
  %535 = load i32, i32* @RID_MRM, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %556

537:                                              ; preds = %533
  %538 = load i32, i32* %22, align 4
  %539 = load i32, i32* %20, align 4
  %540 = call i32 @rset_test(i32 %538, i32 %539)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %556, label %542

542:                                              ; preds = %537
  %543 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %544 = load i32, i32* %22, align 4
  %545 = call i32 @ra_scratch(%struct.TYPE_25__* %543, i32 %544)
  store i32 %545, i32* %24, align 4
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %547 = load i32, i32* %23, align 4
  %548 = load i32, i32* %21, align 4
  %549 = load i32, i32* %24, align 4
  %550 = call i32 @emit_rr(%struct.TYPE_25__* %546, i32 %547, i32 %548, i32 %549)
  %551 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %552 = load i32, i32* @XO_MOV, align 4
  %553 = load i32, i32* %24, align 4
  %554 = load i32, i32* %20, align 4
  %555 = call i32 @emit_rr(%struct.TYPE_25__* %551, i32 %552, i32 %553, i32 %554)
  br label %562

556:                                              ; preds = %537, %533, %526
  %557 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %558 = load i32, i32* %23, align 4
  %559 = load i32, i32* %21, align 4
  %560 = load i32, i32* %20, align 4
  %561 = call i32 @emit_mrm(%struct.TYPE_25__* %557, i32 %558, i32 %559, i32 %560)
  br label %562

562:                                              ; preds = %556, %542
  br label %638

563:                                              ; preds = %472, %468
  %564 = load i64, i64* @LJ_32, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %575

566:                                              ; preds = %563
  %567 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %568 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %569 = load i32, i32* @RSET_GPR, align 4
  %570 = call i32 @ra_dest(%struct.TYPE_25__* %567, %struct.TYPE_24__* %568, i32 %569)
  store i32 %570, i32* %25, align 4
  %571 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %572 = load i32, i32* %25, align 4
  %573 = load i32, i32* %8, align 4
  %574 = call i32 @ra_left(%struct.TYPE_25__* %571, i32 %572, i32 %573)
  br label %637

575:                                              ; preds = %563
  %576 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %577 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = call i64 @irt_is64(i32 %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %613

581:                                              ; preds = %575
  %582 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %583 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %584 = load i32, i32* @RSET_GPR, align 4
  %585 = call i32 @ra_dest(%struct.TYPE_25__* %582, %struct.TYPE_24__* %583, i32 %584)
  store i32 %585, i32* %26, align 4
  %586 = load i32, i32* %6, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %595, label %588

588:                                              ; preds = %581
  %589 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* @IRCONV_SEXT, align 4
  %593 = and i32 %591, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %600, label %595

595:                                              ; preds = %588, %581
  %596 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %597 = load i32, i32* %26, align 4
  %598 = load i32, i32* %8, align 4
  %599 = call i32 @ra_left(%struct.TYPE_25__* %596, i32 %597, i32 %598)
  br label %612

600:                                              ; preds = %588
  %601 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %602 = load i32, i32* %8, align 4
  %603 = load i32, i32* @RSET_GPR, align 4
  %604 = call i32 @asm_fuseload(%struct.TYPE_25__* %601, i32 %602, i32 %603)
  store i32 %604, i32* %27, align 4
  %605 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %606 = load i32, i32* @XO_MOVSXd, align 4
  %607 = load i32, i32* %26, align 4
  %608 = load i32, i32* @REX_64, align 4
  %609 = or i32 %607, %608
  %610 = load i32, i32* %27, align 4
  %611 = call i32 @emit_mrm(%struct.TYPE_25__* %605, i32 %606, i32 %609, i32 %610)
  br label %612

612:                                              ; preds = %600, %595
  br label %636

613:                                              ; preds = %575
  %614 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %615 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %616 = load i32, i32* @RSET_GPR, align 4
  %617 = call i32 @ra_dest(%struct.TYPE_25__* %614, %struct.TYPE_24__* %615, i32 %616)
  store i32 %617, i32* %28, align 4
  %618 = load i32, i32* %6, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %630

620:                                              ; preds = %613
  %621 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %622 = load i32, i32* %8, align 4
  %623 = load i32, i32* @RSET_GPR, align 4
  %624 = call i32 @asm_fuseload(%struct.TYPE_25__* %621, i32 %622, i32 %623)
  store i32 %624, i32* %29, align 4
  %625 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %626 = load i32, i32* @XO_MOV, align 4
  %627 = load i32, i32* %28, align 4
  %628 = load i32, i32* %29, align 4
  %629 = call i32 @emit_mrm(%struct.TYPE_25__* %625, i32 %626, i32 %627, i32 %628)
  br label %635

630:                                              ; preds = %613
  %631 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %632 = load i32, i32* %28, align 4
  %633 = load i32, i32* %8, align 4
  %634 = call i32 @ra_left(%struct.TYPE_25__* %631, i32 %632, i32 %633)
  br label %635

635:                                              ; preds = %630, %620
  br label %636

636:                                              ; preds = %635, %612
  br label %637

637:                                              ; preds = %636, %566
  br label %638

638:                                              ; preds = %637, %562
  br label %639

639:                                              ; preds = %638, %467
  br label %640

640:                                              ; preds = %127, %160, %639, %272
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_type(i32) #1

declare dso_local i64 @irt_isint64(i32) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i32 @ra_dest(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @asm_fuseload(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @ra_scratch(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i64 @irt_isfloat(i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @emit_rma(%struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @asm_fuseloadm(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @emit_label(%struct.TYPE_25__*) #1

declare dso_local i32 @emit_sjcc(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i64 @irt_isguard(i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i32 @asm_tointg(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @irt_isu64(i32) #1

declare dso_local i64 @irt_isu32(i32) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local %struct.TYPE_23__* @IR(i32) #1

declare dso_local i32 @emit_gri(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i32) #1

declare dso_local i32 @ra_left(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @irt_is64(i32) #1

declare dso_local i32 @rset_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
