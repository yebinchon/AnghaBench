; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_loop.c_loop_emit_phi.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_loop.c_loop_emit_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i64, i64, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }

@IR_LOOP = common dso_local global i64 0, align 8
@REF_DROP = common dso_local global i64 0, align 8
@IR_CALLN = common dso_local global i64 0, align 8
@IR_CARG = common dso_local global i64 0, align 8
@LJ_MAX_PHI = common dso_local global i64 0, align 8
@LJ_TRERR_PHIOV = common dso_local global i32 0, align 4
@IR_PHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64*, i64*, i64, i64)* @loop_emit_phi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_emit_phi(%struct.TYPE_9__* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_11__*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @IR_LOOP, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %92, %5
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* @REF_DROP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %43
  %60 = load i64, i64* %16, align 8
  %61 = call %struct.TYPE_11__* @IR(i64 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @irt_clearphi(i32 %63)
  br label %91

65:                                               ; preds = %55
  %66 = load i64, i64* %16, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call %struct.TYPE_11__* @IR(i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %65
  %78 = load i64, i64* %17, align 8
  %79 = call %struct.TYPE_11__* @IR(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %16, align 8
  %86 = call %struct.TYPE_11__* @IR(i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @irt_setmark(i32 %88)
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %84, %77, %65
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %39

95:                                               ; preds = %39
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %260

99:                                               ; preds = %95
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %201, %99
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %204

110:                                              ; preds = %106
  %111 = load i64, i64* %12, align 8
  %112 = call %struct.TYPE_11__* @IR(i64 %111)
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %19, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @irref_isk(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.TYPE_11__* @IR(i64 %121)
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @irt_clearmark(i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @irref_isk(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %200, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call %struct.TYPE_11__* @IR(i64 %135)
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @irt_clearmark(i32 %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %199

145:                                              ; preds = %132
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IR_CALLN, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %145
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IR_CARG, align 8
  %156 = icmp sle i64 %154, %155
  br i1 %156, label %157, label %199

157:                                              ; preds = %151
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call %struct.TYPE_11__* @IR(i64 %160)
  store %struct.TYPE_11__* %161, %struct.TYPE_11__** %19, align 8
  br label %162

162:                                              ; preds = %189, %157
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IR_CARG, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %162
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @irref_isk(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call %struct.TYPE_11__* @IR(i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @irt_clearmark(i32 %180)
  br label %182

182:                                              ; preds = %174, %168
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @irref_isk(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %198

189:                                              ; preds = %182
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call %struct.TYPE_11__* @IR(i64 %192)
  store %struct.TYPE_11__* %193, %struct.TYPE_11__** %19, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @irt_clearmark(i32 %196)
  br label %162

198:                                              ; preds = %188, %162
  br label %199

199:                                              ; preds = %198, %151, %145, %132
  br label %200

200:                                              ; preds = %199, %126
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %12, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %12, align 8
  br label %106

204:                                              ; preds = %106
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = sub i64 %208, 1
  store i64 %209, i64* %18, align 8
  br label %210

210:                                              ; preds = %256, %204
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %10, align 8
  %213 = icmp uge i64 %211, %212
  br i1 %213, label %214, label %259

214:                                              ; preds = %210
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i64, i64* %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %219
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %20, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32* %228, i32** %21, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %232

232:                                              ; preds = %252, %214
  %233 = load i64, i64* %22, align 8
  %234 = load i64, i64* %23, align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %232
  %237 = load i32*, i32** %21, align 8
  %238 = load i64, i64* %22, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @snap_ref(i32 %240)
  store i64 %241, i64* %24, align 8
  %242 = load i64, i64* %24, align 8
  %243 = call i64 @irref_isk(i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %236
  %246 = load i64, i64* %24, align 8
  %247 = call %struct.TYPE_11__* @IR(i64 %246)
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @irt_clearmark(i32 %249)
  br label %251

251:                                              ; preds = %245, %236
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %22, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %22, align 8
  br label %232

255:                                              ; preds = %232
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %18, align 8
  %258 = add i64 %257, -1
  store i64 %258, i64* %18, align 8
  br label %210

259:                                              ; preds = %210
  br label %260

260:                                              ; preds = %259, %95
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %263, %266
  store i64 %267, i64* %14, align 8
  store i64 1, i64* %12, align 8
  br label %268

268:                                              ; preds = %340, %260
  %269 = load i64, i64* %12, align 8
  %270 = load i64, i64* %14, align 8
  %271 = icmp ult i64 %269, %270
  br i1 %271, label %272, label %343

272:                                              ; preds = %268
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %12, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @tref_ref(i32 %278)
  store i64 %279, i64* %25, align 8
  br label %280

280:                                              ; preds = %338, %272
  %281 = load i64, i64* %25, align 8
  %282 = call i64 @irref_isk(i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %280
  %285 = load i64, i64* %25, align 8
  %286 = load i64*, i64** %7, align 8
  %287 = load i64, i64* %25, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %285, %289
  br label %291

291:                                              ; preds = %284, %280
  %292 = phi i1 [ false, %280 ], [ %290, %284 ]
  br i1 %292, label %293, label %339

293:                                              ; preds = %291
  %294 = load i64, i64* %25, align 8
  %295 = call %struct.TYPE_11__* @IR(i64 %294)
  store %struct.TYPE_11__* %295, %struct.TYPE_11__** %26, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @irt_clearmark(i32 %298)
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @irt_isphi(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %293
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @irt_ispri(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305, %293
  br label %339

312:                                              ; preds = %305
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @irt_setphi(i32 %315)
  %317 = load i64, i64* %9, align 8
  %318 = load i64, i64* @LJ_MAX_PHI, align 8
  %319 = icmp uge i64 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %312
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %322 = load i32, i32* @LJ_TRERR_PHIOV, align 4
  %323 = call i32 @lj_trace_err(%struct.TYPE_9__* %321, i32 %322)
  br label %324

324:                                              ; preds = %320, %312
  %325 = load i64, i64* %25, align 8
  %326 = load i64*, i64** %8, align 8
  %327 = load i64, i64* %9, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %9, align 8
  %329 = getelementptr inbounds i64, i64* %326, i64 %327
  store i64 %325, i64* %329, align 8
  %330 = load i64*, i64** %7, align 8
  %331 = load i64, i64* %25, align 8
  %332 = getelementptr inbounds i64, i64* %330, i64 %331
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %25, align 8
  %334 = load i64, i64* %25, align 8
  %335 = load i64, i64* %15, align 8
  %336 = icmp ugt i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %324
  br label %339

338:                                              ; preds = %324
  br label %280

339:                                              ; preds = %337, %311, %291
  br label %340

340:                                              ; preds = %339
  %341 = load i64, i64* %12, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %12, align 8
  br label %268

343:                                              ; preds = %268
  br label %344

344:                                              ; preds = %385, %343
  %345 = load i32, i32* %11, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %386

347:                                              ; preds = %344
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %348

348:                                              ; preds = %382, %347
  %349 = load i64, i64* %12, align 8
  %350 = load i64, i64* %9, align 8
  %351 = icmp ult i64 %349, %350
  br i1 %351, label %352, label %385

352:                                              ; preds = %348
  %353 = load i64*, i64** %8, align 8
  %354 = load i64, i64* %12, align 8
  %355 = getelementptr inbounds i64, i64* %353, i64 %354
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %27, align 8
  %357 = load i64, i64* %27, align 8
  %358 = call %struct.TYPE_11__* @IR(i64 %357)
  store %struct.TYPE_11__* %358, %struct.TYPE_11__** %28, align 8
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i64 @irt_ismarked(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %381, label %364

364:                                              ; preds = %352
  %365 = load i64*, i64** %7, align 8
  %366 = load i64, i64* %27, align 8
  %367 = getelementptr inbounds i64, i64* %365, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = call %struct.TYPE_11__* @IR(i64 %368)
  store %struct.TYPE_11__* %369, %struct.TYPE_11__** %29, align 8
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = call i64 @irt_ismarked(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %364
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @irt_clearmark(i32 %378)
  store i32 1, i32* %11, align 4
  br label %380

380:                                              ; preds = %375, %364
  br label %381

381:                                              ; preds = %380, %352
  br label %382

382:                                              ; preds = %381
  %383 = load i64, i64* %12, align 8
  %384 = add i64 %383, 1
  store i64 %384, i64* %12, align 8
  br label %348

385:                                              ; preds = %348
  br label %344

386:                                              ; preds = %344
  store i64 0, i64* %12, align 8
  br label %387

387:                                              ; preds = %437, %386
  %388 = load i64, i64* %12, align 8
  %389 = load i64, i64* %9, align 8
  %390 = icmp ult i64 %388, %389
  br i1 %390, label %391, label %440

391:                                              ; preds = %387
  %392 = load i64*, i64** %8, align 8
  %393 = load i64, i64* %12, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %30, align 8
  %396 = load i64, i64* %30, align 8
  %397 = call %struct.TYPE_11__* @IR(i64 %396)
  store %struct.TYPE_11__* %397, %struct.TYPE_11__** %31, align 8
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = call i64 @irt_ismarked(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %427, label %403

403:                                              ; preds = %391
  %404 = load i64*, i64** %7, align 8
  %405 = load i64, i64* %30, align 8
  %406 = getelementptr inbounds i64, i64* %404, i64 %405
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %32, align 8
  %408 = load i64, i64* %32, align 8
  %409 = load i64, i64* %15, align 8
  %410 = icmp ugt i64 %408, %409
  br i1 %410, label %411, label %417

411:                                              ; preds = %403
  %412 = load i64, i64* %32, align 8
  %413 = call %struct.TYPE_11__* @IR(i64 %412)
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @irt_setphi(i32 %415)
  br label %417

417:                                              ; preds = %411, %403
  %418 = load i32, i32* @IR_PHI, align 4
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @irt_type(i32 %421)
  %423 = call i32 @IRT(i32 %418, i32 %422)
  %424 = load i64, i64* %30, align 8
  %425 = load i64, i64* %32, align 8
  %426 = call i32 @emitir_raw(i32 %423, i64 %424, i64 %425)
  br label %436

427:                                              ; preds = %391
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @irt_clearmark(i32 %430)
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @irt_clearphi(i32 %434)
  br label %436

436:                                              ; preds = %427, %417
  br label %437

437:                                              ; preds = %436
  %438 = load i64, i64* %12, align 8
  %439 = add i64 %438, 1
  store i64 %439, i64* %12, align 8
  br label %387

440:                                              ; preds = %387
  ret void
}

declare dso_local i32 @irt_clearphi(i32) #1

declare dso_local %struct.TYPE_11__* @IR(i64) #1

declare dso_local i32 @irt_setmark(i32) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32 @irt_clearmark(i32) #1

declare dso_local i64 @snap_ref(i32) #1

declare dso_local i64 @tref_ref(i32) #1

declare dso_local i64 @irt_isphi(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i32 @irt_setphi(i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @irt_ismarked(i32) #1

declare dso_local i32 @emitir_raw(i32, i64, i64) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @irt_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
