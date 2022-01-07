; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3Atoi64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3Atoi64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16LE = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@LARGEST_INT64 = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Atoi64(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %18, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SQLITE_UTF8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SQLITE_UTF16LE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SQLITE_UTF16BE, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27, %4
  %36 = phi i1 [ true, %27 ], [ true, %4 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQLITE_UTF8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %88

43:                                               ; preds = %35
  store i32 2, i32* %10, align 4
  %44 = load i32, i32* @SQLITE_UTF16LE, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @SQLITE_UTF16BE, align 4
  %48 = icmp eq i32 %47, 3
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 3, %53
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %70, %49
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %13, align 4
  br label %55

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %15, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = xor i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %18, align 8
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 1
  %85 = load i8*, i8** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %73, %42
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @sqlite3Isspace(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i1 [ false, %89 ], [ %97, %93 ]
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = load i32, i32* %10, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %6, align 8
  br label %89

105:                                              ; preds = %98
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  store i32 1, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %6, align 8
  br label %130

119:                                              ; preds = %109
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 43
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %105
  %132 = load i8*, i8** %6, align 8
  store i8* %132, i8** %17, align 8
  br label %133

133:                                              ; preds = %145, %131
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %18, align 8
  %136 = icmp ult i8* %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 48
  br label %143

143:                                              ; preds = %137, %133
  %144 = phi i1 [ false, %133 ], [ %142, %137 ]
  br i1 %144, label %145, label %150

145:                                              ; preds = %143
  %146 = load i32, i32* %10, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %6, align 8
  br label %133

150:                                              ; preds = %143
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8*, i8** %18, align 8
  %157 = icmp ult i8* %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  store i32 %164, i32* %14, align 4
  %165 = icmp sge i32 %164, 48
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* %14, align 4
  %168 = icmp sle i32 %167, 57
  br label %169

169:                                              ; preds = %166, %158, %151
  %170 = phi i1 [ false, %158 ], [ false, %151 ], [ %168, %166 ]
  br i1 %170, label %171, label %181

171:                                              ; preds = %169
  %172 = load i32, i32* %11, align 4
  %173 = mul nsw i32 %172, 10
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %173, %174
  %176 = sub nsw i32 %175, 48
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %13, align 4
  br label %151

181:                                              ; preds = %169
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 18, %183
  %185 = icmp eq i32 %182, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @testcase(i32 %186)
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %10, align 4
  %190 = mul nsw i32 19, %189
  %191 = icmp eq i32 %188, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @testcase(i32 %192)
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %10, align 4
  %196 = mul nsw i32 20, %195
  %197 = icmp eq i32 %194, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @testcase(i32 %198)
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @LARGEST_INT64, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %181
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @SMALLEST_INT64, align 4
  br label %210

208:                                              ; preds = %203
  %209 = load i32, i32* @LARGEST_INT64, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  %212 = load i32*, i32** %7, align 8
  store i32 %211, i32* %212, align 4
  br label %224

213:                                              ; preds = %181
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 0, %217
  %219 = load i32*, i32** %7, align 8
  store i32 %218, i32* %219, align 4
  br label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %11, align 4
  %222 = load i32*, i32** %7, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %216
  br label %224

224:                                              ; preds = %223, %210
  store i32 0, i32* %16, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i8*, i8** %17, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %234, label %231

231:                                              ; preds = %227, %224
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231, %227
  store i32 1, i32* %16, align 4
  br label %266

235:                                              ; preds = %231
  %236 = load i8*, i8** %6, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8*, i8** %18, align 8
  %241 = icmp ult i8* %239, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %235
  %243 = load i32, i32* %13, align 4
  store i32 %243, i32* %19, align 4
  br label %244

244:                                              ; preds = %257, %242
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = call i64 @sqlite3Isspace(i8 signext %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %244
  store i32 1, i32* %16, align 4
  br label %264

253:                                              ; preds = %244
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %19, align 4
  br label %257

257:                                              ; preds = %253
  %258 = load i8*, i8** %6, align 8
  %259 = load i32, i32* %19, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8*, i8** %18, align 8
  %263 = icmp ult i8* %261, %262
  br i1 %263, label %244, label %264

264:                                              ; preds = %257, %252
  br label %265

265:                                              ; preds = %264, %235
  br label %266

266:                                              ; preds = %265, %234
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %10, align 4
  %269 = mul nsw i32 19, %268
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @LARGEST_INT64, align 4
  %274 = icmp sle i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load i32, i32* %16, align 4
  store i32 %277, i32* %5, align 4
  br label %326

278:                                              ; preds = %266
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %10, align 4
  %281 = mul nsw i32 19, %280
  %282 = icmp sgt i32 %279, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %288

284:                                              ; preds = %278
  %285 = load i8*, i8** %6, align 8
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @compare2pow63(i8* %285, i32 %286)
  br label %288

288:                                              ; preds = %284, %283
  %289 = phi i32 [ 1, %283 ], [ %287, %284 ]
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %288
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @LARGEST_INT64, align 4
  %295 = icmp sle i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load i32, i32* %16, align 4
  store i32 %298, i32* %5, align 4
  br label %326

299:                                              ; preds = %288
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = load i32, i32* @SMALLEST_INT64, align 4
  br label %306

304:                                              ; preds = %299
  %305 = load i32, i32* @LARGEST_INT64, align 4
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi i32 [ %303, %302 ], [ %305, %304 ]
  %308 = load i32*, i32** %7, align 8
  store i32 %307, i32* %308, align 4
  %309 = load i32, i32* %14, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  store i32 2, i32* %5, align 4
  br label %326

312:                                              ; preds = %306
  %313 = load i32, i32* %11, align 4
  %314 = sub nsw i32 %313, 1
  %315 = load i32, i32* @LARGEST_INT64, align 4
  %316 = icmp eq i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = call i32 @assert(i32 %317)
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %312
  %322 = load i32, i32* %16, align 4
  br label %324

323:                                              ; preds = %312
  br label %324

324:                                              ; preds = %323, %321
  %325 = phi i32 [ %322, %321 ], [ 3, %323 ]
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %324, %311, %292, %271
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @compare2pow63(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
