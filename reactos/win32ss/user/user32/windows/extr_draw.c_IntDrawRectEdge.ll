; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_IntDrawRectEdge.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_IntDrawRectEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@BDR_INNER = common dso_local global i32 0, align 4
@BDR_OUTER = common dso_local global i32 0, align 4
@BF_FLAT = common dso_local global i32 0, align 4
@BF_MONO = common dso_local global i32 0, align 4
@NULL_BRUSH = common dso_local global i32 0, align 4
@LTRBInnerMono = common dso_local global i32* null, align 8
@LTRBOuterMono = common dso_local global i32* null, align 8
@LTRBInnerFlat = common dso_local global i8* null, align 8
@LTRBOuterFlat = common dso_local global i8* null, align 8
@COLOR_BTNFACE = common dso_local global i8 0, align 1
@BF_SOFT = common dso_local global i32 0, align 4
@LTInnerSoft = common dso_local global i8* null, align 8
@LTOuterSoft = common dso_local global i8* null, align 8
@RBInnerSoft = common dso_local global i8* null, align 8
@RBOuterSoft = common dso_local global i8* null, align 8
@LTInnerNormal = common dso_local global i8* null, align 8
@LTOuterNormal = common dso_local global i8* null, align 8
@RBInnerNormal = common dso_local global i8* null, align 8
@RBOuterNormal = common dso_local global i8* null, align 8
@BF_BOTTOMLEFT = common dso_local global i32 0, align 4
@BF_TOPRIGHT = common dso_local global i32 0, align 4
@BF_BOTTOMRIGHT = common dso_local global i32 0, align 4
@BF_TOPLEFT = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@BF_LEFT = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_RIGHT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32, i32, i32)* @IntDrawRectEdge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IntDrawRectEdge(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = bitcast %struct.TYPE_6__* %19 to i8*
  %29 = bitcast %struct.TYPE_6__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BDR_INNER, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @BDR_INNER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BDR_OUTER, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @BDR_OUTER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35, %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @BF_FLAT, align 4
  %44 = load i32, i32* @BF_MONO, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %41, %35
  %50 = phi i1 [ false, %35 ], [ %48, %41 ]
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* @NULL_BRUSH, align 4
  %54 = call i32 @GetStockObject(i32 %53)
  store i32 %54, i32* %18, align 4
  store i32 %54, i32* %17, align 4
  store i32 %54, i32* %16, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @BF_MONO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %49
  %60 = load i32*, i32** @LTRBInnerMono, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BDR_INNER, align 4
  %63 = load i32, i32* @BDR_OUTER, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %13, align 1
  store i8 %69, i8* %11, align 1
  %70 = load i32*, i32** @LTRBOuterMono, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BDR_INNER, align 4
  %73 = load i32, i32* @BDR_OUTER, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %14, align 1
  store i8 %79, i8* %12, align 1
  br label %191

80:                                               ; preds = %49
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @BF_FLAT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load i8*, i8** @LTRBInnerFlat, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BDR_INNER, align 4
  %89 = load i32, i32* @BDR_OUTER, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %13, align 1
  store i8 %94, i8* %11, align 1
  %95 = load i8*, i8** @LTRBOuterFlat, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BDR_INNER, align 4
  %98 = load i32, i32* @BDR_OUTER, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %95, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %14, align 1
  store i8 %103, i8* %12, align 1
  %104 = load i8, i8* %11, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %85
  %108 = load i8, i8* @COLOR_BTNFACE, align 1
  store i8 %108, i8* %13, align 1
  store i8 %108, i8* %11, align 1
  br label %109

109:                                              ; preds = %107, %85
  br label %190

110:                                              ; preds = %80
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @BF_SOFT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %110
  %116 = load i8*, i8** @LTInnerSoft, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @BDR_INNER, align 4
  %119 = load i32, i32* @BDR_OUTER, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %116, i64 %122
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %11, align 1
  %125 = load i8*, i8** @LTOuterSoft, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @BDR_INNER, align 4
  %128 = load i32, i32* @BDR_OUTER, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %125, i64 %131
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* %12, align 1
  %134 = load i8*, i8** @RBInnerSoft, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @BDR_INNER, align 4
  %137 = load i32, i32* @BDR_OUTER, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %134, i64 %140
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %13, align 1
  %143 = load i8*, i8** @RBOuterSoft, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @BDR_INNER, align 4
  %146 = load i32, i32* @BDR_OUTER, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %143, i64 %149
  %151 = load i8, i8* %150, align 1
  store i8 %151, i8* %14, align 1
  br label %189

152:                                              ; preds = %110
  %153 = load i8*, i8** @LTInnerNormal, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BDR_INNER, align 4
  %156 = load i32, i32* @BDR_OUTER, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %153, i64 %159
  %161 = load i8, i8* %160, align 1
  store i8 %161, i8* %11, align 1
  %162 = load i8*, i8** @LTOuterNormal, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @BDR_INNER, align 4
  %165 = load i32, i32* @BDR_OUTER, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %162, i64 %168
  %170 = load i8, i8* %169, align 1
  store i8 %170, i8* %12, align 1
  %171 = load i8*, i8** @RBInnerNormal, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BDR_INNER, align 4
  %174 = load i32, i32* @BDR_OUTER, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %171, i64 %177
  %179 = load i8, i8* %178, align 1
  store i8 %179, i8* %13, align 1
  %180 = load i8*, i8** @RBOuterNormal, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @BDR_INNER, align 4
  %183 = load i32, i32* @BDR_OUTER, align 4
  %184 = or i32 %182, %183
  %185 = and i32 %181, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %180, i64 %186
  %188 = load i8, i8* %187, align 1
  store i8 %188, i8* %14, align 1
  br label %189

189:                                              ; preds = %152, %115
  br label %190

190:                                              ; preds = %189, %109
  br label %191

191:                                              ; preds = %190, %59
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @BF_BOTTOMLEFT, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @BF_BOTTOMLEFT, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %197, %191
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @BF_TOPRIGHT, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @BF_TOPRIGHT, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %23, align 4
  br label %207

207:                                              ; preds = %205, %199
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @BF_BOTTOMRIGHT, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @BF_BOTTOMRIGHT, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %24, align 4
  br label %215

215:                                              ; preds = %213, %207
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @BF_TOPLEFT, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* @BF_TOPLEFT, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %22, align 4
  br label %223

223:                                              ; preds = %221, %215
  %224 = load i8, i8* %11, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i8, i8* %11, align 1
  %229 = call i32 @GetSysColorBrush(i8 signext %228)
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %227, %223
  %231 = load i8, i8* %12, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i8, i8* %12, align 1
  %236 = call i32 @GetSysColorBrush(i8 signext %235)
  store i32 %236, i32* %16, align 4
  br label %237

237:                                              ; preds = %234, %230
  %238 = load i8, i8* %13, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, -1
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i8, i8* %13, align 1
  %243 = call i32 @GetSysColorBrush(i8 signext %242)
  store i32 %243, i32* %17, align 4
  br label %244

244:                                              ; preds = %241, %237
  %245 = load i8, i8* %14, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, -1
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i8, i8* %14, align 1
  %250 = call i32 @GetSysColorBrush(i8 signext %249)
  store i32 %250, i32* %18, align 4
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @BF_TOP, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  %257 = bitcast %struct.TYPE_6__* %20 to i8*
  %258 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %257, i8* align 8 %258, i64 32, i1 false)
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %260, %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 %263, i64* %264, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @FillRect(i32 %265, %struct.TYPE_6__* %20, i32 %266)
  br label %268

