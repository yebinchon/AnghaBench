; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_head_side.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_head_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i64, i64*, i32, %struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_28__*, i32*, i64 }
%struct.TYPE_29__ = type { i64, i32, i64, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i32, i64, i32, i32 }

@RID_MAX = common dso_local global i32 0, align 4
@RSET_ALL = common dso_local global i32 0, align 4
@RSET_EMPTY = common dso_local global i32 0, align 4
@REF_BASE = common dso_local global i64 0, align 8
@IR_SLOAD = common dso_local global i64 0, align 8
@IRSLOAD_PARENT = common dso_local global i32 0, align 4
@LJ_SOFTFP = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@IR_PVAL = common dso_local global i64 0, align 8
@REF_FIRST = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_TRERR_NYICOAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*)* @asm_head_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_head_side(%struct.TYPE_31__* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_30__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %2, align 8
  %30 = load i32, i32* @RID_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %3, align 8
  %33 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %4, align 8
  %34 = load i32, i32* @RSET_ALL, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @RSET_EMPTY, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  %41 = load i64, i64* @REF_BASE, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i64 %41
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %1
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %50, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %61 = call i32 @asm_snap_alloc(%struct.TYPE_31__* %60)
  br label %62

62:                                               ; preds = %57, %47, %1
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @asm_head_side_base(%struct.TYPE_31__* %63, %struct.TYPE_30__* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %193, %62
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @REF_BASE, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %196

74:                                               ; preds = %70
  %75 = load i64, i64* %12, align 8
  %76 = call %struct.TYPE_30__* @IR(i64 %75)
  store %struct.TYPE_30__* %76, %struct.TYPE_30__** %13, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IR_SLOAD, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IRSLOAD_PARENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %82, %74
  %90 = load i64, i64* @LJ_SOFTFP, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IR_HIOP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92, %89
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IR_PVAL, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %98, %92, %82
  %105 = phi i1 [ true, %92 ], [ true, %82 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @lua_assert(i32 %106)
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* @REF_FIRST, align 8
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %14, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @ra_hasreg(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %104
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @rset_clear(i32 %122, i64 %125)
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ra_hasspill(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %121
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @ra_save(%struct.TYPE_31__* %133, %struct.TYPE_30__* %134, i64 %137)
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %140 = call i32 @checkmclim(%struct.TYPE_31__* %139)
  br label %141

141:                                              ; preds = %132, %121
  br label %154

142:                                              ; preds = %104
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @ra_hasspill(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @irt_setmark(i32 %151)
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %148, %142
  br label %154

154:                                              ; preds = %153, %141
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ra_free(%struct.TYPE_31__* %161, i64 %164)
  br label %192

166:                                              ; preds = %154
  %167 = load i64, i64* %14, align 8
  %168 = call i32 @regsp_spill(i64 %167)
  %169 = call i64 @ra_hasspill(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @ra_hasreg(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 1, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %171
  br label %191

179:                                              ; preds = %166
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %181 = call i64 @ra_used(%struct.TYPE_30__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %14, align 8
  %186 = getelementptr inbounds i64, i64* %33, i64 %185
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @rset_set(i32 %187, i64 %188)
  br label %190

190:                                              ; preds = %183, %179
  br label %191

191:                                              ; preds = %190, %178
  br label %192

192:                                              ; preds = %191, %160
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %12, align 8
  %195 = add i64 %194, -1
  store i64 %195, i64* %12, align 8
  br label %70

196:                                              ; preds = %70
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %198 = call i64 @asm_stack_adjust(%struct.TYPE_31__* %197)
  store i64 %198, i64* %8, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %199, %204
  store i64 %205, i64* %9, align 8
  %206 = load i64, i64* %9, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %196
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %214

214:                                              ; preds = %208, %196
  %215 = load i64, i64* %8, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 3
  store i64 %215, i64* %219, align 8
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %337

222:                                              ; preds = %214
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %12, align 8
  br label %226

226:                                              ; preds = %333, %222
  %227 = load i64, i64* %12, align 8
  %228 = load i64, i64* @REF_BASE, align 8
  %229 = icmp ugt i64 %227, %228
  br i1 %229, label %230, label %336

230:                                              ; preds = %226
  %231 = load i64, i64* %12, align 8
  %232 = call %struct.TYPE_30__* @IR(i64 %231)
  store %struct.TYPE_30__* %232, %struct.TYPE_30__** %15, align 8
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @irt_ismarked(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %332

238:                                              ; preds = %230
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @irt_clearmark(i32 %241)
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 2
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* @REF_FIRST, align 8
  %248 = sub i64 %246, %247
  %249 = getelementptr inbounds i64, i64* %245, i64 %248
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %18, align 8
  %251 = load i64, i64* %18, align 8
  %252 = call i32 @regsp_spill(i64 %251)
  %253 = call i64 @ra_hasspill(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %238
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %18, align 8
  %260 = call i32 @ra_sethint(i64 %258, i64 %259)
  br label %274

261:                                              ; preds = %238
  %262 = load i64, i64* %18, align 8
  %263 = call i32 @regsp_spill(i64 %262)
  %264 = call i64 @sps_scale(i32 %263)
  %265 = load i64, i64* %9, align 8
  %266 = add nsw i64 %264, %265
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @sps_scale(i32 %269)
  %271 = icmp eq i64 %266, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  br label %333

273:                                              ; preds = %261
  br label %274

274:                                              ; preds = %273, %255
  %275 = load i64, i64* @LJ_SOFTFP, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %274
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @irt_isfp(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = load i32, i32* @RSET_FPR, align 4
  br label %287

285:                                              ; preds = %277, %274
  %286 = load i32, i32* @RSET_GPR, align 4
  br label %287

287:                                              ; preds = %285, %283
  %288 = phi i32 [ %284, %283 ], [ %286, %285 ]
  %289 = load i32, i32* %5, align 4
  %290 = and i32 %288, %289
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* @RSET_EMPTY, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %287
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %296, align 8
  %298 = load i32, i32* @LJ_TRERR_NYICOAL, align 4
  %299 = call i32 @lj_trace_err(%struct.TYPE_27__* %297, i32 %298)
  br label %300

300:                                              ; preds = %294, %287
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %302 = load i64, i64* %12, align 8
  %303 = load i32, i32* %16, align 4
  %304 = call i64 @ra_allocref(%struct.TYPE_31__* %301, i64 %302, i32 %303)
  store i64 %304, i64* %17, align 8
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %307 = load i64, i64* %17, align 8
  %308 = call i32 @ra_save(%struct.TYPE_31__* %305, %struct.TYPE_30__* %306, i64 %307)
  %309 = load i32, i32* %5, align 4
  %310 = load i64, i64* %17, align 8
  %311 = call i32 @rset_clear(i32 %309, i64 %310)
  %312 = load i64, i64* %17, align 8
  %313 = load i64, i64* %18, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %300
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %317 = load i64, i64* %17, align 8
  %318 = call i32 @ra_free(%struct.TYPE_31__* %316, i64 %317)
  %319 = load i32, i32* %6, align 4
  %320 = load i64, i64* %17, align 8
  %321 = call i32 @rset_clear(i32 %319, i64 %320)
  br label %329

322:                                              ; preds = %300
  %323 = load i64, i64* %18, align 8
  %324 = call i32 @regsp_spill(i64 %323)
  %325 = call i64 @ra_hasspill(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  store i32 1, i32* %11, align 4
  br label %328

328:                                              ; preds = %327, %322
  br label %329

329:                                              ; preds = %328, %315
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %331 = call i32 @checkmclim(%struct.TYPE_31__* %330)
  br label %332

332:                                              ; preds = %329, %230
  br label %333

333:                                              ; preds = %332, %272
  %334 = load i64, i64* %12, align 8
  %335 = add i64 %334, -1
  store i64 %335, i64* %12, align 8
  br label %226

336:                                              ; preds = %226
  br label %337

337:                                              ; preds = %336, %214
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 4
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @emit_setvmstate(%struct.TYPE_31__* %338, i64 %343)
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %346 = load i64, i64* %9, align 8
  %347 = call i32 @emit_spsub(%struct.TYPE_31__* %345, i64 %346)
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i64 @ra_hasspill(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %366

353:                                              ; preds = %337
  %354 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %355 = load i64, i64* @REF_BASE, align 8
  %356 = call %struct.TYPE_30__* @IR(i64 %355)
  %357 = load i64, i64* @REF_BASE, align 8
  %358 = call %struct.TYPE_30__* @IR(i64 %357)
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = call i64 @sps_scale(i32 %363)
  %365 = call i32 @emit_spload(%struct.TYPE_31__* %354, %struct.TYPE_30__* %356, i64 %360, i64 %364)
  br label %366

366:                                              ; preds = %353, %337
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %421

369:                                              ; preds = %366
  %370 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = xor i32 %372, -1
  %374 = load i32, i32* @RSET_ALL, align 4
  %375 = and i32 %373, %374
  store i32 %375, i32* %19, align 4
  br label %376

376:                                              ; preds = %419, %369
  %377 = load i32, i32* %19, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %420

379:                                              ; preds = %376
  %380 = load i32, i32* %19, align 4
  %381 = call i64 @rset_pickbot(i32 %380)
  store i64 %381, i64* %20, align 8
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 7
  %384 = load i32*, i32** %383, align 8
  %385 = load i64, i64* %20, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = call i64 @regcost_ref(i32 %387)
  store i64 %388, i64* %21, align 8
  %389 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %389, i32 0, i32 2
  %391 = load i64*, i64** %390, align 8
  %392 = load i64, i64* %21, align 8
  %393 = load i64, i64* @REF_FIRST, align 8
  %394 = sub i64 %392, %393
  %395 = getelementptr inbounds i64, i64* %391, i64 %394
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %22, align 8
  %397 = load i32, i32* %19, align 4
  %398 = load i64, i64* %20, align 8
  %399 = call i32 @rset_clear(i32 %397, i64 %398)
  %400 = load i64, i64* %22, align 8
  %401 = call i32 @regsp_spill(i64 %400)
  %402 = call i64 @ra_hasspill(i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %419

404:                                              ; preds = %379
  %405 = load i64, i64* %22, align 8
  %406 = call i32 @regsp_spill(i64 %405)
  %407 = call i64 @sps_scale(i32 %406)
  store i64 %407, i64* %23, align 8
  %408 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %409 = load i64, i64* %20, align 8
  %410 = call i32 @ra_free(%struct.TYPE_31__* %408, i64 %409)
  %411 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %412 = load i64, i64* %21, align 8
  %413 = call %struct.TYPE_30__* @IR(i64 %412)
  %414 = load i64, i64* %20, align 8
  %415 = load i64, i64* %23, align 8
  %416 = call i32 @emit_spload(%struct.TYPE_31__* %411, %struct.TYPE_30__* %413, i64 %414, i64 %415)
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %418 = call i32 @checkmclim(%struct.TYPE_31__* %417)
  br label %419

419:                                              ; preds = %404, %379
  br label %376

420:                                              ; preds = %376
  br label %421

421:                                              ; preds = %420, %366
  br label %422

422:                                              ; preds = %534, %421
  br label %423

423:                                              ; preds = %431, %422
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %6, align 4
  %428 = and i32 %426, %427
  store i32 %428, i32* %24, align 4
  %429 = load i32, i32* @RSET_EMPTY, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %458

431:                                              ; preds = %423
  %432 = load i32, i32* %24, align 4
  %433 = call i64 @rset_pickbot(i32 %432)
  store i64 %433, i64* %25, align 8
  %434 = load i64, i64* %25, align 8
  %435 = getelementptr inbounds i64, i64* %33, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = call %struct.TYPE_30__* @IR(i64 %436)
  store %struct.TYPE_30__* %437, %struct.TYPE_30__** %26, align 8
  %438 = load i32, i32* %6, align 4
  %439 = load i64, i64* %25, align 8
  %440 = call i32 @rset_clear(i32 %438, i64 %439)
  %441 = load i32, i32* %5, align 4
  %442 = load i64, i64* %25, align 8
  %443 = call i32 @rset_clear(i32 %441, i64 %442)
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %445 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %446 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %445, i32 0, i32 2
  %447 = load i64, i64* %446, align 8
  %448 = call i32 @ra_free(%struct.TYPE_31__* %444, i64 %447)
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %450 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %451 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %452 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* %25, align 8
  %455 = call i32 @emit_movrr(%struct.TYPE_31__* %449, %struct.TYPE_30__* %450, i64 %453, i64 %454)
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %457 = call i32 @checkmclim(%struct.TYPE_31__* %456)
  br label %423

458:                                              ; preds = %423
  %459 = load i32, i32* %6, align 4
  %460 = load i32, i32* @RSET_EMPTY, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %463

462:                                              ; preds = %458
  br label %537

463:                                              ; preds = %458
  %464 = load i32, i32* %6, align 4
  %465 = load i32, i32* @RSET_GPR, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %497

468:                                              ; preds = %463
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* %6, align 4
  %473 = xor i32 %472, -1
  %474 = and i32 %471, %473
  %475 = load i32, i32* %5, align 4
  %476 = and i32 %474, %475
  %477 = load i32, i32* @RSET_GPR, align 4
  %478 = and i32 %476, %477
  store i32 %478, i32* %27, align 4
  %479 = load i32, i32* %27, align 4
  %480 = load i32, i32* @RSET_EMPTY, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %488

482:                                              ; preds = %468
  %483 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %483, i32 0, i32 5
  %485 = load %struct.TYPE_27__*, %struct.TYPE_27__** %484, align 8
  %486 = load i32, i32* @LJ_TRERR_NYICOAL, align 4
  %487 = call i32 @lj_trace_err(%struct.TYPE_27__* %485, i32 %486)
  br label %488

488:                                              ; preds = %482, %468
  %489 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %490 = load i32, i32* %6, align 4
  %491 = load i32, i32* @RSET_GPR, align 4
  %492 = and i32 %490, %491
  %493 = call i64 @rset_pickbot(i32 %492)
  %494 = load i32, i32* %27, align 4
  %495 = call i64 @rset_pickbot(i32 %494)
  %496 = call i32 @ra_rename(%struct.TYPE_31__* %489, i64 %493, i64 %495)
  br label %497

497:                                              ; preds = %488, %463
  %498 = load i64, i64* @LJ_SOFTFP, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %534, label %500

500:                                              ; preds = %497
  %501 = load i32, i32* %6, align 4
  %502 = load i32, i32* @RSET_FPR, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %534

505:                                              ; preds = %500
  %506 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %507 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* %6, align 4
  %510 = xor i32 %509, -1
  %511 = and i32 %508, %510
  %512 = load i32, i32* %5, align 4
  %513 = and i32 %511, %512
  %514 = load i32, i32* @RSET_FPR, align 4
  %515 = and i32 %513, %514
  store i32 %515, i32* %28, align 4
  %516 = load i32, i32* %28, align 4
  %517 = load i32, i32* @RSET_EMPTY, align 4
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %525

519:                                              ; preds = %505
  %520 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %520, i32 0, i32 5
  %522 = load %struct.TYPE_27__*, %struct.TYPE_27__** %521, align 8
  %523 = load i32, i32* @LJ_TRERR_NYICOAL, align 4
  %524 = call i32 @lj_trace_err(%struct.TYPE_27__* %522, i32 %523)
  br label %525

525:                                              ; preds = %519, %505
  %526 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %527 = load i32, i32* %6, align 4
  %528 = load i32, i32* @RSET_FPR, align 4
  %529 = and i32 %527, %528
  %530 = call i64 @rset_pickbot(i32 %529)
  %531 = load i32, i32* %28, align 4
  %532 = call i64 @rset_pickbot(i32 %531)
  %533 = call i32 @ra_rename(%struct.TYPE_31__* %526, i64 %530, i64 %532)
  br label %534

534:                                              ; preds = %525, %500, %497
  %535 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %536 = call i32 @checkmclim(%struct.TYPE_31__* %535)
  br label %422

537:                                              ; preds = %462
  %538 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %539 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %538, i32 0, i32 6
  %540 = load %struct.TYPE_28__*, %struct.TYPE_28__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %544 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %543, i32 0, i32 4
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %545, i32 0, i32 0
  store i64 %542, i64* %546, align 8
  %547 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %548 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %551 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %550, i32 0, i32 4
  %552 = load %struct.TYPE_29__*, %struct.TYPE_29__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = icmp sgt i64 %549, %554
  br i1 %555, label %556, label %579

556:                                              ; preds = %537
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %557, i32 0, i32 5
  %559 = load %struct.TYPE_27__*, %struct.TYPE_27__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  store i32 %561, i32* %29, align 4
  %562 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %563 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %566 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %565, i32 0, i32 4
  %567 = load %struct.TYPE_29__*, %struct.TYPE_29__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %567, i32 0, i32 0
  store i64 %564, i64* %568, align 8
  %569 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %570 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %571 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %574 = load i32, i32* %5, align 4
  %575 = load i32, i32* @RSET_GPR, align 4
  %576 = and i32 %574, %575
  %577 = load i32, i32* %29, align 4
  %578 = call i32 @asm_stack_check(%struct.TYPE_31__* %569, i64 %572, %struct.TYPE_30__* %573, i32 %576, i32 %577)
  br label %579

579:                                              ; preds = %556, %537
  %580 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %580)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @asm_snap_alloc(%struct.TYPE_31__*) #2

declare dso_local i32 @asm_head_side_base(%struct.TYPE_31__*, %struct.TYPE_30__*, i32) #2

declare dso_local %struct.TYPE_30__* @IR(i64) #2

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i64 @ra_hasreg(i64) #2

declare dso_local i32 @rset_clear(i32, i64) #2

declare dso_local i64 @ra_hasspill(i32) #2

declare dso_local i32 @ra_save(%struct.TYPE_31__*, %struct.TYPE_30__*, i64) #2

declare dso_local i32 @checkmclim(%struct.TYPE_31__*) #2

declare dso_local i32 @irt_setmark(i32) #2

declare dso_local i32 @ra_free(%struct.TYPE_31__*, i64) #2

declare dso_local i32 @regsp_spill(i64) #2

declare dso_local i64 @ra_used(%struct.TYPE_30__*) #2

declare dso_local i32 @rset_set(i32, i64) #2

declare dso_local i64 @asm_stack_adjust(%struct.TYPE_31__*) #2

declare dso_local i64 @irt_ismarked(i32) #2

declare dso_local i32 @irt_clearmark(i32) #2

declare dso_local i32 @ra_sethint(i64, i64) #2

declare dso_local i64 @sps_scale(i32) #2

declare dso_local i64 @irt_isfp(i32) #2

declare dso_local i32 @lj_trace_err(%struct.TYPE_27__*, i32) #2

declare dso_local i64 @ra_allocref(%struct.TYPE_31__*, i64, i32) #2

declare dso_local i32 @emit_setvmstate(%struct.TYPE_31__*, i64) #2

declare dso_local i32 @emit_spsub(%struct.TYPE_31__*, i64) #2

declare dso_local i32 @emit_spload(%struct.TYPE_31__*, %struct.TYPE_30__*, i64, i64) #2

declare dso_local i64 @rset_pickbot(i32) #2

declare dso_local i64 @regcost_ref(i32) #2

declare dso_local i32 @emit_movrr(%struct.TYPE_31__*, %struct.TYPE_30__*, i64, i64) #2

declare dso_local i32 @ra_rename(%struct.TYPE_31__*, i64, i64) #2

declare dso_local i32 @asm_stack_check(%struct.TYPE_31__*, i64, %struct.TYPE_30__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
