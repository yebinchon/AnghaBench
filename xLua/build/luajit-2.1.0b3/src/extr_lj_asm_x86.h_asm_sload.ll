; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_sload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_sload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { i64 }

@LJ_FR2 = common dso_local global i32 0, align 4
@IRSLOAD_FRAME = common dso_local global i32 0, align 4
@IRSLOAD_PARENT = common dso_local global i32 0, align 4
@IRSLOAD_TYPECHECK = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@IRSLOAD_CONVERT = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@REF_BASE = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@XO_CVTSI2SD = common dso_local global i32 0, align 4
@XO_CVTTSD2SI = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@CC_AE = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@LJ_TISNUM = common dso_local global i32 0, align 4
@XO_ARITHi = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@XO_ARITHi8 = common dso_local global i32 0, align 4
@JIT_F_BMI2 = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@VEX_64 = common dso_local global i32 0, align 4
@XI_O16 = common dso_local global i32 0, align 4
@XOg_ROR = common dso_local global i32 0, align 4
@XOg_SAR = common dso_local global i32 0, align 4
@XOg_SHL = common dso_local global i32 0, align 4
@XOg_SHR = common dso_local global i32 0, align 4
@XV_RORX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_32__*)* @asm_sload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_sload(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %4, align 8
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @LJ_FR2, align 4
  %17 = sub nsw i32 %15, %16
  %18 = mul nsw i32 8, %17
  %19 = load i32, i32* @LJ_FR2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IRSLOAD_FRAME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %2
  %29 = phi i1 [ false, %2 ], [ %27, %21 ]
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 4, i32 0
  %32 = add nsw i32 %18, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_31__* %6 to i8*
  %36 = bitcast %struct.TYPE_31__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IRSLOAD_PARENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @lua_assert(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @irt_isguard(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %28
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %28
  %59 = phi i1 [ true, %28 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @lua_assert(i32 %60)
  %62 = load i64, i64* @LJ_DUALNUM, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @irt_isint(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %74 = load i32, i32* @IRSLOAD_FRAME, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %69, %64, %58
  %79 = phi i1 [ true, %64 ], [ true, %58 ], [ %77, %69 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @lua_assert(i32 %80)
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @irt_isguard(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @irt_isint(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %100 = load i32, i32* @RSET_FPR, align 4
  %101 = call i32 @ra_scratch(%struct.TYPE_33__* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @asm_tointg(%struct.TYPE_33__* %102, %struct.TYPE_32__* %103, i32 %104)
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %107 = load i32, i32* @REF_BASE, align 4
  %108 = load i32, i32* @RSET_GPR, align 4
  %109 = call i32 @ra_alloc1(%struct.TYPE_33__* %106, i32 %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %111 = load i32, i32* @XO_MOVSD, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @emit_rmro(%struct.TYPE_33__* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i64, i64* @IRT_NUM, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  br label %223

118:                                              ; preds = %93, %88, %78
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %120 = call i64 @ra_used(%struct.TYPE_32__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %209

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @irt_isnum(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @RSET_FPR, align 4
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @RSET_GPR, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  store i32 %132, i32* %9, align 4
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @ra_dest(%struct.TYPE_33__* %133, %struct.TYPE_32__* %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %138 = load i32, i32* @REF_BASE, align 4
  %139 = load i32, i32* @RSET_GPR, align 4
  %140 = call i32 @ra_alloc1(%struct.TYPE_33__* %137, i32 %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @irt_isnum(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %131
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @irt_isint(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @irt_isaddr(i64 %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %150, %145, %131
  %156 = phi i1 [ true, %145 ], [ true, %131 ], [ %154, %150 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @lua_assert(i32 %157)
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @irt_isint(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i64, i64* @IRT_NUM, align 8
  br label %174

172:                                              ; preds = %165
  %173 = load i64, i64* @IRT_INT, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i64 [ %171, %170 ], [ %173, %172 ]
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @irt_isint(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @XO_CVTSI2SD, align 4
  br label %186

184:                                              ; preds = %174
  %185 = load i32, i32* @XO_CVTTSD2SI, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @emit_rmro(%struct.TYPE_33__* %177, i32 %187, i32 %188, i32 %189, i32 %190)
  br label %208

192:                                              ; preds = %155
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @irt_isnum(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @XO_MOVSD, align 4
  br label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @XO_MOV, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @emit_rmro(%struct.TYPE_33__* %193, i32 %203, i32 %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %186
  br label %222

209:                                              ; preds = %118
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  br label %289

217:                                              ; preds = %209
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %219 = load i32, i32* @REF_BASE, align 4
  %220 = load i32, i32* @RSET_GPR, align 4
  %221 = call i32 @ra_alloc1(%struct.TYPE_33__* %218, i32 %219, i32 %220)
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %217, %208
  br label %223

223:                                              ; preds = %222, %98
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %289

230:                                              ; preds = %223
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @irt_isnum(i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @CC_AE, align 4
  br label %240

238:                                              ; preds = %230
  %239 = load i32, i32* @CC_NE, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = call i32 @asm_guardcc(%struct.TYPE_33__* %231, i32 %241)
  %243 = load i64, i64* @LJ_64, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %275

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @irt_type(i64 %247)
  %249 = load i64, i64* @IRT_NUM, align 8
  %250 = icmp sge i64 %248, %249
  br i1 %250, label %251, label %275

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @irt_isinteger(i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i64 @irt_isnum(i64 %258)
  %260 = icmp ne i64 %259, 0
  br label %261

261:                                              ; preds = %256, %251
  %262 = phi i1 [ true, %251 ], [ %260, %256 ]
  %263 = zext i1 %262 to i32
  %264 = call i32 @lua_assert(i32 %263)
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %266 = load i32, i32* @LJ_TISNUM, align 4
  %267 = call i32 @emit_u32(%struct.TYPE_33__* %265, i32 %266)
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %269 = load i32, i32* @XO_ARITHi, align 4
  %270 = load i32, i32* @XOg_CMP, align 4
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, 4
  %274 = call i32 @emit_rmro(%struct.TYPE_33__* %268, i32 %269, i32 %270, i32 %271, i32 %273)
  br label %288

275:                                              ; preds = %245, %240
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @irt_toitype(i64 %278)
  %280 = call i32 @emit_i8(%struct.TYPE_33__* %276, i32 %279)
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %282 = load i32, i32* @XO_ARITHi8, align 4
  %283 = load i32, i32* @XOg_CMP, align 4
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 %285, 4
  %287 = call i32 @emit_rmro(%struct.TYPE_33__* %281, i32 %282, i32 %283, i32 %284, i32 %286)
  br label %288

288:                                              ; preds = %275, %261
  br label %289

289:                                              ; preds = %216, %288, %223
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i64 @irt_isguard(i64) #2

declare dso_local i64 @irt_isint(i64) #2

declare dso_local i32 @ra_scratch(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @asm_tointg(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #2

declare dso_local i32 @ra_alloc1(%struct.TYPE_33__*, i32, i32) #2

declare dso_local i32 @emit_rmro(%struct.TYPE_33__*, i32, i32, i32, i32) #2

declare dso_local i64 @ra_used(%struct.TYPE_32__*) #2

declare dso_local i64 @irt_isnum(i64) #2

declare dso_local i32 @ra_dest(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #2

declare dso_local i64 @irt_isaddr(i64) #2

declare dso_local i32 @asm_guardcc(%struct.TYPE_33__*, i32) #2

declare dso_local i64 @irt_type(i64) #2

declare dso_local i64 @irt_isinteger(i64) #2

declare dso_local i32 @emit_u32(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @emit_i8(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @irt_toitype(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