268:                                              ; preds = %256, %251
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* @BF_LEFT, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = bitcast %struct.TYPE_6__* %20 to i8*
  %275 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %274, i8* align 8 %275, i64 32, i1 false)
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %277, %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 %280, i64* %281, align 8
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @FillRect(i32 %282, %struct.TYPE_6__* %20, i32 %283)
  br label %285

285:                                              ; preds = %273, %268
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* @BF_BOTTOM, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %285
  %291 = bitcast %struct.TYPE_6__* %20 to i8*
  %292 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %291, i8* align 8 %292, i64 32, i1 false)
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = sub nsw i64 %294, %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i64 %297, i64* %298, align 8
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @FillRect(i32 %299, %struct.TYPE_6__* %20, i32 %300)
  br label %302

302:                                              ; preds = %290, %285
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @BF_RIGHT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %302
  %308 = bitcast %struct.TYPE_6__* %20 to i8*
  %309 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 32, i1 false)
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = sub nsw i64 %311, %313
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i64 %314, i64* %315, align 8
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* %18, align 4
  %318 = call i32 @FillRect(i32 %316, %struct.TYPE_6__* %20, i32 %317)
  br label %319

319:                                              ; preds = %307, %302
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @BF_TOP, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %350

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %22, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %326, %328
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i32, i32* %23, align 4
  %338 = sext i32 %337 to i64
  %339 = sub nsw i64 %336, %338
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = mul nsw i32 2, %342
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %341, %344
  %346 = call i32 @SetRect(%struct.TYPE_6__* %20, i64 %329, i64 %334, i64 %339, i64 %345)
  %347 = load i32, i32* %6, align 4
  %348 = load i32, i32* %15, align 4
  %349 = call i32 @FillRect(i32 %347, %struct.TYPE_6__* %20, i32 %348)
  br label %350

