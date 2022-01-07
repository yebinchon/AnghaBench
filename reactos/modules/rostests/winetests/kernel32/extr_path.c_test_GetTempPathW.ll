; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPathW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_GetTempPathW.fooW = internal constant [4 x float] [float 1.020000e+02, float 1.110000e+02, float 1.110000e+02, float 0.000000e+00], align 16
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetTempPathW is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"GetTempPathW returned an incorrect temporary path\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"returned length should be equal to the length of string\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"unicode version should truncate the buffer to zero size\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Expected >= %u, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"expected NULL at [%d], got 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"expected %d, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"expected 'a' at [%d], got 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Could not allocate memory for the test\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"expected 0xcc at [%d], got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_GetTempPathW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetTempPathW(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca float, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca float, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* @CP_ACP, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = mul nuw i64 4, %18
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i8* %21, i32 -1, float* %19, i32 %24)
  %26 = call i32 @lstrlenW(float* %19)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = call i32 @lstrcpyW(float* %16, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetTempPathW.fooW, i64 0, i64 0))
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = call i32 @GetTempPathW(i32 %29, float* %16)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @win_skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %318

39:                                               ; preds = %33, %1
  %40 = call i64 @lstrcmpiW(float* %16, float* %19)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @lstrlenW(float* %16)
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @lstrcpyW(float* %16, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetTempPathW.fooW, i64 0, i64 0))
  %50 = call i32 @GetTempPathW(i32 1, float* %16)
  store i32 %50, i32* %3, align 4
  %51 = getelementptr inbounds float, float* %16, i64 0
  %52 = load float, float* %51, align 16
  %53 = fcmp oeq float %52, 0.000000e+00
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i32 @GetTempPathW(i32 0, float* null)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %69)
  %71 = call i32 @lstrcpyW(float* %16, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetTempPathW.fooW, i64 0, i64 0))
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @GetTempPathW(i32 %72, float* %16)
  store i32 %73, i32* %3, align 4
  %74 = call i64 @lstrcmpiW(float* %16, float* %19)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @lstrlenW(float* %16)
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %93, %39
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nuw i64 4, %14
  %87 = udiv i64 %86, 4
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %16, i64 %91
  store float 9.700000e+01, float* %92, align 4
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %83

96:                                               ; preds = %83
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @GetTempPathW(i32 %97, float* %16)
  store i32 %98, i32* %3, align 4
  %99 = call i64 @lstrcmpiW(float* %16, float* %19)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @lstrlenW(float* %16)
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %132, %96
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = mul nuw i64 4, %14
  %116 = udiv i64 %115, 4
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %16, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fcmp oeq float %122, 0.000000e+00
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %16, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fpext float %129 to double
  %131 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %125, double %130)
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %112

135:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %146, %135
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nuw i64 4, %14
  %140 = udiv i64 %139, 4
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %16, i64 %144
  store float 9.700000e+01, float* %145, align 4
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %136

149:                                              ; preds = %136
  %150 = load i32, i32* %4, align 4
  %151 = sdiv i32 %150, 2
  %152 = call i32 @GetTempPathW(i32 %151, float* %16)
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  %160 = icmp eq i32 %157, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @broken(i32 %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %156, %149
  %165 = phi i1 [ true, %149 ], [ %163, %156 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32 %168)
  %170 = call i32 (...) @GetVersion()
  store i32 %170, i32* %12, align 4
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %172 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %171, i32 64)
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %174 = call i32 @strlen(i8* %173)
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %180

176:                                              ; preds = %164
  %177 = load i32, i32* %12, align 4
  %178 = icmp sge i32 %177, 393218
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 1, i32* %10, align 4
  br label %318

