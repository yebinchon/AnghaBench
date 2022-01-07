; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strscan.c_lj_strscan_scan.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strscan.c_lj_strscan_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, i32, i32 }

@STRSCAN_ERROR = common dso_local global i64 0, align 8
@STRSCAN_NUM = common dso_local global i64 0, align 8
@STRSCAN_INT = common dso_local global i64 0, align 8
@LJ_CHAR_DIGIT = common dso_local global i32 0, align 4
@STRSCAN_OPT_C = common dso_local global i32 0, align 4
@LJ_CHAR_XDIGIT = common dso_local global i32 0, align 4
@STRSCAN_OPT_IMAG = common dso_local global i32 0, align 4
@STRSCAN_IMAG = common dso_local global i64 0, align 8
@STRSCAN_U32 = common dso_local global i64 0, align 8
@STRSCAN_I64 = common dso_local global i64 0, align 8
@STRSCAN_OPT_LL = common dso_local global i32 0, align 4
@STRSCAN_OPT_TONUM = common dso_local global i32 0, align 4
@STRSCAN_OPT_TOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lj_strscan_scan(i8* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @lj_char_isdigit(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @LJ_UNLIKELY(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %172

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %38, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @lj_char_isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %58

51:                                               ; preds = %46, %41
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 65
  %63 = zext i1 %62 to i32
  %64 = call i64 @LJ_UNLIKELY(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %171

66:                                               ; preds = %58
  %67 = call i32 @setnanV(%struct.TYPE_10__* %9)
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @casecmp(i8 signext %70, i8 zeroext 105)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %128

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @casecmp(i8 signext %76, i8 zeroext 110)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = call i64 @casecmp(i8 signext %82, i8 zeroext 102)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @setminfV(%struct.TYPE_10__* %9)
  br label %92

90:                                               ; preds = %85
  %91 = call i32 @setpinfV(%struct.TYPE_10__* %9)
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @casecmp(i8 signext %97, i8 zeroext 105)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %92
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @casecmp(i8 signext %103, i8 zeroext 110)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @casecmp(i8 signext %109, i8 zeroext 105)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @casecmp(i8 signext %115, i8 zeroext 116)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @casecmp(i8 signext %121, i8 zeroext 121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 5
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %124, %118, %112, %106, %100, %92
  br label %150

128:                                              ; preds = %79, %73, %66
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @casecmp(i8 signext %131, i8 zeroext 110)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %128
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @casecmp(i8 signext %137, i8 zeroext 97)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @casecmp(i8 signext %143, i8 zeroext 110)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  store i8* %148, i8** %5, align 8
  br label %149

149:                                              ; preds = %146, %140, %134, %128
  br label %150

150:                                              ; preds = %149, %127
  br label %151

151:                                              ; preds = %156, %150
  %152 = load i8*, i8** %5, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @lj_char_isspace(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %151

159:                                              ; preds = %151
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %164, i64* %4, align 8
  br label %664

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i64, i64* @STRSCAN_NUM, align 8
  store i64 %170, i64* %4, align 8
  br label %664

171:                                              ; preds = %58
  br label %172

172:                                              ; preds = %171, %3
  %173 = load i64, i64* @STRSCAN_INT, align 8
  store i64 %173, i64* %10, align 8
  %174 = load i32, i32* @LJ_CHAR_DIGIT, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @STRSCAN_OPT_C, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 48
  br label %184

184:                                              ; preds = %179, %172
  %185 = phi i1 [ false, %172 ], [ %183, %179 ]
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 0, i32 10
  store i32 %187, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sle i32 %190, 48
  %192 = zext i1 %191 to i32
  %193 = call i64 @LJ_UNLIKELY(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %248

195:                                              ; preds = %184
  %196 = load i8*, i8** %5, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 48
  br i1 %199, label %200, label %222

200:                                              ; preds = %195
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = call i64 @casecmp(i8 signext %203, i8 zeroext 120)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  store i32 16, i32* %12, align 4
  %207 = load i32, i32* @LJ_CHAR_XDIGIT, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  store i8* %209, i8** %5, align 8
  br label %221

210:                                              ; preds = %200
  %211 = load i8*, i8** %5, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @casecmp(i8 signext %213, i8 zeroext 98)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  store i32 2, i32* %12, align 4
  %217 = load i32, i32* @LJ_CHAR_DIGIT, align 4
  store i32 %217, i32* %11, align 4
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  store i8* %219, i8** %5, align 8
  br label %220

220:                                              ; preds = %216, %210
  br label %221

221:                                              ; preds = %220, %206
  br label %222

222:                                              ; preds = %221, %195
  br label %223

223:                                              ; preds = %244, %222
  %224 = load i8*, i8** %5, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 48
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 1, i32* %16, align 4
  br label %243

229:                                              ; preds = %223
  %230 = load i8*, i8** %5, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 46
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load i8*, i8** %14, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %238, i64* %4, align 8
  br label %664

239:                                              ; preds = %234
  %240 = load i8*, i8** %5, align 8
  store i8* %240, i8** %14, align 8
  br label %242

241:                                              ; preds = %229
  br label %247

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %242, %228
  br label %244

244:                                              ; preds = %243
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %5, align 8
  br label %223

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %184
  %249 = load i8*, i8** %5, align 8
  store i8* %249, i8** %13, align 8
  br label %250

250:                                              ; preds = %282, %248
  %251 = load i8*, i8** %5, align 8
  %252 = load i8, i8* %251, align 1
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @lj_char_isa(i8 signext %252, i32 %253)
  %255 = call i64 @LJ_LIKELY(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %250
  %258 = load i32, i32* %17, align 4
  %259 = mul nsw i32 %258, 10
  %260 = load i8*, i8** %5, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = and i32 %262, 15
  %264 = add nsw i32 %259, %263
  store i32 %264, i32* %17, align 4
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %281

267:                                              ; preds = %250
  %268 = load i8*, i8** %5, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 46
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load i8*, i8** %14, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %276, i64* %4, align 8
  br label %664

277:                                              ; preds = %272
  %278 = load i8*, i8** %5, align 8
  store i8* %278, i8** %14, align 8
  br label %280

279:                                              ; preds = %267
  br label %285

280:                                              ; preds = %277
  br label %281

281:                                              ; preds = %280, %257
  br label %282

282:                                              ; preds = %281
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %5, align 8
  br label %250

285:                                              ; preds = %279
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* %15, align 4
  %288 = or i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %285
  %291 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %291, i64* %4, align 8
  br label %664

292:                                              ; preds = %285
  %293 = load i8*, i8** %14, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  %296 = load i64, i64* @STRSCAN_NUM, align 8
  store i64 %296, i64* %10, align 8
  %297 = load i32, i32* %15, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %332

299:                                              ; preds = %295
  %300 = load i8*, i8** %14, align 8
  %301 = load i8*, i8** %5, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 -1
  %303 = ptrtoint i8* %300 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %18, align 4
  %307 = load i8*, i8** %5, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 -1
  store i8* %308, i8** %14, align 8
  br label %309

309:                                              ; preds = %320, %299
  %310 = load i32, i32* %18, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load i8*, i8** %14, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 -1
  store i8* %314, i8** %14, align 8
  %315 = load i8, i8* %313, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 48
  br label %318

318:                                              ; preds = %312, %309
  %319 = phi i1 [ false, %309 ], [ %317, %312 ]
  br i1 %319, label %320, label %325

320:                                              ; preds = %318
  %321 = load i32, i32* %18, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %18, align 4
  %323 = load i32, i32* %15, align 4
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %15, align 4
  br label %309

325:                                              ; preds = %318
  %326 = load i32, i32* %12, align 4
  %327 = icmp eq i32 %326, 16
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* %18, align 4
  %330 = mul nsw i32 %329, 4
  store i32 %330, i32* %18, align 4
  br label %331

331:                                              ; preds = %328, %325
  br label %332

332:                                              ; preds = %331, %295
  br label %333

333:                                              ; preds = %332, %292
  %334 = load i32, i32* %12, align 4
  %335 = icmp sge i32 %334, 10
  br i1 %335, label %336, label %410

336:                                              ; preds = %333
  %337 = load i8*, i8** %5, align 8
  %338 = load i8, i8* %337, align 1
  %339 = load i32, i32* %12, align 4
  %340 = icmp eq i32 %339, 16
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i32 112, i32 101
  %343 = trunc i32 %342 to i8
  %344 = call i64 @casecmp(i8 signext %338, i8 zeroext %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %410

346:                                              ; preds = %336
  store i32 0, i32* %20, align 4
  %347 = load i64, i64* @STRSCAN_NUM, align 8
  store i64 %347, i64* %10, align 8
  %348 = load i8*, i8** %5, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %5, align 8
  %350 = load i8*, i8** %5, align 8
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 43
  br i1 %353, label %359, label %354

354:                                              ; preds = %346
  %355 = load i8*, i8** %5, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 45
  br i1 %358, label %359, label %366

359:                                              ; preds = %354, %346
  %360 = load i8*, i8** %5, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %5, align 8
  %362 = load i8, i8* %360, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 45
  %365 = zext i1 %364 to i32
  store i32 %365, i32* %20, align 4
  br label %366

366:                                              ; preds = %359, %354
  %367 = load i8*, i8** %5, align 8
  %368 = load i8, i8* %367, align 1
  %369 = call i64 @lj_char_isdigit(i8 signext %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %372, i64* %4, align 8
  br label %664

373:                                              ; preds = %366
  %374 = load i8*, i8** %5, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %5, align 8
  %376 = load i8, i8* %374, align 1
  %377 = sext i8 %376 to i32
  %378 = and i32 %377, 15
  store i32 %378, i32* %19, align 4
  br label %379

379:                                              ; preds = %395, %373
  %380 = load i8*, i8** %5, align 8
  %381 = load i8, i8* %380, align 1
  %382 = call i64 @lj_char_isdigit(i8 signext %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %379
  %385 = load i32, i32* %19, align 4
  %386 = icmp slt i32 %385, 65536
  br i1 %386, label %387, label %395

387:                                              ; preds = %384
  %388 = load i32, i32* %19, align 4
  %389 = mul nsw i32 %388, 10
  %390 = load i8*, i8** %5, align 8
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = and i32 %392, 15
  %394 = add nsw i32 %389, %393
  store i32 %394, i32* %19, align 4
  br label %395

395:                                              ; preds = %387, %384
  %396 = load i8*, i8** %5, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %5, align 8
  br label %379

398:                                              ; preds = %379
  %399 = load i32, i32* %20, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i32, i32* %19, align 4
  %403 = sub nsw i32 0, %402
  br label %406

404:                                              ; preds = %398
  %405 = load i32, i32* %19, align 4
  br label %406

406:                                              ; preds = %404, %401
  %407 = phi i32 [ %403, %401 ], [ %405, %404 ]
  %408 = load i32, i32* %18, align 4
  %409 = add nsw i32 %408, %407
  store i32 %409, i32* %18, align 4
  br label %410

410:                                              ; preds = %406, %336, %333
  %411 = load i8*, i8** %5, align 8
  %412 = load i8, i8* %411, align 1
  %413 = icmp ne i8 %412, 0
  br i1 %413, label %414, label %537

414:                                              ; preds = %410
  %415 = load i8*, i8** %5, align 8
  %416 = load i8, i8* %415, align 1
  %417 = call i64 @casecmp(i8 signext %416, i8 zeroext 105)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %414
  %420 = load i32, i32* %7, align 4
  %421 = load i32, i32* @STRSCAN_OPT_IMAG, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %425, i64* %4, align 8
  br label %664

426:                                              ; preds = %419
  %427 = load i8*, i8** %5, align 8
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %5, align 8
  %429 = load i64, i64* @STRSCAN_IMAG, align 8
  store i64 %429, i64* %10, align 8
  br label %521

430:                                              ; preds = %414
  %431 = load i64, i64* %10, align 8
  %432 = load i64, i64* @STRSCAN_INT, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %520

434:                                              ; preds = %430
  %435 = load i8*, i8** %5, align 8
  %436 = load i8, i8* %435, align 1
  %437 = call i64 @casecmp(i8 signext %436, i8 zeroext 117)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = load i8*, i8** %5, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %5, align 8
  %442 = load i64, i64* @STRSCAN_U32, align 8
  store i64 %442, i64* %10, align 8
  br label %443

443:                                              ; preds = %439, %434
  %444 = load i8*, i8** %5, align 8
  %445 = load i8, i8* %444, align 1
  %446 = call i64 @casecmp(i8 signext %445, i8 zeroext 108)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %478

448:                                              ; preds = %443
  %449 = load i8*, i8** %5, align 8
  %450 = getelementptr inbounds i8, i8* %449, i32 1
  store i8* %450, i8** %5, align 8
  %451 = load i8*, i8** %5, align 8
  %452 = load i8, i8* %451, align 1
  %453 = call i64 @casecmp(i8 signext %452, i8 zeroext 108)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %463

455:                                              ; preds = %448
  %456 = load i8*, i8** %5, align 8
  %457 = getelementptr inbounds i8, i8* %456, i32 1
  store i8* %457, i8** %5, align 8
  %458 = load i64, i64* @STRSCAN_I64, align 8
  %459 = load i64, i64* @STRSCAN_INT, align 8
  %460 = sub nsw i64 %458, %459
  %461 = load i64, i64* %10, align 8
  %462 = add nsw i64 %461, %460
  store i64 %462, i64* %10, align 8
  br label %477

463:                                              ; preds = %448
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* @STRSCAN_OPT_C, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %463
  %469 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %469, i64* %4, align 8
  br label %664

470:                                              ; preds = %463
  %471 = load i64, i64* @STRSCAN_I64, align 8
  %472 = load i64, i64* @STRSCAN_INT, align 8
  %473 = sub nsw i64 %471, %472
  %474 = load i64, i64* %10, align 8
  %475 = add nsw i64 %474, %473
  store i64 %475, i64* %10, align 8
  br label %476

476:                                              ; preds = %470
  br label %477

477:                                              ; preds = %476, %455
  br label %478

478:                                              ; preds = %477, %443
  %479 = load i8*, i8** %5, align 8
  %480 = load i8, i8* %479, align 1
  %481 = call i64 @casecmp(i8 signext %480, i8 zeroext 117)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %499

483:                                              ; preds = %478
  %484 = load i64, i64* %10, align 8
  %485 = load i64, i64* @STRSCAN_INT, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %491, label %487

487:                                              ; preds = %483
  %488 = load i64, i64* %10, align 8
  %489 = load i64, i64* @STRSCAN_I64, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %499

491:                                              ; preds = %487, %483
  %492 = load i8*, i8** %5, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %5, align 8
  %494 = load i64, i64* @STRSCAN_U32, align 8
  %495 = load i64, i64* @STRSCAN_INT, align 8
  %496 = sub nsw i64 %494, %495
  %497 = load i64, i64* %10, align 8
  %498 = add nsw i64 %497, %496
  store i64 %498, i64* %10, align 8
  br label %499

499:                                              ; preds = %491, %487, %478
  %500 = load i64, i64* %10, align 8
  %501 = load i64, i64* @STRSCAN_U32, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %508

503:                                              ; preds = %499
  %504 = load i32, i32* %7, align 4
  %505 = load i32, i32* @STRSCAN_OPT_C, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %517

508:                                              ; preds = %503, %499
  %509 = load i64, i64* %10, align 8
  %510 = load i64, i64* @STRSCAN_I64, align 8
  %511 = icmp sge i64 %509, %510
  br i1 %511, label %512, label %519

512:                                              ; preds = %508
  %513 = load i32, i32* %7, align 4
  %514 = load i32, i32* @STRSCAN_OPT_LL, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %512, %503
  %518 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %518, i64* %4, align 8
  br label %664

519:                                              ; preds = %512, %508
  br label %520

520:                                              ; preds = %519, %430
  br label %521

521:                                              ; preds = %520, %426
  br label %522

522:                                              ; preds = %527, %521
  %523 = load i8*, i8** %5, align 8
  %524 = load i8, i8* %523, align 1
  %525 = call i64 @lj_char_isspace(i8 signext %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %522
  %528 = load i8*, i8** %5, align 8
  %529 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %529, i8** %5, align 8
  br label %522

530:                                              ; preds = %522
  %531 = load i8*, i8** %5, align 8
  %532 = load i8, i8* %531, align 1
  %533 = icmp ne i8 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = load i64, i64* @STRSCAN_ERROR, align 8
  store i64 %535, i64* %4, align 8
  br label %664

536:                                              ; preds = %530
  br label %537

537:                                              ; preds = %536, %410
  %538 = load i64, i64* %10, align 8
  %539 = load i64, i64* @STRSCAN_INT, align 8
  %540 = icmp eq i64 %538, %539
  br i1 %540, label %541, label %585

541:                                              ; preds = %537
  %542 = load i32, i32* %12, align 4
  %543 = icmp eq i32 %542, 10
  br i1 %543, label %544, label %585

544:                                              ; preds = %541
  %545 = load i32, i32* %15, align 4
  %546 = icmp slt i32 %545, 10
  br i1 %546, label %560, label %547

547:                                              ; preds = %544
  %548 = load i32, i32* %15, align 4
  %549 = icmp eq i32 %548, 10
  br i1 %549, label %550, label %585

550:                                              ; preds = %547
  %551 = load i8*, i8** %13, align 8
  %552 = load i8, i8* %551, align 1
  %553 = sext i8 %552 to i32
  %554 = icmp sle i32 %553, 50
  br i1 %554, label %555, label %585

555:                                              ; preds = %550
  %556 = load i32, i32* %17, align 4
  %557 = load i32, i32* %8, align 4
  %558 = add i32 -2147483648, %557
  %559 = icmp ult i32 %556, %558
  br i1 %559, label %560, label %585

560:                                              ; preds = %555, %544
  %561 = load i32, i32* %8, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load i32, i32* %17, align 4
  %565 = sub nsw i32 0, %564
  br label %568

566:                                              ; preds = %560
  %567 = load i32, i32* %17, align 4
  br label %568

568:                                              ; preds = %566, %563
  %569 = phi i32 [ %565, %563 ], [ %567, %566 ]
  store i32 %569, i32* %21, align 4
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* @STRSCAN_OPT_TONUM, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %580

574:                                              ; preds = %568
  %575 = load i32, i32* %21, align 4
  %576 = sitofp i32 %575 to double
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 0
  store double %576, double* %578, align 8
  %579 = load i64, i64* @STRSCAN_NUM, align 8
  store i64 %579, i64* %4, align 8
  br label %664

580:                                              ; preds = %568
  %581 = load i32, i32* %21, align 4
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 1
  store i32 %581, i32* %583, align 8
  %584 = load i64, i64* @STRSCAN_INT, align 8
  store i64 %584, i64* %4, align 8
  br label %664

585:                                              ; preds = %555, %550, %547, %541, %537
  %586 = load i32, i32* %12, align 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %603

588:                                              ; preds = %585
  %589 = load i64, i64* %10, align 8
  %590 = load i64, i64* @STRSCAN_NUM, align 8
  %591 = icmp eq i64 %589, %590
  br i1 %591, label %603, label %592

592:                                              ; preds = %588
  %593 = load i64, i64* %10, align 8
  %594 = load i64, i64* @STRSCAN_IMAG, align 8
  %595 = icmp eq i64 %593, %594
  br i1 %595, label %603, label %596

596:                                              ; preds = %592
  %597 = load i8*, i8** %13, align 8
  %598 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %599 = load i64, i64* %10, align 8
  %600 = load i32, i32* %8, align 4
  %601 = load i32, i32* %15, align 4
  %602 = call i64 @strscan_oct(i8* %597, %struct.TYPE_10__* %598, i64 %599, i32 %600, i32 %601)
  store i64 %602, i64* %4, align 8
  br label %664

603:                                              ; preds = %592, %588, %585
  %604 = load i32, i32* %12, align 4
  %605 = icmp eq i32 %604, 16
  br i1 %605, label %606, label %615

606:                                              ; preds = %603
  %607 = load i8*, i8** %13, align 8
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %609 = load i64, i64* %10, align 8
  %610 = load i32, i32* %7, align 4
  %611 = load i32, i32* %18, align 4
  %612 = load i32, i32* %8, align 4
  %613 = load i32, i32* %15, align 4
  %614 = call i64 @strscan_hex(i8* %607, %struct.TYPE_10__* %608, i64 %609, i32 %610, i32 %611, i32 %612, i32 %613)
  store i64 %614, i64* %10, align 8
  br label %637

615:                                              ; preds = %603
  %616 = load i32, i32* %12, align 4
  %617 = icmp eq i32 %616, 2
  br i1 %617, label %618, label %627

618:                                              ; preds = %615
  %619 = load i8*, i8** %13, align 8
  %620 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %621 = load i64, i64* %10, align 8
  %622 = load i32, i32* %7, align 4
  %623 = load i32, i32* %18, align 4
  %624 = load i32, i32* %8, align 4
  %625 = load i32, i32* %15, align 4
  %626 = call i64 @strscan_bin(i8* %619, %struct.TYPE_10__* %620, i64 %621, i32 %622, i32 %623, i32 %624, i32 %625)
  store i64 %626, i64* %10, align 8
  br label %636

627:                                              ; preds = %615
  %628 = load i8*, i8** %13, align 8
  %629 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %630 = load i64, i64* %10, align 8
  %631 = load i32, i32* %7, align 4
  %632 = load i32, i32* %18, align 4
  %633 = load i32, i32* %8, align 4
  %634 = load i32, i32* %15, align 4
  %635 = call i64 @strscan_dec(i8* %628, %struct.TYPE_10__* %629, i64 %630, i32 %631, i32 %632, i32 %633, i32 %634)
  store i64 %635, i64* %10, align 8
  br label %636

636:                                              ; preds = %627, %618
  br label %637

637:                                              ; preds = %636, %606
  %638 = load i64, i64* %10, align 8
  %639 = load i64, i64* @STRSCAN_NUM, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %641, label %662

641:                                              ; preds = %637
  %642 = load i32, i32* %7, align 4
  %643 = load i32, i32* @STRSCAN_OPT_TOINT, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %662

646:                                              ; preds = %641
  %647 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i32 0, i32 0
  %649 = load double, double* %648, align 8
  store double %649, double* %22, align 8
  %650 = load double, double* %22, align 8
  %651 = call i32 @lj_num2int(double %650)
  store i32 %651, i32* %23, align 4
  %652 = load double, double* %22, align 8
  %653 = load i32, i32* %23, align 4
  %654 = sitofp i32 %653 to double
  %655 = fcmp oeq double %652, %654
  br i1 %655, label %656, label %661

656:                                              ; preds = %646
  %657 = load i32, i32* %23, align 4
  %658 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %659 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %658, i32 0, i32 1
  store i32 %657, i32* %659, align 8
  %660 = load i64, i64* @STRSCAN_INT, align 8
  store i64 %660, i64* %4, align 8
  br label %664

661:                                              ; preds = %646
  br label %662

662:                                              ; preds = %661, %641, %637
  %663 = load i64, i64* %10, align 8
  store i64 %663, i64* %4, align 8
  br label %664

664:                                              ; preds = %662, %656, %596, %580, %574, %534, %517, %468, %424, %371, %290, %275, %237, %165, %163
  %665 = load i64, i64* %4, align 8
  ret i64 %665
}

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i64 @lj_char_isdigit(i8 signext) #1

declare dso_local i64 @lj_char_isspace(i8 signext) #1

declare dso_local i32 @setnanV(%struct.TYPE_10__*) #1

declare dso_local i64 @casecmp(i8 signext, i8 zeroext) #1

declare dso_local i32 @setminfV(%struct.TYPE_10__*) #1

declare dso_local i32 @setpinfV(%struct.TYPE_10__*) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @lj_char_isa(i8 signext, i32) #1

declare dso_local i64 @strscan_oct(i8*, %struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i64 @strscan_hex(i8*, %struct.TYPE_10__*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @strscan_bin(i8*, %struct.TYPE_10__*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @strscan_dec(i8*, %struct.TYPE_10__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @lj_num2int(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
