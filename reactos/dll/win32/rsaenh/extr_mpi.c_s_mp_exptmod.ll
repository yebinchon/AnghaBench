; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_s_mp_exptmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_s_mp_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32* }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*)* @s_mp_exptmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_exptmod(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca [256 x %struct.TYPE_27__], align 16
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %9, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %24 = call i32 @mp_count_bits(%struct.TYPE_27__* %23)
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %20, align 4
  %26 = icmp sle i32 %25, 7
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 2, i32* %22, align 4
  br label %54

28:                                               ; preds = %4
  %29 = load i32, i32* %20, align 4
  %30 = icmp sle i32 %29, 36
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 3, i32* %22, align 4
  br label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %20, align 4
  %34 = icmp sle i32 %33, 140
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 4, i32* %22, align 4
  br label %52

36:                                               ; preds = %32
  %37 = load i32, i32* %20, align 4
  %38 = icmp sle i32 %37, 450
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 5, i32* %22, align 4
  br label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %20, align 4
  %42 = icmp sle i32 %41, 1303
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 6, i32* %22, align 4
  br label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %20, align 4
  %46 = icmp sle i32 %45, 3529
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 7, i32* %22, align 4
  br label %49

48:                                               ; preds = %44
  store i32 8, i32* %22, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %27
  %55 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %56 = call i32 @mp_init(%struct.TYPE_27__* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @MP_OKAY, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %389

61:                                               ; preds = %54
  %62 = load i32, i32* %22, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %98, %61
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %22, align 4
  %68 = shl i32 1, %67
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %65
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %72
  %74 = call i32 @mp_init(%struct.TYPE_27__* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @MP_OKAY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load i32, i32* %22, align 4
  %79 = sub nsw i32 %78, 1
  %80 = shl i32 1, %79
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %90, %77
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %87
  %89 = call i32 @mp_clear(%struct.TYPE_27__* %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %81

93:                                               ; preds = %81
  %94 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %95 = call i32 @mp_clear(%struct.TYPE_27__* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  br label %389

97:                                               ; preds = %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %65

101:                                              ; preds = %65
  %102 = call i32 @mp_init(%struct.TYPE_27__* %12)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* @MP_OKAY, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %368

106:                                              ; preds = %101
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %108 = call i32 @mp_reduce_setup(%struct.TYPE_27__* %12, %struct.TYPE_27__* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* @MP_OKAY, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %366

112:                                              ; preds = %106
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %115 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %116 = call i32 @mp_mod(%struct.TYPE_27__* %113, %struct.TYPE_27__* %114, %struct.TYPE_27__* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @MP_OKAY, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %366

120:                                              ; preds = %112
  %121 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %122 = load i32, i32* %22, align 4
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 1, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %125
  %127 = call i32 @mp_copy(%struct.TYPE_27__* %121, %struct.TYPE_27__* %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* @MP_OKAY, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %366

131:                                              ; preds = %120
  store i32 0, i32* %20, align 4
  br label %132

132:                                              ; preds = %164, %131
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %22, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %132
  %138 = load i32, i32* %22, align 4
  %139 = sub nsw i32 %138, 1
  %140 = shl i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %141
  %143 = load i32, i32* %22, align 4
  %144 = sub nsw i32 %143, 1
  %145 = shl i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %146
  %148 = call i32 @mp_sqr(%struct.TYPE_27__* %142, %struct.TYPE_27__* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* @MP_OKAY, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  br label %366

152:                                              ; preds = %137
  %153 = load i32, i32* %22, align 4
  %154 = sub nsw i32 %153, 1
  %155 = shl i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %156
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %159 = call i32 @mp_reduce(%struct.TYPE_27__* %157, %struct.TYPE_27__* %158, %struct.TYPE_27__* %12)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* @MP_OKAY, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %366

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %132

167:                                              ; preds = %132
  %168 = load i32, i32* %22, align 4
  %169 = sub nsw i32 %168, 1
  %170 = shl i32 1, %169
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %200, %167
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %22, align 4
  %175 = shl i32 1, %174
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %172
  %178 = load i32, i32* %20, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %180
  %182 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %184
  %186 = call i32 @mp_mul(%struct.TYPE_27__* %181, %struct.TYPE_27__* %182, %struct.TYPE_27__* %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* @MP_OKAY, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %366

190:                                              ; preds = %177
  %191 = load i32, i32* %20, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %192
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %195 = call i32 @mp_reduce(%struct.TYPE_27__* %193, %struct.TYPE_27__* %194, %struct.TYPE_27__* %12)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* @MP_OKAY, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %366

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %172

203:                                              ; preds = %172
  %204 = call i32 @mp_init(%struct.TYPE_27__* %11)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* @MP_OKAY, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %366

208:                                              ; preds = %203
  %209 = call i32 @mp_set(%struct.TYPE_27__* %11, i32 1)
  store i32 0, i32* %18, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %13, align 4
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %19, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %311, %263, %245, %208
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %17, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %214
  %219 = load i32, i32* %19, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %312

222:                                              ; preds = %218
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %19, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* @DIGIT_BIT, align 4
  store i32 %231, i32* %17, align 4
  br label %232

232:                                              ; preds = %222, %214
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @DIGIT_BIT, align 4
  %235 = sub nsw i32 %234, 1
  %236 = ashr i32 %233, %235
  %237 = and i32 %236, 1
  store i32 %237, i32* %21, align 4
  %238 = load i32, i32* %13, align 4
  %239 = shl i32 %238, 1
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %18, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %232
  %243 = load i32, i32* %21, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %214

246:                                              ; preds = %242, %232
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %264

249:                                              ; preds = %246
  %250 = load i32, i32* %21, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %249
  %253 = call i32 @mp_sqr(%struct.TYPE_27__* %11, %struct.TYPE_27__* %11)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* @MP_OKAY, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %364

257:                                              ; preds = %252
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %259 = call i32 @mp_reduce(%struct.TYPE_27__* %11, %struct.TYPE_27__* %258, %struct.TYPE_27__* %12)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* @MP_OKAY, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %364

263:                                              ; preds = %257
  br label %214

264:                                              ; preds = %249, %246
  %265 = load i32, i32* %21, align 4
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %16, align 4
  %269 = sub nsw i32 %266, %268
  %270 = shl i32 %265, %269
  %271 = load i32, i32* %15, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %15, align 4
  store i32 2, i32* %18, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %22, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %311

276:                                              ; preds = %264
  store i32 0, i32* %20, align 4
  br label %277

277:                                              ; preds = %293, %276
  %278 = load i32, i32* %20, align 4
  %279 = load i32, i32* %22, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %277
  %282 = call i32 @mp_sqr(%struct.TYPE_27__* %11, %struct.TYPE_27__* %11)
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* @MP_OKAY, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  br label %364

286:                                              ; preds = %281
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %288 = call i32 @mp_reduce(%struct.TYPE_27__* %11, %struct.TYPE_27__* %287, %struct.TYPE_27__* %12)
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* @MP_OKAY, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %364

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %20, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %20, align 4
  br label %277

296:                                              ; preds = %277
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %298
  %300 = call i32 @mp_mul(%struct.TYPE_27__* %11, %struct.TYPE_27__* %299, %struct.TYPE_27__* %11)
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* @MP_OKAY, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %364

304:                                              ; preds = %296
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %306 = call i32 @mp_reduce(%struct.TYPE_27__* %11, %struct.TYPE_27__* %305, %struct.TYPE_27__* %12)
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* @MP_OKAY, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %364

310:                                              ; preds = %304
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %18, align 4
  br label %311

311:                                              ; preds = %310, %264
  br label %214

312:                                              ; preds = %221
  %313 = load i32, i32* %18, align 4
  %314 = icmp eq i32 %313, 2
  br i1 %314, label %315, label %360

315:                                              ; preds = %312
  %316 = load i32, i32* %16, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %360

318:                                              ; preds = %315
  store i32 0, i32* %20, align 4
  br label %319

319:                                              ; preds = %356, %318
  %320 = load i32, i32* %20, align 4
  %321 = load i32, i32* %16, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %359

323:                                              ; preds = %319
  %324 = call i32 @mp_sqr(%struct.TYPE_27__* %11, %struct.TYPE_27__* %11)
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* @MP_OKAY, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  br label %364

328:                                              ; preds = %323
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %330 = call i32 @mp_reduce(%struct.TYPE_27__* %11, %struct.TYPE_27__* %329, %struct.TYPE_27__* %12)
  store i32 %330, i32* %14, align 4
  %331 = load i32, i32* @MP_OKAY, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %364

334:                                              ; preds = %328
  %335 = load i32, i32* %15, align 4
  %336 = shl i32 %335, 1
  store i32 %336, i32* %15, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %22, align 4
  %339 = shl i32 1, %338
  %340 = and i32 %337, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %334
  %343 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %344 = call i32 @mp_mul(%struct.TYPE_27__* %11, %struct.TYPE_27__* %343, %struct.TYPE_27__* %11)
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* @MP_OKAY, align 4
  %346 = icmp ne i32 %344, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  br label %364

348:                                              ; preds = %342
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %350 = call i32 @mp_reduce(%struct.TYPE_27__* %11, %struct.TYPE_27__* %349, %struct.TYPE_27__* %12)
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* @MP_OKAY, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  br label %364

354:                                              ; preds = %348
  br label %355

355:                                              ; preds = %354, %334
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %20, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %20, align 4
  br label %319

359:                                              ; preds = %319
  br label %360

360:                                              ; preds = %359, %315, %312
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %362 = call i32 @mp_exch(%struct.TYPE_27__* %11, %struct.TYPE_27__* %361)
  %363 = load i32, i32* @MP_OKAY, align 4
  store i32 %363, i32* %14, align 4
  br label %364

364:                                              ; preds = %360, %353, %347, %333, %327, %309, %303, %291, %285, %262, %256
  %365 = call i32 @mp_clear(%struct.TYPE_27__* %11)
  br label %366

366:                                              ; preds = %364, %207, %198, %189, %162, %151, %130, %119, %111
  %367 = call i32 @mp_clear(%struct.TYPE_27__* %12)
  br label %368

368:                                              ; preds = %366, %105
  %369 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 1
  %370 = call i32 @mp_clear(%struct.TYPE_27__* %369)
  %371 = load i32, i32* %22, align 4
  %372 = sub nsw i32 %371, 1
  %373 = shl i32 1, %372
  store i32 %373, i32* %20, align 4
  br label %374

374:                                              ; preds = %384, %368
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* %22, align 4
  %377 = shl i32 1, %376
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load i32, i32* %20, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [256 x %struct.TYPE_27__], [256 x %struct.TYPE_27__]* %10, i64 0, i64 %381
  %383 = call i32 @mp_clear(%struct.TYPE_27__* %382)
  br label %384

384:                                              ; preds = %379
  %385 = load i32, i32* %20, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %20, align 4
  br label %374

387:                                              ; preds = %374
  %388 = load i32, i32* %14, align 4
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %387, %93, %59
  %390 = load i32, i32* %5, align 4
  ret i32 %390
}

declare dso_local i32 @mp_count_bits(%struct.TYPE_27__*) #1

declare dso_local i32 @mp_init(%struct.TYPE_27__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_27__*) #1

declare dso_local i32 @mp_reduce_setup(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_mod(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_sqr(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_reduce(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_mul(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mp_set(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @mp_exch(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