180:                                              ; preds = %176, %164
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %200, %180
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %4, align 4
  %184 = sdiv i32 %183, 2
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %16, i64 %188
  %190 = load float, float* %189, align 4
  %191 = fcmp oeq float %190, 0.000000e+00
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %16, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fpext float %197 to double
  %199 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %193, double %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %3, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %3, align 4
  br label %181

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %224, %203
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = mul nuw i64 4, %14
  %208 = udiv i64 %207, 4
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %204
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %16, i64 %212
  %214 = load float, float* %213, align 4
  %215 = fcmp oeq float %214, 9.700000e+01
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %16, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fpext float %221 to double
  %223 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %217, double %222)
  br label %224

224:                                              ; preds = %210
  %225 = load i32, i32* %3, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %3, align 4
  br label %204

227:                                              ; preds = %204
  store i32 65534, i32* %4, align 4
  %228 = call i32 (...) @GetProcessHeap()
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = trunc i64 %231 to i32
  %233 = call float* @HeapAlloc(i32 %228, i32 0, i32 %232)
  store float* %233, float** %8, align 8
  %234 = load float*, float** %8, align 8
  %235 = icmp ne float* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %227
  %237 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %318

238:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %248, %238
  %240 = load i32, i32* %3, align 4
  %241 = load i32, i32* %4, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %239
  %244 = load float*, float** %8, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  store float 2.040000e+02, float* %247, align 4
  br label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %3, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %3, align 4
  br label %239

251:                                              ; preds = %239
  %252 = load i32, i32* %4, align 4
  %253 = load float*, float** %8, align 8
  %254 = call i32 @GetTempPathW(i32 %252, float* %253)
  store i32 %254, i32* %3, align 4
  %255 = load float*, float** %8, align 8
  %256 = call i64 @lstrcmpiW(float* %255, float* %19)
  %257 = icmp eq i64 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %260 = load i32, i32* %3, align 4
  %261 = load float*, float** %8, align 8
  %262 = call i32 @lstrlenW(float* %261)
  %263 = icmp eq i32 %260, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %266

266:                                              ; preds = %285, %251
  %267 = load i32, i32* %3, align 4
  %268 = icmp slt i32 %267, 32767
  br i1 %268, label %269, label %288

269:                                              ; preds = %266
  %270 = load float*, float** %8, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  %274 = load float, float* %273, align 4
  %275 = fcmp oeq float %274, 0.000000e+00
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %3, align 4
  %278 = load float*, float** %8, align 8
  %279 = load i32, i32* %3, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %278, i64 %280
  %282 = load float, float* %281, align 4
  %283 = fpext float %282 to double
  %284 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %277, double %283)
  br label %285

285:                                              ; preds = %269
  %286 = load i32, i32* %3, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %3, align 4
  br label %266

288:                                              ; preds = %266
  %289 = load i32, i32* %3, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %311, %288
  %292 = load i32, i32* %3, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %314

295:                                              ; preds = %291
  %296 = load float*, float** %8, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %296, i64 %298
  %300 = load float, float* %299, align 4
  %301 = fcmp oeq float %300, 2.040000e+02
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %3, align 4
  %304 = load float*, float** %8, align 8
  %305 = load i32, i32* %3, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fpext float %308 to double
  %310 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %303, double %309)
  br label %311

311:                                              ; preds = %295
  %312 = load i32, i32* %3, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %3, align 4
  br label %291

314:                                              ; preds = %291
  %315 = call i32 (...) @GetProcessHeap()
  %316 = load float*, float** %8, align 8
  %317 = call i32 @HeapFree(i32 %315, i32 0, float* %316)
  store i32 0, i32* %10, align 4
  br label %318

318:                                              ; preds = %314, %236, %179, %37
  %319 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %10, align 4
  switch i32 %320, label %322 [
    i32 0, label %321
    i32 1, label %321
  ]

321:                                              ; preds = %318, %318
  ret void

322:                                              ; preds = %318
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, float*, i32) #2

declare dso_local i32 @lstrlenW(float*) #2

declare dso_local i32 @lstrcpyW(float*, float*) #2

declare dso_local i32 @GetTempPathW(i32, float*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @lstrcmpiW(float*, float*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @GetVersion(...) #2

declare dso_local i32 @GetEnvironmentVariableA(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local float* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
