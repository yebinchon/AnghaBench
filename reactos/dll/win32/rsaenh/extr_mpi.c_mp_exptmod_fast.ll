; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_exptmod_fast.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_exptmod_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i32, i32* }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_WARRAY = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_exptmod_fast(%struct.TYPE_41__* %0, %struct.TYPE_41__* %1, %struct.TYPE_41__* %2, %struct.TYPE_41__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x %struct.TYPE_41__], align 16
  %13 = alloca %struct.TYPE_41__, align 8
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
  %25 = alloca i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %7, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %8, align 8
  store %struct.TYPE_41__* %2, %struct.TYPE_41__** %9, align 8
  store %struct.TYPE_41__* %3, %struct.TYPE_41__** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %27 = call i32 @mp_count_bits(%struct.TYPE_41__* %26)
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %22, align 4
  %29 = icmp sle i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 2, i32* %24, align 4
  br label %57

31:                                               ; preds = %5
  %32 = load i32, i32* %22, align 4
  %33 = icmp sle i32 %32, 36
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 3, i32* %24, align 4
  br label %56

35:                                               ; preds = %31
  %36 = load i32, i32* %22, align 4
  %37 = icmp sle i32 %36, 140
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 4, i32* %24, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %22, align 4
  %41 = icmp sle i32 %40, 450
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 5, i32* %24, align 4
  br label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %22, align 4
  %45 = icmp sle i32 %44, 1303
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 6, i32* %24, align 4
  br label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %22, align 4
  %49 = icmp sle i32 %48, 3529
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 7, i32* %24, align 4
  br label %52

51:                                               ; preds = %47
  store i32 8, i32* %24, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %30
  %58 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %59 = call i32 @mp_init(%struct.TYPE_41__* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @MP_OKAY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %472

64:                                               ; preds = %57
  %65 = load i32, i32* %24, align 4
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %101, %64
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %24, align 4
  %71 = shl i32 1, %70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load i32, i32* %22, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %75
  %77 = call i32 @mp_init(%struct.TYPE_41__* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @MP_OKAY, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i32, i32* %24, align 4
  %82 = sub nsw i32 %81, 1
  %83 = shl i32 1, %82
  store i32 %83, i32* %23, align 4
  br label %84

84:                                               ; preds = %93, %80
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %90
  %92 = call i32 @mp_clear(%struct.TYPE_41__* %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %23, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %23, align 4
  br label %84

96:                                               ; preds = %84
  %97 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %98 = call i32 @mp_clear(%struct.TYPE_41__* %97)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %6, align 4
  br label %472

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %22, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  br label %68

104:                                              ; preds = %68
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %104
  %108 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %109 = call i32 @mp_montgomery_setup(%struct.TYPE_41__* %108, i32* %15)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* @MP_OKAY, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %451

113:                                              ; preds = %107
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @MP_WARRAY, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %113
  %122 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CHAR_BIT, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = load i32, i32* @DIGIT_BIT, align 4
  %129 = mul nsw i32 2, %128
  %130 = sext i32 %129 to i64
  %131 = sub i64 %127, %130
  %132 = trunc i64 %131 to i32
  %133 = shl i32 1, %132
  %134 = icmp slt i32 %124, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  store i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)* @fast_mp_montgomery_reduce, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  br label %137

136:                                              ; preds = %121, %113
  store i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)* @mp_montgomery_reduce, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  br label %137

137:                                              ; preds = %136, %135
  br label %152

138:                                              ; preds = %104
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %143 = call i32 @mp_dr_setup(%struct.TYPE_41__* %142, i32* %15)
  store i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)* @mp_dr_reduce, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  br label %151

144:                                              ; preds = %138
  %145 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %146 = call i32 @mp_reduce_2k_setup(%struct.TYPE_41__* %145, i32* %15)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* @MP_OKAY, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %451

150:                                              ; preds = %144
  store i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)* @mp_reduce_2k, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  br label %151

151:                                              ; preds = %150, %141
  br label %152

152:                                              ; preds = %151, %137
  %153 = call i32 @mp_init(%struct.TYPE_41__* %13)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* @MP_OKAY, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %451

