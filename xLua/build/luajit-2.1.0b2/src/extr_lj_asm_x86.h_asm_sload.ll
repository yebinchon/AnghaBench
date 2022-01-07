; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_sload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_sload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64 }

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
@REX_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*)* @asm_sload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_sload(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = sub nsw i32 %14, 1
  %16 = mul nsw i32 8, %15
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IRSLOAD_FRAME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 4, i32 0
  %25 = add nsw i32 %16, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = bitcast %struct.TYPE_16__* %6 to i8*
  %29 = bitcast %struct.TYPE_16__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IRSLOAD_PARENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @irt_isguard(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %43, %2
  %52 = phi i1 [ true, %2 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @lua_assert(i32 %53)
  %55 = load i64, i64* @LJ_DUALNUM, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @irt_isint(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %67 = load i32, i32* @IRSLOAD_FRAME, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %62, %57, %51
  %72 = phi i1 [ true, %57 ], [ true, %51 ], [ %70, %62 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @lua_assert(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @irt_isguard(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @irt_isint(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @RSET_FPR, align 4
  %94 = call i32 @ra_scratch(i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @asm_tointg(i32* %95, %struct.TYPE_17__* %96, i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @REF_BASE, align 4
  %101 = load i32, i32* @RSET_GPR, align 4
  %102 = call i32 @ra_alloc1(i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @XO_MOVSD, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @emit_rmro(i32* %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i64, i64* @IRT_NUM, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  br label %216

111:                                              ; preds = %86, %81, %71
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = call i64 @ra_used(%struct.TYPE_17__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %202

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @irt_isnum(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @RSET_FPR, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @RSET_GPR, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %9, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ra_dest(i32* %126, %struct.TYPE_17__* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @REF_BASE, align 4
  %132 = load i32, i32* @RSET_GPR, align 4
  %133 = call i32 @ra_alloc1(i32* %130, i32 %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @irt_isnum(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @irt_isint(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @irt_isaddr(i64 %145)
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %143, %138, %124
  %149 = phi i1 [ true, %138 ], [ true, %124 ], [ %147, %143 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @lua_assert(i32 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @irt_isint(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i64, i64* @IRT_NUM, align 8
  br label %167

165:                                              ; preds = %158
  %166 = load i64, i64* @IRT_INT, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i64 [ %164, %163 ], [ %166, %165 ]
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @irt_isint(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* @XO_CVTSI2SD, align 4
  br label %179

177:                                              ; preds = %167
  %178 = load i32, i32* @XO_CVTTSD2SI, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @emit_rmro(i32* %170, i32 %180, i32 %181, i32 %182, i32 %183)
  br label %201

185:                                              ; preds = %148
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @irt_isnum(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* @XO_MOVSD, align 4
  br label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @XO_MOV, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @emit_rmro(i32* %186, i32 %196, i32 %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %179
  br label %215

202:                                              ; preds = %111
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %282

210:                                              ; preds = %202
  %211 = load i32*, i32** %3, align 8
  %212 = load i32, i32* @REF_BASE, align 4
  %213 = load i32, i32* @RSET_GPR, align 4
  %214 = call i32 @ra_alloc1(i32* %211, i32 %212, i32 %213)
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %210, %201
  br label %216

216:                                              ; preds = %215, %91
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %282

223:                                              ; preds = %216
  %224 = load i32*, i32** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @irt_isnum(i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  %230 = load i32, i32* @CC_AE, align 4
  br label %233

231:                                              ; preds = %223
  %232 = load i32, i32* @CC_NE, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = call i32 @asm_guardcc(i32* %224, i32 %234)
  %236 = load i64, i64* @LJ_64, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %268

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @irt_type(i64 %240)
  %242 = load i64, i64* @IRT_NUM, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i64 @irt_isinteger(i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @irt_isnum(i64 %251)
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %249, %244
  %255 = phi i1 [ true, %244 ], [ %253, %249 ]
  %256 = zext i1 %255 to i32
  %257 = call i32 @lua_assert(i32 %256)
  %258 = load i32*, i32** %3, align 8
  %259 = load i32, i32* @LJ_TISNUM, align 4
  %260 = call i32 @emit_u32(i32* %258, i32 %259)
  %261 = load i32*, i32** %3, align 8
  %262 = load i32, i32* @XO_ARITHi, align 4
  %263 = load i32, i32* @XOg_CMP, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 4
  %267 = call i32 @emit_rmro(i32* %261, i32 %262, i32 %263, i32 %264, i32 %266)
  br label %281

268:                                              ; preds = %238, %233
  %269 = load i32*, i32** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @irt_toitype(i64 %271)
  %273 = call i32 @emit_i8(i32* %269, i32 %272)
  %274 = load i32*, i32** %3, align 8
  %275 = load i32, i32* @XO_ARITHi8, align 4
  %276 = load i32, i32* @XOg_CMP, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 4
  %280 = call i32 @emit_rmro(i32* %274, i32 %275, i32 %276, i32 %277, i32 %279)
  br label %281

281:                                              ; preds = %268, %254
  br label %282

282:                                              ; preds = %209, %281, %216
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i64 @irt_isguard(i64) #2

declare dso_local i64 @irt_isint(i64) #2

declare dso_local i32 @ra_scratch(i32*, i32) #2

declare dso_local i32 @asm_tointg(i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @ra_alloc1(i32*, i32, i32) #2

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #2

declare dso_local i64 @ra_used(%struct.TYPE_17__*) #2

declare dso_local i64 @irt_isnum(i64) #2

declare dso_local i32 @ra_dest(i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i64 @irt_isaddr(i64) #2

declare dso_local i32 @asm_guardcc(i32*, i32) #2

declare dso_local i64 @irt_type(i64) #2

declare dso_local i64 @irt_isinteger(i64) #2

declare dso_local i32 @emit_u32(i32*, i32) #2

declare dso_local i32 @emit_i8(i32*, i32) #2

declare dso_local i32 @irt_toitype(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
