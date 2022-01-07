; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlUniform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlUniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"RtlUniform(&seed (seed == 0)) returns %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"RtlUniform(&seed (seed == 1)) returns %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Most likely running on Windows Vista which uses a different algorithm\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"RtlUniform(&seed (seed == 2)) returns %x, expected %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"RtlUniform(&seed (seed == 3)) returns %x, expected %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"RtlUniform(&seed (seed == 0x6bca1aa)) returns %x, expected %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"RtlUniform(&seed (seed == 0x6bca1ab)) returns %x, expected %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"RtlUniform(&seed (seed == 0x6bca1ac)) returns %x, expected %x\0A\00", align 1
@MAXLONG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"RtlUniform(&seed (seed == 0x6bca1ad)) returns %x, expected %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"RtlUniform(&seed (seed == 0x6bca1ae)) returns %x, expected %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"test: 0x%s RtlUniform(&seed (seed == %x)) returns %x, expected %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"test: 0x%s RtlUniform(&seed (seed == %x)) sets seed to %x, expected %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlUniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlUniform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 2147483587, i32* %4, align 4
  %6 = call i32 @pRtlUniform(i32* %2)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 1, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul i32 %14, -19
  %16 = add i32 %15, 2147483587
  %17 = add i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = call i32 @pRtlUniform(i32* %2)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  store i32 2, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = mul i32 %26, -19
  %28 = add i32 %27, 2147483587
  store i32 %28, i32* %4, align 4
  %29 = call i32 @pRtlUniform(i32* %2)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 2147483551
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @skip(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %614

34:                                               ; preds = %0
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40)
  store i32 3, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = mul i32 %42, -19
  %44 = add i32 %43, 2147483587
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 1
  %47 = add i32 %44, %46
  store i32 %47, i32* %4, align 4
  %48 = call i32 @pRtlUniform(i32* %2)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %54)
  store i32 113025450, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = mul i32 %56, -19
  %58 = add i32 %57, 2147483587
  store i32 %58, i32* %4, align 4
  %59 = call i32 @pRtlUniform(i32* %2)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %65)
  store i32 113025451, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = mul i32 %67, -19
  %69 = add i32 %68, 2147483587
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = call i32 @pRtlUniform(i32* %2)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %76, i32 %77)
  store i32 113025452, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = mul i32 %79, -19
  %81 = add i32 %80, 2147483587
  %82 = add i32 %81, 2
  store i32 %82, i32* %4, align 4
  %83 = call i32 @pRtlUniform(i32* %2)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %89)
  store i32 113025453, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = mul i32 %91, -19
  %93 = add i32 %92, 2147483587
  %94 = load i32, i32* @MAXLONG, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %4, align 4
  %96 = call i32 @pRtlUniform(i32* %2)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %101, i32 %102)
  store i32 113025454, i32* %2, align 4
  %104 = load i32, i32* %2, align 4
  %105 = mul i32 %104, -19
  %106 = add i32 %105, 2147483587
  %107 = add i32 %106, 1
  %108 = load i32, i32* @MAXLONG, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = call i32 @pRtlUniform(i32* %2)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %115, i32 %116)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %577, %34
  %119 = load i32, i32* %1, align 4
  %120 = icmp sle i32 %119, 100000
  br i1 %120, label %121, label %580

121:                                              ; preds = %118
  %122 = load i32, i32* %2, align 4
  %123 = mul i32 %122, -19
  %124 = add i32 %123, 2147483587
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp slt i32 %125, 113025452
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %2, align 4
  %130 = and i32 %129, 1
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %4, align 4
  br label %554

132:                                              ; preds = %121
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, 113025452
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 2
  %138 = load i32, i32* @MAXLONG, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %4, align 4
  br label %553

140:                                              ; preds = %132
  %141 = load i32, i32* %2, align 4
  %142 = icmp slt i32 %141, 226050908
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %2, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %146, 1
  %148 = add nsw i32 %144, %147
  %149 = load i32, i32* @MAXLONG, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %4, align 4
  br label %552

151:                                              ; preds = %140
  %152 = load i32, i32* %2, align 4
  %153 = icmp slt i32 %152, 339076363
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %2, align 4
  %157 = and i32 %156, 1
  %158 = add nsw i32 %155, %157
  store i32 %158, i32* %4, align 4
  br label %551