350:                                              ; preds = %324, %319
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* @BF_LEFT, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %381

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %357, %359
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %362, %364
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* %10, align 4
  %369 = mul nsw i32 2, %368
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %367, %370
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* %21, align 4
  %375 = sext i32 %374 to i64
  %376 = sub nsw i64 %373, %375
  %377 = call i32 @SetRect(%struct.TYPE_6__* %20, i64 %360, i64 %365, i64 %371, i64 %376)
  %378 = load i32, i32* %6, align 4
  %379 = load i32, i32* %15, align 4
  %380 = call i32 @FillRect(i32 %378, %struct.TYPE_6__* %20, i32 %379)
  br label %381

381:                                              ; preds = %355, %350
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* @BF_BOTTOM, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %412

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %388, %390
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* %10, align 4
  %395 = mul nsw i32 2, %394
  %396 = sext i32 %395 to i64
  %397 = sub nsw i64 %393, %396
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* %24, align 4
  %401 = sext i32 %400 to i64
  %402 = sub nsw i64 %399, %401
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i32, i32* %10, align 4
  %406 = sext i32 %405 to i64
  %407 = sub nsw i64 %404, %406
  %408 = call i32 @SetRect(%struct.TYPE_6__* %20, i64 %391, i64 %397, i64 %402, i64 %407)
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* %17, align 4
  %411 = call i32 @FillRect(i32 %409, %struct.TYPE_6__* %20, i32 %410)
  br label %412

412:                                              ; preds = %386, %381
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* @BF_RIGHT, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %443

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load i32, i32* %10, align 4
  %421 = mul nsw i32 2, %420
  %422 = sext i32 %421 to i64
  %423 = sub nsw i64 %419, %422
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i32, i32* %23, align 4
  %427 = sext i32 %426 to i64
  %428 = add nsw i64 %425, %427
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sext i32 %431 to i64
  %433 = sub nsw i64 %430, %432
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i32, i32* %24, align 4
  %437 = sext i32 %436 to i64
  %438 = sub nsw i64 %435, %437
  %439 = call i32 @SetRect(%struct.TYPE_6__* %20, i64 %423, i64 %428, i64 %433, i64 %438)
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* %17, align 4
  %442 = call i32 @FillRect(i32 %440, %struct.TYPE_6__* %20, i32 %441)
  br label %443

443:                                              ; preds = %417, %412
  %444 = load i32, i32* %9, align 4
  %445 = load i32, i32* @BF_MIDDLE, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load i32, i32* %25, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %456, label %451

451:                                              ; preds = %448, %443
  %452 = load i32, i32* %9, align 4
  %453 = load i32, i32* @BF_ADJUST, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %566

456:                                              ; preds = %451, %448
  %457 = load i32*, i32** @LTRBInnerMono, align 8
  %458 = load i32, i32* %8, align 4
  %459 = load i32, i32* @BDR_INNER, align 4
  %460 = load i32, i32* @BDR_OUTER, align 4
  %461 = or i32 %459, %460
  %462 = and i32 %458, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %457, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, -1
  br i1 %466, label %467, label %469

