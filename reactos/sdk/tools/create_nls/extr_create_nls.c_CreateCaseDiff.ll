; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_CreateCaseDiff.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_CreateCaseDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_upper_org = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Not enough memory for to upper table\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@to_lower_org = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Not enough memory for to lower table\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not open file \22%s\22\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @CreateCaseDiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateCaseDiff(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = call i64 @calloc(i32 65536, i32 8)
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** @to_upper_org, align 8
  %12 = load i64*, i64** @to_upper_org, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %478

17:                                               ; preds = %1
  %18 = call i64 @calloc(i32 65536, i32 8)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** @to_lower_org, align 8
  %20 = load i64*, i64** @to_lower_org, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %478

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %478

34:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %471, %470, %416, %362, %339, %316, %293, %270, %247, %224, %201, %178, %155, %132, %109, %86, %63, %34
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @fgets(i8* %36, i32 256, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %474

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %56, %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  br label %44

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %35

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strtol(i8* %65, i8** %5, i32 16)
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %79, %64
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 59
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  br label %67

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %35

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %102, %87
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 59
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ false, %90 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %90

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %35

110:                                              ; preds = %105
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  br label %113

113:                                              ; preds = %125, %110
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 59
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i1 [ false, %113 ], [ %122, %118 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  br label %113

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %35

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %5, align 8
  br label %136

136:                                              ; preds = %148, %133
  %137 = load i8*, i8** %5, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i8*, i8** %5, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 59
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i1 [ false, %136 ], [ %145, %141 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %5, align 8
  br label %136

151:                                              ; preds = %146
  %152 = load i8*, i8** %5, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  br label %35

156:                                              ; preds = %151
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %171, %156
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 59
  br label %169

169:                                              ; preds = %164, %159
  %170 = phi i1 [ false, %159 ], [ %168, %164 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %5, align 8
  br label %159

174:                                              ; preds = %169
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  br label %35

179:                                              ; preds = %174
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %5, align 8
  br label %182

182:                                              ; preds = %194, %179
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 59
  br label %192

192:                                              ; preds = %187, %182
  %193 = phi i1 [ false, %182 ], [ %191, %187 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %5, align 8
  br label %182

197:                                              ; preds = %192
  %198 = load i8*, i8** %5, align 8
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  br label %35

202:                                              ; preds = %197
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %5, align 8
  br label %205

205:                                              ; preds = %217, %202
  %206 = load i8*, i8** %5, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %5, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 59
  br label %215

215:                                              ; preds = %210, %205
  %216 = phi i1 [ false, %205 ], [ %214, %210 ]
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %5, align 8
  br label %205

220:                                              ; preds = %215
  %221 = load i8*, i8** %5, align 8
  %222 = load i8, i8* %221, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  br label %35

225:                                              ; preds = %220
  %226 = load i8*, i8** %5, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %5, align 8
  br label %228

228:                                              ; preds = %240, %225
  %229 = load i8*, i8** %5, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i8*, i8** %5, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 59
  br label %238

238:                                              ; preds = %233, %228
  %239 = phi i1 [ false, %228 ], [ %237, %233 ]
  br i1 %239, label %240, label %243

240:                                              ; preds = %238
  %241 = load i8*, i8** %5, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %5, align 8
  br label %228

243:                                              ; preds = %238
  %244 = load i8*, i8** %5, align 8
  %245 = load i8, i8* %244, align 1
  %246 = icmp ne i8 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  br label %35

248:                                              ; preds = %243
  %249 = load i8*, i8** %5, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %5, align 8
  br label %251

251:                                              ; preds = %263, %248
  %252 = load i8*, i8** %5, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i8*, i8** %5, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 59
  br label %261

261:                                              ; preds = %256, %251
  %262 = phi i1 [ false, %251 ], [ %260, %256 ]
  br i1 %262, label %263, label %266

263:                                              ; preds = %261
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %5, align 8
  br label %251

266:                                              ; preds = %261
  %267 = load i8*, i8** %5, align 8
  %268 = load i8, i8* %267, align 1
  %269 = icmp ne i8 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  br label %35

271:                                              ; preds = %266
  %272 = load i8*, i8** %5, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %5, align 8
  br label %274

274:                                              ; preds = %286, %271
  %275 = load i8*, i8** %5, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load i8*, i8** %5, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 59
  br label %284

284:                                              ; preds = %279, %274
  %285 = phi i1 [ false, %274 ], [ %283, %279 ]
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = load i8*, i8** %5, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %5, align 8
  br label %274

289:                                              ; preds = %284
  %290 = load i8*, i8** %5, align 8
  %291 = load i8, i8* %290, align 1
  %292 = icmp ne i8 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  br label %35

294:                                              ; preds = %289
  %295 = load i8*, i8** %5, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %5, align 8
  br label %297

297:                                              ; preds = %309, %294
  %298 = load i8*, i8** %5, align 8
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i8*, i8** %5, align 8
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp ne i32 %305, 59
  br label %307

307:                                              ; preds = %302, %297
  %308 = phi i1 [ false, %297 ], [ %306, %302 ]
  br i1 %308, label %309, label %312

309:                                              ; preds = %307
  %310 = load i8*, i8** %5, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %5, align 8
  br label %297

312:                                              ; preds = %307
  %313 = load i8*, i8** %5, align 8
  %314 = load i8, i8* %313, align 1
  %315 = icmp ne i8 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  br label %35

317:                                              ; preds = %312
  %318 = load i8*, i8** %5, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %5, align 8
  br label %320

320:                                              ; preds = %332, %317
  %321 = load i8*, i8** %5, align 8
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %320
  %326 = load i8*, i8** %5, align 8
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 59
  br label %330

330:                                              ; preds = %325, %320
  %331 = phi i1 [ false, %320 ], [ %329, %325 ]
  br i1 %331, label %332, label %335

332:                                              ; preds = %330
  %333 = load i8*, i8** %5, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %5, align 8
  br label %320

335:                                              ; preds = %330
  %336 = load i8*, i8** %5, align 8
  %337 = load i8, i8* %336, align 1
  %338 = icmp ne i8 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  br label %35

340:                                              ; preds = %335
  %341 = load i8*, i8** %5, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %5, align 8
  br label %343

343:                                              ; preds = %355, %340
  %344 = load i8*, i8** %5, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %343
  %349 = load i8*, i8** %5, align 8
  %350 = load i8, i8* %349, align 1
  %351 = call i64 @isspace(i8 signext %350)
  %352 = icmp ne i64 %351, 0
  br label %353

353:                                              ; preds = %348, %343
  %354 = phi i1 [ false, %343 ], [ %352, %348 ]
  br i1 %354, label %355, label %358

355:                                              ; preds = %353
  %356 = load i8*, i8** %5, align 8
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %5, align 8
  br label %343

358:                                              ; preds = %353
  %359 = load i8*, i8** %5, align 8
  %360 = load i8, i8* %359, align 1
  %361 = icmp ne i8 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  br label %35

363:                                              ; preds = %358
  %364 = load i8*, i8** %5, align 8
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp ne i32 %366, 59
  br i1 %367, label %368, label %393

368:                                              ; preds = %363
  %369 = load i8*, i8** %5, align 8
  %370 = call i64 @strtol(i8* %369, i8** %5, i32 16)
  store i64 %370, i64* %7, align 8
  %371 = load i64, i64* %7, align 8
  %372 = load i64, i64* %6, align 8
  %373 = sub i64 %371, %372
  %374 = load i64*, i64** @to_upper_org, align 8
  %375 = load i64, i64* %6, align 8
  %376 = getelementptr inbounds i64, i64* %374, i64 %375
  store i64 %373, i64* %376, align 8
  br label %377

377:                                              ; preds = %389, %368
  %378 = load i8*, i8** %5, align 8
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %377
  %383 = load i8*, i8** %5, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp ne i32 %385, 59
  br label %387

387:                                              ; preds = %382, %377
  %388 = phi i1 [ false, %377 ], [ %386, %382 ]
  br i1 %388, label %389, label %392

389:                                              ; preds = %387
  %390 = load i8*, i8** %5, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %5, align 8
  br label %377

392:                                              ; preds = %387
  br label %396

393:                                              ; preds = %363
  %394 = load i8*, i8** %5, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %5, align 8
  br label %396

396:                                              ; preds = %393, %392
  br label %397

397:                                              ; preds = %409, %396
  %398 = load i8*, i8** %5, align 8
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %397
  %403 = load i8*, i8** %5, align 8
  %404 = load i8, i8* %403, align 1
  %405 = call i64 @isspace(i8 signext %404)
  %406 = icmp ne i64 %405, 0
  br label %407

407:                                              ; preds = %402, %397
  %408 = phi i1 [ false, %397 ], [ %406, %402 ]
  br i1 %408, label %409, label %412

409:                                              ; preds = %407
  %410 = load i8*, i8** %5, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %5, align 8
  br label %397

412:                                              ; preds = %407
  %413 = load i8*, i8** %5, align 8
  %414 = load i8, i8* %413, align 1
  %415 = icmp ne i8 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  br label %35

417:                                              ; preds = %412
  %418 = load i8*, i8** %5, align 8
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp ne i32 %420, 59
  br i1 %421, label %422, label %447

422:                                              ; preds = %417
  %423 = load i8*, i8** %5, align 8
  %424 = call i64 @strtol(i8* %423, i8** %5, i32 16)
  store i64 %424, i64* %7, align 8
  %425 = load i64, i64* %7, align 8
  %426 = load i64, i64* %6, align 8
  %427 = sub i64 %425, %426
  %428 = load i64*, i64** @to_lower_org, align 8
  %429 = load i64, i64* %6, align 8
  %430 = getelementptr inbounds i64, i64* %428, i64 %429
  store i64 %427, i64* %430, align 8
  br label %431

431:                                              ; preds = %443, %422
  %432 = load i8*, i8** %5, align 8
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %431
  %437 = load i8*, i8** %5, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = icmp ne i32 %439, 59
  br label %441

441:                                              ; preds = %436, %431
  %442 = phi i1 [ false, %431 ], [ %440, %436 ]
  br i1 %442, label %443, label %446

443:                                              ; preds = %441
  %444 = load i8*, i8** %5, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %5, align 8
  br label %431

446:                                              ; preds = %441
  br label %450

447:                                              ; preds = %417
  %448 = load i8*, i8** %5, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %5, align 8
  br label %450

450:                                              ; preds = %447, %446
  br label %451

451:                                              ; preds = %463, %450
  %452 = load i8*, i8** %5, align 8
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %451
  %457 = load i8*, i8** %5, align 8
  %458 = load i8, i8* %457, align 1
  %459 = sext i8 %458 to i32
  %460 = icmp ne i32 %459, 59
  br label %461

461:                                              ; preds = %456, %451
  %462 = phi i1 [ false, %451 ], [ %460, %456 ]
  br i1 %462, label %463, label %466

463:                                              ; preds = %461
  %464 = load i8*, i8** %5, align 8
  %465 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %465, i8** %5, align 8
  br label %451

466:                                              ; preds = %461
  %467 = load i8*, i8** %5, align 8
  %468 = load i8, i8* %467, align 1
  %469 = icmp ne i8 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %466
  br label %35

471:                                              ; preds = %466
  %472 = load i8*, i8** %5, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %5, align 8
  br label %35

474:                                              ; preds = %35
  %475 = load i32*, i32** %8, align 8
  %476 = call i32 @fclose(i32* %475)
  %477 = load i32, i32* @TRUE, align 4
  store i32 %477, i32* %2, align 4
  br label %478

478:                                              ; preds = %474, %30, %22, %14
  %479 = load i32, i32* %2, align 4
  ret i32 %479
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