159:                                              ; preds = %151
  %160 = load i32, i32* %2, align 4
  %161 = icmp slt i32 %160, 452101818
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %2, align 4
  %165 = xor i32 %164, -1
  %166 = and i32 %165, 1
  %167 = add nsw i32 %163, %166
  %168 = load i32, i32* @MAXLONG, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %4, align 4
  br label %550

170:                                              ; preds = %159
  %171 = load i32, i32* %2, align 4
  %172 = icmp slt i32 %171, 565127273
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %2, align 4
  %176 = and i32 %175, 1
  %177 = add nsw i32 %174, %176
  store i32 %177, i32* %4, align 4
  br label %549

178:                                              ; preds = %170
  %179 = load i32, i32* %2, align 4
  %180 = icmp slt i32 %179, 678152728
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %2, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %184, 1
  %186 = add nsw i32 %182, %185
  %187 = load i32, i32* @MAXLONG, align 4
  %188 = and i32 %186, %187
  store i32 %188, i32* %4, align 4
  br label %548

189:                                              ; preds = %178
  %190 = load i32, i32* %2, align 4
  %191 = icmp slt i32 %190, 791178183
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %2, align 4
  %195 = and i32 %194, 1
  %196 = add nsw i32 %193, %195
  store i32 %196, i32* %4, align 4
  br label %547

197:                                              ; preds = %189
  %198 = load i32, i32* %2, align 4
  %199 = icmp slt i32 %198, 904203639
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %2, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %203, 1
  %205 = add nsw i32 %201, %204
  %206 = load i32, i32* @MAXLONG, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %4, align 4
  br label %546

208:                                              ; preds = %197
  %209 = load i32, i32* %2, align 4
  %210 = icmp slt i32 %209, 1017229094
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %2, align 4
  %214 = and i32 %213, 1
  %215 = add nsw i32 %212, %214
  store i32 %215, i32* %4, align 4
  br label %545

216:                                              ; preds = %208
  %217 = load i32, i32* %2, align 4
  %218 = icmp slt i32 %217, 1130254549
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %2, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %222, 1
  %224 = add nsw i32 %220, %223
  %225 = load i32, i32* @MAXLONG, align 4
  %226 = and i32 %224, %225
  store i32 %226, i32* %4, align 4
  br label %544

227:                                              ; preds = %216
  %228 = load i32, i32* %2, align 4
  %229 = icmp slt i32 %228, 1243280004
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* %2, align 4
  %233 = and i32 %232, 1
  %234 = add nsw i32 %231, %233
  store i32 %234, i32* %4, align 4
  br label %543

235:                                              ; preds = %227
  %236 = load i32, i32* %2, align 4
  %237 = icmp slt i32 %236, 1356305459
  br i1 %237, label %238, label %246

238:                                              ; preds = %235
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* %2, align 4
  %241 = xor i32 %240, -1
  %242 = and i32 %241, 1
  %243 = add nsw i32 %239, %242
  %244 = load i32, i32* @MAXLONG, align 4
  %245 = and i32 %243, %244
  store i32 %245, i32* %4, align 4
  br label %542

246:                                              ; preds = %235
  %247 = load i32, i32* %2, align 4
  %248 = icmp slt i32 %247, 1469330914
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %2, align 4
  %252 = and i32 %251, 1
  %253 = add nsw i32 %250, %252
  store i32 %253, i32* %4, align 4
  br label %541

254:                                              ; preds = %246
  %255 = load i32, i32* %2, align 4
  %256 = icmp slt i32 %255, 1582356370
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %2, align 4
  %260 = xor i32 %259, -1
  %261 = and i32 %260, 1
  %262 = add nsw i32 %258, %261
  %263 = load i32, i32* @MAXLONG, align 4
  %264 = and i32 %262, %263
  store i32 %264, i32* %4, align 4
  br label %540

265:                                              ; preds = %254
  %266 = load i32, i32* %2, align 4
  %267 = icmp slt i32 %266, 1695381825
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* %2, align 4
  %271 = and i32 %270, 1
  %272 = add nsw i32 %269, %271
  store i32 %272, i32* %4, align 4
  br label %539