467:                                              ; preds = %456
  %468 = load i32, i32* %10, align 4
  br label %470

469:                                              ; preds = %456
  br label %470

470:                                              ; preds = %469, %467
  %471 = phi i32 [ %468, %467 ], [ 0, %469 ]
  %472 = load i32*, i32** @LTRBOuterMono, align 8
  %473 = load i32, i32* %8, align 4
  %474 = load i32, i32* @BDR_INNER, align 4
  %475 = load i32, i32* @BDR_OUTER, align 4
  %476 = or i32 %474, %475
  %477 = and i32 %473, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %472, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = icmp ne i32 %480, -1
  br i1 %481, label %482, label %484

482:                                              ; preds = %470
  %483 = load i32, i32* %10, align 4
  br label %485

484:                                              ; preds = %470
  br label %485

485:                                              ; preds = %484, %482
  %486 = phi i32 [ %483, %482 ], [ 0, %484 ]
  %487 = add nsw i32 %471, %486
  store i32 %487, i32* %26, align 4
  %488 = load i32, i32* %9, align 4
  %489 = load i32, i32* @BF_LEFT, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %485
  %493 = load i32, i32* %26, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %496, %494
  store i64 %497, i64* %495, align 8
  br label %498

498:                                              ; preds = %492, %485
  %499 = load i32, i32* %9, align 4
  %500 = load i32, i32* @BF_RIGHT, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %509

503:                                              ; preds = %498
  %504 = load i32, i32* %26, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = sub nsw i64 %507, %505
  store i64 %508, i64* %506, align 8
  br label %509

509:                                              ; preds = %503, %498
  %510 = load i32, i32* %9, align 4
  %511 = load i32, i32* @BF_TOP, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %509
  %515 = load i32, i32* %26, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %518 = load i64, i64* %517, align 8
  %519 = add nsw i64 %518, %516
  store i64 %519, i64* %517, align 8
  br label %520

520:                                              ; preds = %514, %509
  %521 = load i32, i32* %9, align 4
  %522 = load i32, i32* @BF_BOTTOM, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %520
  %526 = load i32, i32* %26, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = sub nsw i64 %529, %527
  store i64 %530, i64* %528, align 8
  br label %531

531:                                              ; preds = %525, %520
  %532 = load i32, i32* %9, align 4
  %533 = load i32, i32* @BF_MIDDLE, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %556

536:                                              ; preds = %531
  %537 = load i32, i32* %25, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %536
  %540 = load i32, i32* %6, align 4
  %541 = load i32, i32* %9, align 4
  %542 = load i32, i32* @BF_MONO, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %539
  %546 = load i8, i8* @COLOR_WINDOW, align 1
  %547 = sext i8 %546 to i32
  br label %551

548:                                              ; preds = %539
  %549 = load i8, i8* @COLOR_BTNFACE, align 1
  %550 = sext i8 %549 to i32
  br label %551

551:                                              ; preds = %548, %545
  %552 = phi i32 [ %547, %545 ], [ %550, %548 ]
  %553 = trunc i32 %552 to i8
  %554 = call i32 @GetSysColorBrush(i8 signext %553)
  %555 = call i32 @FillRect(i32 %540, %struct.TYPE_6__* %19, i32 %554)
  br label %556

556:                                              ; preds = %551, %536, %531
  %557 = load i32, i32* %9, align 4
  %558 = load i32, i32* @BF_ADJUST, align 4
  %559 = and i32 %557, %558
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %565

561:                                              ; preds = %556
  %562 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %563 = bitcast %struct.TYPE_6__* %562 to i8*
  %564 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %563, i8* align 8 %564, i64 32, i1 false)
  br label %565

565:                                              ; preds = %561, %556
  br label %566

566:                                              ; preds = %565, %451
  %567 = load i32, i32* %25, align 4
  ret i32 %567
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @GetSysColorBrush(i8 signext) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @SetRect(%struct.TYPE_6__*, i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
