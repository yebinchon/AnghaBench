; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_tabinit.c_make_conv16to8_table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_tabinit.c_make_conv16to8_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MPG123_ERR_16TO8TABLE = common dso_local global i8* null, align 8
@NOQUIET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Can't allocate 16 to 8 converter table!\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Converror %d %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown 8 bit encoding choice.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_conv16to8_table(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store double 8.000000e+00, double* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %1
  %18 = call i64 @malloc(i32 8192)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i8*, i8** @MPG123_ERR_16TO8TABLE, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* @NOQUIET, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  store i32 -1, i32* %2, align 4
  br label %339

35:                                               ; preds = %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4096
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %1
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %329 [
    i32 129, label %44
    i32 130, label %108
    i32 128, label %126
    i32 131, label %145
  ]

44:                                               ; preds = %42
  %45 = call double @log(double 2.560000e+02) #3
  %46 = fdiv double 1.270000e+02, %45
  store double %46, double* %7, align 8
  store i32 -4096, i32* %4, align 4
  br label %47

47:                                               ; preds = %104, %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 4096
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 2.550000e+02, %55
  %57 = fmul double %56, 8.000000e+00
  %58 = fdiv double %57, 3.276800e+04
  %59 = fsub double 1.000000e+00, %58
  %60 = call double @log(double %59) #3
  %61 = load double, double* %7, align 8
  %62 = fmul double %60, %61
  %63 = fptosi double %62 to i32
  %64 = sub nsw i32 127, %63
  store i32 %64, i32* %8, align 4
  br label %77

65:                                               ; preds = %50
  %66 = load i32, i32* %4, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double 2.550000e+02, %67
  %69 = fmul double %68, 8.000000e+00
  %70 = fdiv double %69, 3.276800e+04
  %71 = fadd double 1.000000e+00, %70
  %72 = call double @log(double %71) #3
  %73 = load double, double* %7, align 8
  %74 = fmul double %72, %73
  %75 = fptosi double %74 to i32
  %76 = sub nsw i32 255, %75
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %65, %53
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 255
  br i1 %82, label %83, label %91

83:                                               ; preds = %80, %77
  %84 = load i64, i64* @NOQUIET, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @error2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  store i32 -1, i32* %2, align 4
  br label %339

91:                                               ; preds = %80
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 2, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %8, align 4
  %97 = trunc i32 %96 to i8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %97, i8* %103, align 1
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %47

107:                                              ; preds = %47
  br label %338

108:                                              ; preds = %42
  store i32 -4096, i32* %4, align 4
  br label %109

109:                                              ; preds = %122, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 4096
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 5
  %115 = trunc i32 %114 to i8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 %115, i8* %121, align 1
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %109

125:                                              ; preds = %109
  br label %338

126:                                              ; preds = %42
  store i32 -4096, i32* %4, align 4
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 4096
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = ashr i32 %131, 5
  %133 = add nsw i32 %132, 128
  %134 = trunc i32 %133 to i8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 %134, i8* %140, align 1
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %127

144:                                              ; preds = %127
  br label %338

145:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i32, i32* %4, align 4
  %148 = icmp slt i32 %147, 64
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i32, i32* %4, align 4
  %151 = lshr i32 %150, 1
  %152 = trunc i32 %151 to i8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 %152, i8* %158, align 1
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %146

162:                                              ; preds = %146
  store i32 64, i32* %4, align 4
  br label %163

163:                                              ; preds = %178, %162
  %164 = load i32, i32* %4, align 4
  %165 = icmp slt i32 %164, 128
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = lshr i32 %167, 2
  %169 = and i32 %168, 15
  %170 = or i32 %169, 32
  %171 = trunc i32 %170 to i8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %171, i8* %177, align 1
  br label %178

178:                                              ; preds = %166
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %163

181:                                              ; preds = %163
  store i32 128, i32* %4, align 4
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %183, 256
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  %186 = load i32, i32* %4, align 4
  %187 = lshr i32 %186, 3
  %188 = and i32 %187, 15
  %189 = or i32 %188, 48
  %190 = trunc i32 %189 to i8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8 %190, i8* %196, align 1
  br label %197