273:                                              ; preds = %265
  %274 = load i32, i32* %2, align 4
  %275 = icmp slt i32 %274, 1808407280
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* %2, align 4
  %279 = xor i32 %278, -1
  %280 = and i32 %279, 1
  %281 = add nsw i32 %277, %280
  %282 = load i32, i32* @MAXLONG, align 4
  %283 = and i32 %281, %282
  store i32 %283, i32* %4, align 4
  br label %538

284:                                              ; preds = %273
  %285 = load i32, i32* %2, align 4
  %286 = icmp slt i32 %285, 1921432735
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* %2, align 4
  %290 = and i32 %289, 1
  %291 = add nsw i32 %288, %290
  store i32 %291, i32* %4, align 4
  br label %537

292:                                              ; preds = %284
  %293 = load i32, i32* %2, align 4
  %294 = icmp slt i32 %293, 2034458190
  br i1 %294, label %295, label %303

295:                                              ; preds = %292
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* %2, align 4
  %298 = xor i32 %297, -1
  %299 = and i32 %298, 1
  %300 = add nsw i32 %296, %299
  %301 = load i32, i32* @MAXLONG, align 4
  %302 = and i32 %300, %301
  store i32 %302, i32* %4, align 4
  br label %536

303:                                              ; preds = %292
  %304 = load i32, i32* %2, align 4
  %305 = icmp slt i32 %304, 2147483645
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* %2, align 4
  %309 = and i32 %308, 1
  %310 = add nsw i32 %307, %309
  store i32 %310, i32* %4, align 4
  br label %535

311:                                              ; preds = %303
  %312 = load i32, i32* %2, align 4
  %313 = icmp ult i32 %312, -2034458196
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* %2, align 4
  %317 = xor i32 %316, -1
  %318 = and i32 %317, 1
  %319 = add nsw i32 %315, %318
  %320 = load i32, i32* @MAXLONG, align 4
  %321 = and i32 %319, %320
  store i32 %321, i32* %4, align 4
  br label %534

322:                                              ; preds = %311
  %323 = load i32, i32* %2, align 4
  %324 = icmp eq i32 %323, -2034458196
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i32, i32* %4, align 4
  %327 = add nsw i32 %326, 1
  %328 = load i32, i32* @MAXLONG, align 4
  %329 = and i32 %327, %328
  store i32 %329, i32* %4, align 4
  br label %533

330:                                              ; preds = %322
  %331 = load i32, i32* %2, align 4
  %332 = icmp ult i32 %331, -1921432740
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = load i32, i32* %4, align 4
  %335 = load i32, i32* %2, align 4
  %336 = and i32 %335, 1
  %337 = add nsw i32 %334, %336
  store i32 %337, i32* %4, align 4
  br label %532

338:                                              ; preds = %330
  %339 = load i32, i32* %2, align 4
  %340 = icmp ult i32 %339, -1808407285
  br i1 %340, label %341, label %349

341:                                              ; preds = %338
  %342 = load i32, i32* %4, align 4
  %343 = load i32, i32* %2, align 4
  %344 = xor i32 %343, -1
  %345 = and i32 %344, 1
  %346 = add nsw i32 %342, %345
  %347 = load i32, i32* @MAXLONG, align 4
  %348 = and i32 %346, %347
  store i32 %348, i32* %4, align 4
  br label %531

349:                                              ; preds = %338
  %350 = load i32, i32* %2, align 4
  %351 = icmp ult i32 %350, -1695381830
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* %2, align 4
  %355 = and i32 %354, 1
  %356 = add nsw i32 %353, %355
  store i32 %356, i32* %4, align 4
  br label %530

357:                                              ; preds = %349
  %358 = load i32, i32* %2, align 4
  %359 = icmp ult i32 %358, -1582356375
  br i1 %359, label %360, label %368

360:                                              ; preds = %357
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* %2, align 4
  %363 = xor i32 %362, -1
  %364 = and i32 %363, 1
  %365 = add nsw i32 %361, %364
  %366 = load i32, i32* @MAXLONG, align 4
  %367 = and i32 %365, %366
  store i32 %367, i32* %4, align 4
  br label %529

368:                                              ; preds = %357
  %369 = load i32, i32* %2, align 4
  %370 = icmp ult i32 %369, -1469330920
  br i1 %370, label %371, label %376

371:                                              ; preds = %368
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %2, align 4
  %374 = and i32 %373, 1
  %375 = add nsw i32 %372, %374
  store i32 %375, i32* %4, align 4
  br label %528

