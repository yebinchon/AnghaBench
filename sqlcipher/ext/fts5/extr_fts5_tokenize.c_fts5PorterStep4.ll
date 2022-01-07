; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep4.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ance\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ence\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"able\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ible\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ant\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ement\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ment\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ion\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ou\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ism\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"iti\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ous\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ive\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fts5PorterStep4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterStep4(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %453 [
    i32 97, label %16
    i32 99, label %39
    i32 101, label %85
    i32 105, label %108
    i32 108, label %131
    i32 110, label %177
    i32 111, label %269
    i32 115, label %315
    i32 116, label %338
    i32 117, label %384
    i32 118, label %407
    i32 122, label %430
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24, i32 2)
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 2
  %31 = call i32 @fts5Porter_MGt1(i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 2
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %19, %16
  br label %453

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 4)
  %49 = icmp eq i32 0, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 4
  %54 = call i32 @fts5Porter_MGt1(i8* %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %50
  br label %84

61:                                               ; preds = %42, %39
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 4
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 4)
  %71 = icmp eq i32 0, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 4
  %76 = call i32 @fts5Porter_MGt1(i8* %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 4
  %81 = load i32*, i32** %4, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %82, %64, %61
  br label %84

84:                                               ; preds = %83, %60
  br label %453

85:                                               ; preds = %2
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 2
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %93, i32 2)
  %95 = icmp eq i32 0, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 2
  %100 = call i32 @fts5Porter_MGt1(i8* %97, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 2
  %105 = load i32*, i32** %4, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %88, %85
  br label %453

108:                                              ; preds = %2
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 2)
  %118 = icmp eq i32 0, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i8*, i8** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %121, 2
  %123 = call i32 @fts5Porter_MGt1(i8* %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %126, 2
  %128 = load i32*, i32** %4, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %119
  br label %130

130:                                              ; preds = %129, %111, %108
  br label %453

131:                                              ; preds = %2
  %132 = load i32, i32* %6, align 4
  %133 = icmp sgt i32 %132, 4
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %139, i32 4)
  %141 = icmp eq i32 0, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load i8*, i8** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sub nsw i32 %144, 4
  %146 = call i32 @fts5Porter_MGt1(i8* %143, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, 4
  %151 = load i32*, i32** %4, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %142
  br label %176

153:                                              ; preds = %134, %131
  %154 = load i32, i32* %6, align 4
  %155 = icmp sgt i32 %154, 4
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i8*, i8** %3, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sub nsw i32 %158, 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %161, i32 4)
  %163 = icmp eq i32 0, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load i8*, i8** %3, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sub nsw i32 %166, 4
  %168 = call i32 @fts5Porter_MGt1(i8* %165, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %171, 4
  %173 = load i32*, i32** %4, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %156, %153
  br label %176

176:                                              ; preds = %175, %152
  br label %453

177:                                              ; preds = %2
  %178 = load i32, i32* %6, align 4
  %179 = icmp sgt i32 %178, 3
  br i1 %179, label %180, label %199

180:                                              ; preds = %177
  %181 = load i8*, i8** %3, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %185, i32 3)
  %187 = icmp eq i32 0, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %180
  %189 = load i8*, i8** %3, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sub nsw i32 %190, 3
  %192 = call i32 @fts5Porter_MGt1(i8* %189, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* %6, align 4
  %196 = sub nsw i32 %195, 3
  %197 = load i32*, i32** %4, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %188
  br label %268

199:                                              ; preds = %180, %177
  %200 = load i32, i32* %6, align 4
  %201 = icmp sgt i32 %200, 5
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sub nsw i32 %204, 5
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %207, i32 5)
  %209 = icmp eq i32 0, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %202
  %211 = load i8*, i8** %3, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sub nsw i32 %212, 5
  %214 = call i32 @fts5Porter_MGt1(i8* %211, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i32, i32* %6, align 4
  %218 = sub nsw i32 %217, 5
  %219 = load i32*, i32** %4, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %210
  br label %267

221:                                              ; preds = %202, %199
  %222 = load i32, i32* %6, align 4
  %223 = icmp sgt i32 %222, 4
  br i1 %223, label %224, label %243

224:                                              ; preds = %221
  %225 = load i8*, i8** %3, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %226, 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %229, i32 4)
  %231 = icmp eq i32 0, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %224
  %233 = load i8*, i8** %3, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sub nsw i32 %234, 4
  %236 = call i32 @fts5Porter_MGt1(i8* %233, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i32, i32* %6, align 4
  %240 = sub nsw i32 %239, 4
  %241 = load i32*, i32** %4, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %232
  br label %266

243:                                              ; preds = %224, %221
  %244 = load i32, i32* %6, align 4
  %245 = icmp sgt i32 %244, 3
  br i1 %245, label %246, label %265

246:                                              ; preds = %243
  %247 = load i8*, i8** %3, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sub nsw i32 %248, 3
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %251, i32 3)
  %253 = icmp eq i32 0, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %246
  %255 = load i8*, i8** %3, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sub nsw i32 %256, 3
  %258 = call i32 @fts5Porter_MGt1(i8* %255, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = load i32, i32* %6, align 4
  %262 = sub nsw i32 %261, 3
  %263 = load i32*, i32** %4, align 8
  store i32 %262, i32* %263, align 4
  br label %264

264:                                              ; preds = %260, %254
  br label %265

265:                                              ; preds = %264, %246, %243
  br label %266

266:                                              ; preds = %265, %242
  br label %267

267:                                              ; preds = %266, %220
  br label %268

268:                                              ; preds = %267, %198
  br label %453

269:                                              ; preds = %2
  %270 = load i32, i32* %6, align 4
  %271 = icmp sgt i32 %270, 3
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = load i8*, i8** %3, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %274, 3
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %277, i32 3)
  %279 = icmp eq i32 0, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %272
  %281 = load i8*, i8** %3, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sub nsw i32 %282, 3
  %284 = call i32 @fts5Porter_MGt1_and_S_or_T(i8* %281, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* %6, align 4
  %288 = sub nsw i32 %287, 3
  %289 = load i32*, i32** %4, align 8
  store i32 %288, i32* %289, align 4
  br label %290

290:                                              ; preds = %286, %280
  br label %314

291:                                              ; preds = %272, %269
  %292 = load i32, i32* %6, align 4
  %293 = icmp sgt i32 %292, 2
  br i1 %293, label %294, label %313

294:                                              ; preds = %291
  %295 = load i8*, i8** %3, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sub nsw i32 %296, 2
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  %300 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %299, i32 2)
  %301 = icmp eq i32 0, %300
  br i1 %301, label %302, label %313

302:                                              ; preds = %294
  %303 = load i8*, i8** %3, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sub nsw i32 %304, 2
  %306 = call i32 @fts5Porter_MGt1(i8* %303, i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load i32, i32* %6, align 4
  %310 = sub nsw i32 %309, 2
  %311 = load i32*, i32** %4, align 8
  store i32 %310, i32* %311, align 4
  br label %312

312:                                              ; preds = %308, %302
  br label %313

313:                                              ; preds = %312, %294, %291
  br label %314

314:                                              ; preds = %313, %290
  br label %453

315:                                              ; preds = %2
  %316 = load i32, i32* %6, align 4
  %317 = icmp sgt i32 %316, 3
  br i1 %317, label %318, label %337

318:                                              ; preds = %315
  %319 = load i8*, i8** %3, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sub nsw i32 %320, 3
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %323, i32 3)
  %325 = icmp eq i32 0, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %318
  %327 = load i8*, i8** %3, align 8
  %328 = load i32, i32* %6, align 4
  %329 = sub nsw i32 %328, 3
  %330 = call i32 @fts5Porter_MGt1(i8* %327, i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %326
  %333 = load i32, i32* %6, align 4
  %334 = sub nsw i32 %333, 3
  %335 = load i32*, i32** %4, align 8
  store i32 %334, i32* %335, align 4
  br label %336

336:                                              ; preds = %332, %326
  br label %337

337:                                              ; preds = %336, %318, %315
  br label %453

338:                                              ; preds = %2
  %339 = load i32, i32* %6, align 4
  %340 = icmp sgt i32 %339, 3
  br i1 %340, label %341, label %360

341:                                              ; preds = %338
  %342 = load i8*, i8** %3, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sub nsw i32 %343, 3
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  %347 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %346, i32 3)
  %348 = icmp eq i32 0, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %341
  %350 = load i8*, i8** %3, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sub nsw i32 %351, 3
  %353 = call i32 @fts5Porter_MGt1(i8* %350, i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %349
  %356 = load i32, i32* %6, align 4
  %357 = sub nsw i32 %356, 3
  %358 = load i32*, i32** %4, align 8
  store i32 %357, i32* %358, align 4
  br label %359

359:                                              ; preds = %355, %349
  br label %383

360:                                              ; preds = %341, %338
  %361 = load i32, i32* %6, align 4
  %362 = icmp sgt i32 %361, 3
  br i1 %362, label %363, label %382

363:                                              ; preds = %360
  %364 = load i8*, i8** %3, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sub nsw i32 %365, 3
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %368, i32 3)
  %370 = icmp eq i32 0, %369
  br i1 %370, label %371, label %382

371:                                              ; preds = %363
  %372 = load i8*, i8** %3, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sub nsw i32 %373, 3
  %375 = call i32 @fts5Porter_MGt1(i8* %372, i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %371
  %378 = load i32, i32* %6, align 4
  %379 = sub nsw i32 %378, 3
  %380 = load i32*, i32** %4, align 8
  store i32 %379, i32* %380, align 4
  br label %381

381:                                              ; preds = %377, %371
  br label %382

382:                                              ; preds = %381, %363, %360
  br label %383

383:                                              ; preds = %382, %359
  br label %453

384:                                              ; preds = %2
  %385 = load i32, i32* %6, align 4
  %386 = icmp sgt i32 %385, 3
  br i1 %386, label %387, label %406

387:                                              ; preds = %384
  %388 = load i8*, i8** %3, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sub nsw i32 %389, 3
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %388, i64 %391
  %393 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %392, i32 3)
  %394 = icmp eq i32 0, %393
  br i1 %394, label %395, label %406

395:                                              ; preds = %387
  %396 = load i8*, i8** %3, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sub nsw i32 %397, 3
  %399 = call i32 @fts5Porter_MGt1(i8* %396, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %395
  %402 = load i32, i32* %6, align 4
  %403 = sub nsw i32 %402, 3
  %404 = load i32*, i32** %4, align 8
  store i32 %403, i32* %404, align 4
  br label %405

405:                                              ; preds = %401, %395
  br label %406

406:                                              ; preds = %405, %387, %384
  br label %453

407:                                              ; preds = %2
  %408 = load i32, i32* %6, align 4
  %409 = icmp sgt i32 %408, 3
  br i1 %409, label %410, label %429

410:                                              ; preds = %407
  %411 = load i8*, i8** %3, align 8
  %412 = load i32, i32* %6, align 4
  %413 = sub nsw i32 %412, 3
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %411, i64 %414
  %416 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %415, i32 3)
  %417 = icmp eq i32 0, %416
  br i1 %417, label %418, label %429

418:                                              ; preds = %410
  %419 = load i8*, i8** %3, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sub nsw i32 %420, 3
  %422 = call i32 @fts5Porter_MGt1(i8* %419, i32 %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %418
  %425 = load i32, i32* %6, align 4
  %426 = sub nsw i32 %425, 3
  %427 = load i32*, i32** %4, align 8
  store i32 %426, i32* %427, align 4
  br label %428

428:                                              ; preds = %424, %418
  br label %429

429:                                              ; preds = %428, %410, %407
  br label %453

430:                                              ; preds = %2
  %431 = load i32, i32* %6, align 4
  %432 = icmp sgt i32 %431, 3
  br i1 %432, label %433, label %452

433:                                              ; preds = %430
  %434 = load i8*, i8** %3, align 8
  %435 = load i32, i32* %6, align 4
  %436 = sub nsw i32 %435, 3
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %438, i32 3)
  %440 = icmp eq i32 0, %439
  br i1 %440, label %441, label %452

441:                                              ; preds = %433
  %442 = load i8*, i8** %3, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sub nsw i32 %443, 3
  %445 = call i32 @fts5Porter_MGt1(i8* %442, i32 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %441
  %448 = load i32, i32* %6, align 4
  %449 = sub nsw i32 %448, 3
  %450 = load i32*, i32** %4, align 8
  store i32 %449, i32* %450, align 4
  br label %451

451:                                              ; preds = %447, %441
  br label %452

452:                                              ; preds = %451, %433, %430
  br label %453

453:                                              ; preds = %2, %452, %429, %406, %383, %337, %314, %268, %176, %130, %107, %84, %38
  %454 = load i32, i32* %5, align 4
  ret i32 %454
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5Porter_MGt1(i8*, i32) #1

declare dso_local i32 @fts5Porter_MGt1_and_S_or_T(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