197:                                              ; preds = %185
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %182

200:                                              ; preds = %182
  store i32 256, i32* %4, align 4
  br label %201

201:                                              ; preds = %216, %200
  %202 = load i32, i32* %4, align 4
  %203 = icmp slt i32 %202, 512
  br i1 %203, label %204, label %219

204:                                              ; preds = %201
  %205 = load i32, i32* %4, align 4
  %206 = lshr i32 %205, 4
  %207 = and i32 %206, 15
  %208 = or i32 %207, 64
  %209 = trunc i32 %208 to i8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  store i8 %209, i8* %215, align 1
  br label %216

216:                                              ; preds = %204
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %201

219:                                              ; preds = %201
  store i32 512, i32* %4, align 4
  br label %220

220:                                              ; preds = %235, %219
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %221, 1024
  br i1 %222, label %223, label %238

223:                                              ; preds = %220
  %224 = load i32, i32* %4, align 4
  %225 = lshr i32 %224, 5
  %226 = and i32 %225, 15
  %227 = or i32 %226, 80
  %228 = trunc i32 %227 to i8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8 %228, i8* %234, align 1
  br label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %220

238:                                              ; preds = %220
  store i32 1024, i32* %4, align 4
  br label %239

239:                                              ; preds = %254, %238
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %240, 2048
  br i1 %241, label %242, label %257

242:                                              ; preds = %239
  %243 = load i32, i32* %4, align 4
  %244 = lshr i32 %243, 6
  %245 = and i32 %244, 15
  %246 = or i32 %245, 96
  %247 = trunc i32 %246 to i8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8 %247, i8* %253, align 1
  br label %254

254:                                              ; preds = %242
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %239

257:                                              ; preds = %239
  store i32 2048, i32* %4, align 4
  br label %258

258:                                              ; preds = %273, %257
  %259 = load i32, i32* %4, align 4
  %260 = icmp slt i32 %259, 4096
  br i1 %260, label %261, label %276

261:                                              ; preds = %258
  %262 = load i32, i32* %4, align 4
  %263 = lshr i32 %262, 7
  %264 = and i32 %263, 15
  %265 = or i32 %264, 112
  %266 = trunc i32 %265 to i8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 %266, i8* %272, align 1
  br label %273

273:                                              ; preds = %261
  %274 = load i32, i32* %4, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %4, align 4
  br label %258

276:                                              ; preds = %258
  store i32 -4095, i32* %4, align 4
  br label %277

277:                                              ; preds = %298, %276
  %278 = load i32, i32* %4, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %277
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sub nsw i32 0, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = or i32 %289, 128
  %291 = trunc i32 %290 to i8
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  store i8 %291, i8* %297, align 1
  br label %298

298:                                              ; preds = %280
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %4, align 4
  br label %277

301:                                              ; preds = %277
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 -4095
  %306 = load i8, i8* %305, align 1
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 -4096
  store i8 %306, i8* %310, align 1
  store i32 -4096, i32* %4, align 4
  br label %311

311:                                              ; preds = %325, %301
  %312 = load i32, i32* %4, align 4
  %313 = icmp slt i32 %312, 4096
  br i1 %313, label %314, label %328

314:                                              ; preds = %311
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = xor i32 %322, 85
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %320, align 1
  br label %325

325:                                              ; preds = %314
  %326 = load i32, i32* %4, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %4, align 4
  br label %311

328:                                              ; preds = %311
  br label %338

329:                                              ; preds = %42
  %330 = load i8*, i8** @MPG123_ERR_16TO8TABLE, align 8
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 2
  store i8* %330, i8** %332, align 8
  %333 = load i64, i64* @NOQUIET, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %329
  %336 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %329
  store i32 -1, i32* %2, align 4
  br label %339

338:                                              ; preds = %328, %144, %125, %107
  store i32 0, i32* %2, align 4
  br label %339

339:                                              ; preds = %338, %337, %90, %34
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i32 @error2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