376:                                              ; preds = %368
  %377 = load i32, i32* %2, align 4
  %378 = icmp ult i32 %377, -1356305465
  br i1 %378, label %379, label %387

379:                                              ; preds = %376
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* %2, align 4
  %382 = xor i32 %381, -1
  %383 = and i32 %382, 1
  %384 = add nsw i32 %380, %383
  %385 = load i32, i32* @MAXLONG, align 4
  %386 = and i32 %384, %385
  store i32 %386, i32* %4, align 4
  br label %527

387:                                              ; preds = %376
  %388 = load i32, i32* %2, align 4
  %389 = icmp eq i32 %388, -1356305465
  br i1 %389, label %390, label %395

390:                                              ; preds = %387
  %391 = load i32, i32* %4, align 4
  %392 = add nsw i32 %391, 2
  %393 = load i32, i32* @MAXLONG, align 4
  %394 = and i32 %392, %393
  store i32 %394, i32* %4, align 4
  br label %526

395:                                              ; preds = %387
  %396 = load i32, i32* %2, align 4
  %397 = icmp ult i32 %396, -1243280009
  br i1 %397, label %398, label %403

398:                                              ; preds = %395
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* %2, align 4
  %401 = and i32 %400, 1
  %402 = add nsw i32 %399, %401
  store i32 %402, i32* %4, align 4
  br label %525

403:                                              ; preds = %395
  %404 = load i32, i32* %2, align 4
  %405 = icmp ult i32 %404, -1130254554
  br i1 %405, label %406, label %414

406:                                              ; preds = %403
  %407 = load i32, i32* %4, align 4
  %408 = load i32, i32* %2, align 4
  %409 = xor i32 %408, -1
  %410 = and i32 %409, 1
  %411 = add nsw i32 %407, %410
  %412 = load i32, i32* @MAXLONG, align 4
  %413 = and i32 %411, %412
  store i32 %413, i32* %4, align 4
  br label %524

414:                                              ; preds = %403
  %415 = load i32, i32* %2, align 4
  %416 = icmp ult i32 %415, -1017229099
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = load i32, i32* %4, align 4
  %419 = load i32, i32* %2, align 4
  %420 = and i32 %419, 1
  %421 = add nsw i32 %418, %420
  store i32 %421, i32* %4, align 4
  br label %523

422:                                              ; preds = %414
  %423 = load i32, i32* %2, align 4
  %424 = icmp ult i32 %423, -904203644
  br i1 %424, label %425, label %433

425:                                              ; preds = %422
  %426 = load i32, i32* %4, align 4
  %427 = load i32, i32* %2, align 4
  %428 = xor i32 %427, -1
  %429 = and i32 %428, 1
  %430 = add nsw i32 %426, %429
  %431 = load i32, i32* @MAXLONG, align 4
  %432 = and i32 %430, %431
  store i32 %432, i32* %4, align 4
  br label %522

433:                                              ; preds = %422
  %434 = load i32, i32* %2, align 4
  %435 = icmp ult i32 %434, -791178189
  br i1 %435, label %436, label %441

436:                                              ; preds = %433
  %437 = load i32, i32* %4, align 4
  %438 = load i32, i32* %2, align 4
  %439 = and i32 %438, 1
  %440 = add nsw i32 %437, %439
  store i32 %440, i32* %4, align 4
  br label %521

441:                                              ; preds = %433
  %442 = load i32, i32* %2, align 4
  %443 = icmp ult i32 %442, -678152734
  br i1 %443, label %444, label %452

444:                                              ; preds = %441
  %445 = load i32, i32* %4, align 4
  %446 = load i32, i32* %2, align 4
  %447 = xor i32 %446, -1
  %448 = and i32 %447, 1
  %449 = add nsw i32 %445, %448
  %450 = load i32, i32* @MAXLONG, align 4
  %451 = and i32 %449, %450
  store i32 %451, i32* %4, align 4
  br label %520

452:                                              ; preds = %441
  %453 = load i32, i32* %2, align 4
  %454 = icmp ult i32 %453, -565127278
  br i1 %454, label %455, label %460

455:                                              ; preds = %452
  %456 = load i32, i32* %4, align 4
  %457 = load i32, i32* %2, align 4
  %458 = and i32 %457, 1
  %459 = add nsw i32 %456, %458
  store i32 %459, i32* %4, align 4
  br label %519