157:                                              ; preds = %152
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %162 = call i32 @mp_montgomery_calc_normalization(%struct.TYPE_41__* %13, %struct.TYPE_41__* %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* @MP_OKAY, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %449

166:                                              ; preds = %160
  %167 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %168 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %169 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %170 = call i32 @mp_mulmod(%struct.TYPE_41__* %167, %struct.TYPE_41__* %13, %struct.TYPE_41__* %168, %struct.TYPE_41__* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* @MP_OKAY, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %449

174:                                              ; preds = %166
  br label %185

175:                                              ; preds = %157
  %176 = call i32 @mp_set(%struct.TYPE_41__* %13, i32 1)
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %178 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %179 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %180 = call i32 @mp_mod(%struct.TYPE_41__* %177, %struct.TYPE_41__* %178, %struct.TYPE_41__* %179)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* @MP_OKAY, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %449

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %174
  %186 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %187 = load i32, i32* %24, align 4
  %188 = sub nsw i32 %187, 1
  %189 = shl i32 1, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %190
  %192 = call i32 @mp_copy(%struct.TYPE_41__* %186, %struct.TYPE_41__* %191)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* @MP_OKAY, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %449

196:                                              ; preds = %185
  store i32 0, i32* %22, align 4
  br label %197

197:                                              ; preds = %231, %196
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %24, align 4
  %200 = sub nsw i32 %199, 1
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %234

202:                                              ; preds = %197
  %203 = load i32, i32* %24, align 4
  %204 = sub nsw i32 %203, 1
  %205 = shl i32 1, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %206
  %208 = load i32, i32* %24, align 4
  %209 = sub nsw i32 %208, 1
  %210 = shl i32 1, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %211
  %213 = call i32 @mp_sqr(%struct.TYPE_41__* %207, %struct.TYPE_41__* %212)
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* @MP_OKAY, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  br label %449

217:                                              ; preds = %202
  %218 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %219 = load i32, i32* %24, align 4
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 1, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %222
  %224 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %225 = load i32, i32* %15, align 4
  %226 = call i32 %218(%struct.TYPE_41__* %223, %struct.TYPE_41__* %224, i32 %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* @MP_OKAY, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  br label %449

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %22, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %22, align 4
  br label %197

234:                                              ; preds = %197
  %235 = load i32, i32* %24, align 4
  %236 = sub nsw i32 %235, 1
  %237 = shl i32 1, %236
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %22, align 4
  br label %239

239:                                              ; preds = %269, %234
  %240 = load i32, i32* %22, align 4
  %241 = load i32, i32* %24, align 4
  %242 = shl i32 1, %241
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %239
  %245 = load i32, i32* %22, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %247
  %249 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %251
  %253 = call i32 @mp_mul(%struct.TYPE_41__* %248, %struct.TYPE_41__* %249, %struct.TYPE_41__* %252)
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* @MP_OKAY, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %449

257:                                              ; preds = %244
  %258 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %260
  %262 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %263 = load i32, i32* %15, align 4
  %264 = call i32 %258(%struct.TYPE_41__* %261, %struct.TYPE_41__* %262, i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* @MP_OKAY, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %257
  br label %449

268:                                              ; preds = %257
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %22, align 4
  br label %239

272:                                              ; preds = %239
  store i32 0, i32* %20, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %14, align 4
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %277

277:                                              ; preds = %380, %328, %308, %272
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %19, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %295

281:                                              ; preds = %277
  %282 = load i32, i32* %21, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  br label %381

285:                                              ; preds = %281
  %286 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %21, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %21, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* @DIGIT_BIT, align 4
  store i32 %294, i32* %19, align 4
  br label %295

295:                                              ; preds = %285, %277
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* @DIGIT_BIT, align 4
  %298 = sub nsw i32 %297, 1
  %299 = ashr i32 %296, %298
  %300 = and i32 %299, 1
  store i32 %300, i32* %23, align 4
  %301 = load i32, i32* %14, align 4
  %302 = shl i32 %301, 1
  store i32 %302, i32* %14, align 4
  %303 = load i32, i32* %20, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %295
  %306 = load i32, i32* %23, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %277

309:                                              ; preds = %305, %295
  %310 = load i32, i32* %20, align 4
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %329

312:                                              ; preds = %309
  %313 = load i32, i32* %23, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  %316 = call i32 @mp_sqr(%struct.TYPE_41__* %13, %struct.TYPE_41__* %13)
  store i32 %316, i32* %16, align 4
  %317 = load i32, i32* @MP_OKAY, align 4
  %318 = icmp ne i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  br label %449

320:                                              ; preds = %315
  %321 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %322 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %323 = load i32, i32* %15, align 4
  %324 = call i32 %321(%struct.TYPE_41__* %13, %struct.TYPE_41__* %322, i32 %323)
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* @MP_OKAY, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %449

328:                                              ; preds = %320
  br label %277

329:                                              ; preds = %312, %309
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %24, align 4
  %332 = load i32, i32* %18, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %18, align 4
  %334 = sub nsw i32 %331, %333
  %335 = shl i32 %330, %334
  %336 = load i32, i32* %17, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %17, align 4
  store i32 2, i32* %20, align 4
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %24, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %380

341:                                              ; preds = %329
  store i32 0, i32* %22, align 4
  br label %342

342:                                              ; preds = %360, %341
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* %24, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %363

346:                                              ; preds = %342
  %347 = call i32 @mp_sqr(%struct.TYPE_41__* %13, %struct.TYPE_41__* %13)
  store i32 %347, i32* %16, align 4
  %348 = load i32, i32* @MP_OKAY, align 4
  %349 = icmp ne i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  br label %449

351:                                              ; preds = %346
  %352 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %354 = load i32, i32* %15, align 4
  %355 = call i32 %352(%struct.TYPE_41__* %13, %struct.TYPE_41__* %353, i32 %354)
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* @MP_OKAY, align 4
  %357 = icmp ne i32 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %351
  br label %449

359:                                              ; preds = %351
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %22, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %22, align 4
  br label %342

363:                                              ; preds = %342
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %365
  %367 = call i32 @mp_mul(%struct.TYPE_41__* %13, %struct.TYPE_41__* %366, %struct.TYPE_41__* %13)
  store i32 %367, i32* %16, align 4
  %368 = load i32, i32* @MP_OKAY, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %363
  br label %449

371:                                              ; preds = %363
  %372 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %373 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %374 = load i32, i32* %15, align 4
  %375 = call i32 %372(%struct.TYPE_41__* %13, %struct.TYPE_41__* %373, i32 %374)
  store i32 %375, i32* %16, align 4
  %376 = load i32, i32* @MP_OKAY, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %371
  br label %449

379:                                              ; preds = %371
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %380

380:                                              ; preds = %379, %329
  br label %277

381:                                              ; preds = %284
  %382 = load i32, i32* %20, align 4
  %383 = icmp eq i32 %382, 2
  br i1 %383, label %384, label %433

384:                                              ; preds = %381
  %385 = load i32, i32* %18, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %433

387:                                              ; preds = %384
  store i32 0, i32* %22, align 4
  br label %388

388:                                              ; preds = %429, %387
  %389 = load i32, i32* %22, align 4
  %390 = load i32, i32* %18, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %432

392:                                              ; preds = %388
  %393 = call i32 @mp_sqr(%struct.TYPE_41__* %13, %struct.TYPE_41__* %13)
  store i32 %393, i32* %16, align 4
  %394 = load i32, i32* @MP_OKAY, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  br label %449

397:                                              ; preds = %392
  %398 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %399 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %400 = load i32, i32* %15, align 4
  %401 = call i32 %398(%struct.TYPE_41__* %13, %struct.TYPE_41__* %399, i32 %400)
  store i32 %401, i32* %16, align 4
  %402 = load i32, i32* @MP_OKAY, align 4
  %403 = icmp ne i32 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  br label %449

405:                                              ; preds = %397
  %406 = load i32, i32* %17, align 4
  %407 = shl i32 %406, 1
  store i32 %407, i32* %17, align 4
  %408 = load i32, i32* %17, align 4
  %409 = load i32, i32* %24, align 4
  %410 = shl i32 1, %409
  %411 = and i32 %408, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %428

413:                                              ; preds = %405
  %414 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %415 = call i32 @mp_mul(%struct.TYPE_41__* %13, %struct.TYPE_41__* %414, %struct.TYPE_41__* %13)
  store i32 %415, i32* %16, align 4
  %416 = load i32, i32* @MP_OKAY, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  br label %449

419:                                              ; preds = %413
  %420 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %421 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %422 = load i32, i32* %15, align 4
  %423 = call i32 %420(%struct.TYPE_41__* %13, %struct.TYPE_41__* %421, i32 %422)
  store i32 %423, i32* %16, align 4
  %424 = load i32, i32* @MP_OKAY, align 4
  %425 = icmp ne i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %419
  br label %449

427:                                              ; preds = %419
  br label %428

428:                                              ; preds = %427, %405
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %22, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %22, align 4
  br label %388

432:                                              ; preds = %388
  br label %433

433:                                              ; preds = %432, %384, %381
  %434 = load i32, i32* %11, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %433
  %437 = load i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)*, i32 (%struct.TYPE_41__*, %struct.TYPE_41__*, i32)** %25, align 8
  %438 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %439 = load i32, i32* %15, align 4
  %440 = call i32 %437(%struct.TYPE_41__* %13, %struct.TYPE_41__* %438, i32 %439)
  store i32 %440, i32* %16, align 4
  %441 = load i32, i32* @MP_OKAY, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  br label %449

444:                                              ; preds = %436
  br label %445

445:                                              ; preds = %444, %433
  %446 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %447 = call i32 @mp_exch(%struct.TYPE_41__* %13, %struct.TYPE_41__* %446)
  %448 = load i32, i32* @MP_OKAY, align 4
  store i32 %448, i32* %16, align 4
  br label %449

449:                                              ; preds = %445, %443, %426, %418, %404, %396, %378, %370, %358, %350, %327, %319, %267, %256, %229, %216, %195, %183, %173, %165
  %450 = call i32 @mp_clear(%struct.TYPE_41__* %13)
  br label %451

451:                                              ; preds = %449, %156, %149, %112
  %452 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 1
  %453 = call i32 @mp_clear(%struct.TYPE_41__* %452)
  %454 = load i32, i32* %24, align 4
  %455 = sub nsw i32 %454, 1
  %456 = shl i32 1, %455
  store i32 %456, i32* %22, align 4
  br label %457

457:                                              ; preds = %467, %451
  %458 = load i32, i32* %22, align 4
  %459 = load i32, i32* %24, align 4
  %460 = shl i32 1, %459
  %461 = icmp slt i32 %458, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %457
  %463 = load i32, i32* %22, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [256 x %struct.TYPE_41__], [256 x %struct.TYPE_41__]* %12, i64 0, i64 %464
  %466 = call i32 @mp_clear(%struct.TYPE_41__* %465)
  br label %467

467:                                              ; preds = %462
  %468 = load i32, i32* %22, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %22, align 4
  br label %457

470:                                              ; preds = %457
  %471 = load i32, i32* %16, align 4
  store i32 %471, i32* %6, align 4
  br label %472

472:                                              ; preds = %470, %96, %62
  %473 = load i32, i32* %6, align 4
  ret i32 %473
}

declare dso_local i32 @mp_count_bits(%struct.TYPE_41__*) #1

declare dso_local i32 @mp_init(%struct.TYPE_41__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_41__*) #1

declare dso_local i32 @mp_montgomery_setup(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @fast_mp_montgomery_reduce(%struct.TYPE_41__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @mp_montgomery_reduce(%struct.TYPE_41__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @mp_dr_setup(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @mp_dr_reduce(%struct.TYPE_41__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @mp_reduce_2k_setup(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @mp_reduce_2k(%struct.TYPE_41__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @mp_montgomery_calc_normalization(%struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_mulmod(%struct.TYPE_41__*, %struct.TYPE_41__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_set(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @mp_mod(%struct.TYPE_41__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_sqr(%struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_mul(%struct.TYPE_41__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_41__*, %struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
