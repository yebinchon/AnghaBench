; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldebug.c_symbexec.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldebug.c_symbexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__**, i32* }
%struct.TYPE_8__ = type { i32 }

@NUM_OPCODES = common dso_local global i32 0, align 4
@OpArgK = common dso_local global i32 0, align 4
@OpArgR = common dso_local global i32 0, align 4
@NO_REG = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@OP_MOVE = common dso_local global i32 0, align 4
@VARARG_ISVARARG = common dso_local global i32 0, align 4
@VARARG_NEEDSARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @symbexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbexec(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @precheck(%struct.TYPE_9__* %25)
  %27 = call i32 @check(i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %492, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %495

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @GET_OPCODE(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @GETARG_A(i32 %42)
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @NUM_OPCODES, align 4
  %46 = icmp slt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @check(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @checkreg(%struct.TYPE_9__* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @getOpMode(i32 %52)
  switch i32 %53, label %149 [
    i32 130, label %54
    i32 129, label %71
    i32 128, label %87
  ]

54:                                               ; preds = %32
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @GETARG_B(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @GETARG_C(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @getBMode(i32 %61)
  %63 = call i32 @checkArgMode(%struct.TYPE_9__* %59, i32 %60, i32 %62)
  %64 = call i32 @check(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @getCMode(i32 %67)
  %69 = call i32 @checkArgMode(%struct.TYPE_9__* %65, i32 %66, i32 %68)
  %70 = call i32 @check(i32 %69)
  br label %149

71:                                               ; preds = %32
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @GETARG_Bx(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @getBMode(i32 %74)
  %76 = load i32, i32* @OpArgK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @check(i32 %84)
  br label %86

86:                                               ; preds = %78, %71
  br label %149

87:                                               ; preds = %32
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @GETARG_sBx(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @getBMode(i32 %90)
  %92 = load i32, i32* @OpArgR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %148

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp sle i32 0, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br label %107

107:                                              ; preds = %101, %94
  %108 = phi i1 [ false, %94 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @check(i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %138, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @GET_OPCODE(i32 %129)
  %131 = icmp eq i32 %130, 135
  br i1 %131, label %132, label %136

132:                                              ; preds = %118
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @GETARG_C(i32 %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132, %118
  br label %141

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %114

141:                                              ; preds = %136, %114
  %142 = load i32, i32* %15, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @check(i32 %145)
  br label %147

147:                                              ; preds = %141, %107
  br label %148

148:                                              ; preds = %147, %87
  br label %149

149:                                              ; preds = %32, %148, %86, %54
  %150 = load i32, i32* %10, align 4
  %151 = call i64 @testAMode(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %159, %149
  %161 = load i32, i32* %10, align 4
  %162 = call i64 @testTMode(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 2
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @check(i32 %171)
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @GET_OPCODE(i32 %180)
  %182 = icmp eq i32 %181, 141
  %183 = zext i1 %182 to i32
  %184 = call i32 @check(i32 %183)
  br label %185

185:                                              ; preds = %164, %160
  %186 = load i32, i32* %10, align 4
  switch i32 %186, label %490 [
    i32 140, label %187
    i32 139, label %225
    i32 142, label %236
    i32 134, label %236
    i32 143, label %244
    i32 136, label %244
    i32 137, label %253
    i32 146, label %265
    i32 132, label %271
    i32 145, label %289
    i32 144, label %289
    i32 141, label %294
    i32 148, label %315
    i32 133, label %315
    i32 138, label %354
    i32 135, label %367
    i32 147, label %391
    i32 131, label %454
  ]

187:                                              ; preds = %185
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @check(i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @GET_OPCODE(i32 %206)
  %208 = icmp ne i32 %207, 135
  br i1 %208, label %220, label %209

209:                                              ; preds = %190
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @GETARG_C(i32 %217)
  %219 = icmp ne i32 %218, 0
  br label %220

220:                                              ; preds = %209, %190
  %221 = phi i1 [ true, %190 ], [ %219, %209 ]
  %222 = zext i1 %221 to i32
  %223 = call i32 @check(i32 %222)
  br label %224

224:                                              ; preds = %220, %187
  br label %491

225:                                              ; preds = %185
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp sle i32 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %233, %229, %225
  br label %491

236:                                              ; preds = %185, %185
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @check(i32 %242)
  br label %491

244:                                              ; preds = %185, %185
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 7
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = call i32 @ttisstring(i32* %250)
  %252 = call i32 @check(i32 %251)
  br label %491

253:                                              ; preds = %185
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  %257 = call i32 @checkreg(%struct.TYPE_9__* %254, i32 %256)
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 1
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %253
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %8, align 4
  br label %264

264:                                              ; preds = %262, %253
  br label %491

265:                                              ; preds = %185
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp slt i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @check(i32 %269)
  br label %491

271:                                              ; preds = %185
  %272 = load i32, i32* %13, align 4
  %273 = icmp sge i32 %272, 1
  %274 = zext i1 %273 to i32
  %275 = call i32 @check(i32 %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 2
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %278, %279
  %281 = call i32 @checkreg(%struct.TYPE_9__* %276, i32 %280)
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 2
  %285 = icmp sge i32 %282, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %271
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %286, %271
  br label %491

289:                                              ; preds = %185, %185
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %291, 3
  %293 = call i32 @checkreg(%struct.TYPE_9__* %290, i32 %292)
  br label %294

294:                                              ; preds = %185, %289
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %296, %297
  store i32 %298, i32* %17, align 4
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @NO_REG, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %314

302:                                              ; preds = %294
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %17, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %5, align 4
  %309 = icmp sle i32 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %7, align 4
  br label %314

314:                                              ; preds = %310, %306, %302, %294
  br label %491

315:                                              ; preds = %185, %185
  %316 = load i32, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %315
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* %12, align 4
  %322 = add nsw i32 %320, %321
  %323 = sub nsw i32 %322, 1
  %324 = call i32 @checkreg(%struct.TYPE_9__* %319, i32 %323)
  br label %325

325:                                              ; preds = %318, %315
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* @LUA_MULTRET, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %325
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @checkopenop(%struct.TYPE_9__* %332, i32 %333)
  %335 = call i32 @check(i32 %334)
  br label %347

336:                                              ; preds = %325
  %337 = load i32, i32* %13, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %336
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %341, %342
  %344 = sub nsw i32 %343, 1
  %345 = call i32 @checkreg(%struct.TYPE_9__* %340, i32 %344)
  br label %346

346:                                              ; preds = %339, %336
  br label %347

347:                                              ; preds = %346, %331
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* %11, align 4
  %350 = icmp sge i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* %7, align 4
  store i32 %352, i32* %8, align 4
  br label %353

353:                                              ; preds = %351, %347
  br label %491

354:                                              ; preds = %185
  %355 = load i32, i32* %12, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %12, align 4
  %357 = load i32, i32* %12, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %361, %362
  %364 = sub nsw i32 %363, 1
  %365 = call i32 @checkreg(%struct.TYPE_9__* %360, i32 %364)
  br label %366

366:                                              ; preds = %359, %354
  br label %491

367:                                              ; preds = %185
  %368 = load i32, i32* %12, align 4
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %12, align 4
  %374 = add nsw i32 %372, %373
  %375 = call i32 @checkreg(%struct.TYPE_9__* %371, i32 %374)
  br label %376

376:                                              ; preds = %370, %367
  %377 = load i32, i32* %13, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %376
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  %382 = load i32, i32* %7, align 4
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = sub nsw i32 %385, 1
  %387 = icmp slt i32 %382, %386
  %388 = zext i1 %387 to i32
  %389 = call i32 @check(i32 %388)
  br label %390

390:                                              ; preds = %379, %376
  br label %491

391:                                              ; preds = %185
  %392 = load i32, i32* %12, align 4
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = icmp slt i32 %392, %395
  %397 = zext i1 %396 to i32
  %398 = call i32 @check(i32 %397)
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 6
  %401 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %400, align 8
  %402 = load i32, i32* %12, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %401, i64 %403
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %18, align 4
  %408 = load i32, i32* %7, align 4
  %409 = load i32, i32* %18, align 4
  %410 = add nsw i32 %408, %409
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp slt i32 %410, %413
  %415 = zext i1 %414 to i32
  %416 = call i32 @check(i32 %415)
  store i32 1, i32* %19, align 4
  br label %417

417:                                              ; preds = %442, %391
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* %18, align 4
  %420 = icmp sle i32 %418, %419
  br i1 %420, label %421, label %445

421:                                              ; preds = %417
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 5
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* %19, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %424, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @GET_OPCODE(i32 %430)
  store i32 %431, i32* %20, align 4
  %432 = load i32, i32* %20, align 4
  %433 = icmp eq i32 %432, 142
  br i1 %433, label %438, label %434

434:                                              ; preds = %421
  %435 = load i32, i32* %20, align 4
  %436 = load i32, i32* @OP_MOVE, align 4
  %437 = icmp eq i32 %435, %436
  br label %438

438:                                              ; preds = %434, %421
  %439 = phi i1 [ true, %421 ], [ %437, %434 ]
  %440 = zext i1 %439 to i32
  %441 = call i32 @check(i32 %440)
  br label %442

442:                                              ; preds = %438
  %443 = load i32, i32* %19, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %19, align 4
  br label %417

445:                                              ; preds = %417
  %446 = load i32, i32* %6, align 4
  %447 = load i32, i32* @NO_REG, align 4
  %448 = icmp ne i32 %446, %447
  br i1 %448, label %449, label %453

449:                                              ; preds = %445
  %450 = load i32, i32* %18, align 4
  %451 = load i32, i32* %7, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %7, align 4
  br label %453

453:                                              ; preds = %449, %445
  br label %491

454:                                              ; preds = %185
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @VARARG_ISVARARG, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %454
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @VARARG_NEEDSARG, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  br label %469

469:                                              ; preds = %461, %454
  %470 = phi i1 [ false, %454 ], [ %468, %461 ]
  %471 = zext i1 %470 to i32
  %472 = call i32 @check(i32 %471)
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 %473, -1
  store i32 %474, i32* %12, align 4
  %475 = load i32, i32* %12, align 4
  %476 = load i32, i32* @LUA_MULTRET, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %483

478:                                              ; preds = %469
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %480 = load i32, i32* %7, align 4
  %481 = call i32 @checkopenop(%struct.TYPE_9__* %479, i32 %480)
  %482 = call i32 @check(i32 %481)
  br label %483

483:                                              ; preds = %478, %469
  %484 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %485 = load i32, i32* %11, align 4
  %486 = load i32, i32* %12, align 4
  %487 = add nsw i32 %485, %486
  %488 = sub nsw i32 %487, 1
  %489 = call i32 @checkreg(%struct.TYPE_9__* %484, i32 %488)
  br label %491

490:                                              ; preds = %185
  br label %491

491:                                              ; preds = %490, %483, %453, %390, %366, %353, %314, %288, %265, %264, %244, %236, %235, %224
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %7, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %7, align 4
  br label %28

495:                                              ; preds = %28
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 5
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %8, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  ret i32 %502
}

declare dso_local i32 @check(i32) #1

declare dso_local i32 @precheck(%struct.TYPE_9__*) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @checkreg(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @getOpMode(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @GETARG_C(i32) #1

declare dso_local i32 @checkArgMode(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @getBMode(i32) #1

declare dso_local i32 @getCMode(i32) #1

declare dso_local i32 @GETARG_Bx(i32) #1

declare dso_local i32 @GETARG_sBx(i32) #1

declare dso_local i64 @testAMode(i32) #1

declare dso_local i64 @testTMode(i32) #1

declare dso_local i32 @ttisstring(i32*) #1

declare dso_local i32 @checkopenop(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