460:                                              ; preds = %452
  %461 = load i32, i32* %2, align 4
  %462 = icmp ult i32 %461, -452101823
  br i1 %462, label %463, label %471

463:                                              ; preds = %460
  %464 = load i32, i32* %4, align 4
  %465 = load i32, i32* %2, align 4
  %466 = xor i32 %465, -1
  %467 = and i32 %466, 1
  %468 = add nsw i32 %464, %467
  %469 = load i32, i32* @MAXLONG, align 4
  %470 = and i32 %468, %469
  store i32 %470, i32* %4, align 4
  br label %518

471:                                              ; preds = %460
  %472 = load i32, i32* %2, align 4
  %473 = icmp ult i32 %472, -339076368
  br i1 %473, label %474, label %479

474:                                              ; preds = %471
  %475 = load i32, i32* %4, align 4
  %476 = load i32, i32* %2, align 4
  %477 = and i32 %476, 1
  %478 = add nsw i32 %475, %477
  store i32 %478, i32* %4, align 4
  br label %517

479:                                              ; preds = %471
  %480 = load i32, i32* %2, align 4
  %481 = icmp ult i32 %480, -226050913
  br i1 %481, label %482, label %490

482:                                              ; preds = %479
  %483 = load i32, i32* %4, align 4
  %484 = load i32, i32* %2, align 4
  %485 = xor i32 %484, -1
  %486 = and i32 %485, 1
  %487 = add nsw i32 %483, %486
  %488 = load i32, i32* @MAXLONG, align 4
  %489 = and i32 %487, %488
  store i32 %489, i32* %4, align 4
  br label %516

490:                                              ; preds = %479
  %491 = load i32, i32* %2, align 4
  %492 = icmp ult i32 %491, -113025458
  br i1 %492, label %493, label %498

493:                                              ; preds = %490
  %494 = load i32, i32* %4, align 4
  %495 = load i32, i32* %2, align 4
  %496 = and i32 %495, 1
  %497 = add nsw i32 %494, %496
  store i32 %497, i32* %4, align 4
  br label %515

498:                                              ; preds = %490
  %499 = load i32, i32* %2, align 4
  %500 = icmp ult i32 %499, -3
  br i1 %500, label %501, label %509

501:                                              ; preds = %498
  %502 = load i32, i32* %4, align 4
  %503 = load i32, i32* %2, align 4
  %504 = xor i32 %503, -1
  %505 = and i32 %504, 1
  %506 = add nsw i32 %502, %505
  %507 = load i32, i32* @MAXLONG, align 4
  %508 = and i32 %506, %507
  store i32 %508, i32* %4, align 4
  br label %514

509:                                              ; preds = %498
  %510 = load i32, i32* %4, align 4
  %511 = load i32, i32* %2, align 4
  %512 = and i32 %511, 1
  %513 = add nsw i32 %510, %512
  store i32 %513, i32* %4, align 4
  br label %514

514:                                              ; preds = %509, %501
  br label %515

515:                                              ; preds = %514, %493
  br label %516

516:                                              ; preds = %515, %482
  br label %517

517:                                              ; preds = %516, %474
  br label %518

518:                                              ; preds = %517, %463
  br label %519

519:                                              ; preds = %518, %455
  br label %520

520:                                              ; preds = %519, %444
  br label %521

521:                                              ; preds = %520, %436
  br label %522

522:                                              ; preds = %521, %425
  br label %523

523:                                              ; preds = %522, %417
  br label %524

524:                                              ; preds = %523, %406
  br label %525

525:                                              ; preds = %524, %398
  br label %526

526:                                              ; preds = %525, %390
  br label %527

527:                                              ; preds = %526, %379
  br label %528

528:                                              ; preds = %527, %371
  br label %529

529:                                              ; preds = %528, %360
  br label %530

530:                                              ; preds = %529, %352
  br label %531

531:                                              ; preds = %530, %341
  br label %532

532:                                              ; preds = %531, %333
  br label %533

533:                                              ; preds = %532, %325
  br label %534

534:                                              ; preds = %533, %314
  br label %535

535:                                              ; preds = %534, %306
  br label %536

536:                                              ; preds = %535, %295
  br label %537

537:                                              ; preds = %536, %287
  br label %538

538:                                              ; preds = %537, %276
  br label %539

539:                                              ; preds = %538, %268
  br label %540

540:                                              ; preds = %539, %257
  br label %541

541:                                              ; preds = %540, %249
  br label %542

542:                                              ; preds = %541, %238
  br label %543

543:                                              ; preds = %542, %230
  br label %544

544:                                              ; preds = %543, %219
  br label %545

545:                                              ; preds = %544, %211
  br label %546

546:                                              ; preds = %545, %200
  br label %547

547:                                              ; preds = %546, %192
  br label %548

548:                                              ; preds = %547, %181
  br label %549

549:                                              ; preds = %548, %173
  br label %550

550:                                              ; preds = %549, %162
  br label %551

551:                                              ; preds = %550, %154
  br label %552

552:                                              ; preds = %551, %143
  br label %553

553:                                              ; preds = %552, %135
  br label %554

554:                                              ; preds = %553, %127
  %555 = load i32, i32* %2, align 4
  store i32 %555, i32* %3, align 4
  %556 = call i32 @pRtlUniform(i32* %2)
  store i32 %556, i32* %5, align 4
  %557 = load i32, i32* %5, align 4
  %558 = load i32, i32* %4, align 4
  %559 = icmp eq i32 %557, %558
  %560 = zext i1 %559 to i32
  %561 = load i32, i32* %1, align 4
  %562 = call i32 @wine_dbgstr_longlong(i32 %561)
  %563 = load i32, i32* %3, align 4
  %564 = load i32, i32* %5, align 4
  %565 = load i32, i32* %4, align 4
  %566 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %560, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %562, i32 %563, i32 %564, i32 %565)
  %567 = load i32, i32* %2, align 4
  %568 = load i32, i32* %4, align 4
  %569 = icmp eq i32 %567, %568
  %570 = zext i1 %569 to i32
  %571 = load i32, i32* %1, align 4
  %572 = call i32 @wine_dbgstr_longlong(i32 %571)
  %573 = load i32, i32* %3, align 4
  %574 = load i32, i32* %5, align 4
  %575 = load i32, i32* %4, align 4
  %576 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %570, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i32 %572, i32 %573, i32 %574, i32 %575)
  br label %577

577:                                              ; preds = %554
  %578 = load i32, i32* %1, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %1, align 4
  br label %118

580:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %581

581:                                              ; preds = %611, %580
  %582 = load i32, i32* %1, align 4
  %583 = icmp sle i32 %582, 100000
  br i1 %583, label %584, label %614

584:                                              ; preds = %581
  %585 = load i32, i32* %2, align 4
  %586 = mul nsw i32 %585, 2147483629
  %587 = add nsw i32 %586, 2147483587
  %588 = srem i32 %587, 2147483647
  store i32 %588, i32* %4, align 4
  %589 = load i32, i32* %2, align 4
  store i32 %589, i32* %3, align 4
  %590 = call i32 @pRtlUniform(i32* %2)
  store i32 %590, i32* %5, align 4
  %591 = load i32, i32* %5, align 4
  %592 = load i32, i32* %4, align 4
  %593 = icmp eq i32 %591, %592
  %594 = zext i1 %593 to i32
  %595 = load i32, i32* %1, align 4
  %596 = call i32 @wine_dbgstr_longlong(i32 %595)
  %597 = load i32, i32* %3, align 4
  %598 = load i32, i32* %5, align 4
  %599 = load i32, i32* %4, align 4
  %600 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %594, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %596, i32 %597, i32 %598, i32 %599)
  %601 = load i32, i32* %2, align 4
  %602 = load i32, i32* %4, align 4
  %603 = icmp eq i32 %601, %602
  %604 = zext i1 %603 to i32
  %605 = load i32, i32* %1, align 4
  %606 = call i32 @wine_dbgstr_longlong(i32 %605)
  %607 = load i32, i32* %3, align 4
  %608 = load i32, i32* %5, align 4
  %609 = load i32, i32* %4, align 4
  %610 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %604, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i32 %606, i32 %607, i32 %608, i32 %609)
  br label %611

611:                                              ; preds = %584
  %612 = load i32, i32* %1, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %1, align 4
  br label %581

614:                                              ; preds = %32, %581
  ret void
}

declare dso_local i32 @pRtlUniform(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
