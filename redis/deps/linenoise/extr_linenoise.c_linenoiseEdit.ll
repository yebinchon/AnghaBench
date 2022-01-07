; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseEdit.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i32, i32, i8*, i64, i8*, i64, i64, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@completionCallback = common dso_local global i32* null, align 8
@history_len = common dso_local global i64 0, align 8
@history = common dso_local global i32* null, align 8
@mlmode = common dso_local global i32 0, align 4
@hintsCallback = common dso_local global i32* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_PREV = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i8*)* @linenoiseEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseEdit(i32 %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.linenoiseState, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 3
  store i64 %24, i64* %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 8
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @getColumns(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 11
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = call i32 @linenoiseHistoryAdd(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write(i32 %48, i8* %49, i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %308

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %55, %84, %307
  %57 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @read(i32 %58, i8* %13, i32 1)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %6, align 4
  br label %308

65:                                               ; preds = %56
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32*, i32** @completionCallback, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = call signext i8 @completeLine(%struct.linenoiseState* %12)
  store i8 %73, i8* %13, align 1
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %6, align 4
  br label %308

80:                                               ; preds = %72
  %81 = load i8, i8* %13, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %56

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %69, %65
  %87 = load i8, i8* %13, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %276 [
    i32 129, label %89
    i32 140, label %111
    i32 143, label %113
    i32 8, label %113
    i32 139, label %115
    i32 132, label %130
    i32 141, label %179
    i32 137, label %181
    i32 133, label %183
    i32 134, label %186
    i32 128, label %189
    i32 131, label %282
    i32 136, label %288
    i32 142, label %298
    i32 138, label %300
    i32 135, label %302
    i32 130, label %305
  ]

89:                                               ; preds = %86
  %90 = load i64, i64* @history_len, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* @history_len, align 8
  %92 = load i32*, i32** @history, align 8
  %93 = load i64, i64* @history_len, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @free(i32 %95)
  %97 = load i32, i32* @mlmode, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i32*, i32** @hintsCallback, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** @hintsCallback, align 8
  store i32* %105, i32** %16, align 8
  store i32* null, i32** @hintsCallback, align 8
  %106 = call i32 @refreshLine(%struct.linenoiseState* %12)
  %107 = load i32*, i32** %16, align 8
  store i32* %107, i32** @hintsCallback, align 8
  br label %108

108:                                              ; preds = %104, %101
  %109 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %6, align 4
  br label %308

111:                                              ; preds = %86
  %112 = load i32, i32* @EAGAIN, align 4
  store i32 %112, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %308

113:                                              ; preds = %86, %86
  %114 = call i32 @linenoiseEditBackspace(%struct.linenoiseState* %12)
  br label %307

115:                                              ; preds = %86
  %116 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %12)
  br label %129

121:                                              ; preds = %115
  %122 = load i64, i64* @history_len, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* @history_len, align 8
  %124 = load i32*, i32** @history, align 8
  %125 = load i64, i64* @history_len, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @free(i32 %127)
  store i32 -1, i32* %6, align 4
  br label %308

129:                                              ; preds = %119
  br label %307

130:                                              ; preds = %86
  %131 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %178

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %134
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 1
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  store i32 %148, i32* %17, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, 1
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 %153, i8* %158, align 1
  %159 = load i32, i32* %17, align 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 %160, i8* %164, align 1
  %165 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = icmp ne i64 %166, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %141
  %173 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %172, %141
  %177 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %178

178:                                              ; preds = %176, %134, %130
  br label %307

179:                                              ; preds = %86
  %180 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %12)
  br label %307

181:                                              ; preds = %86
  %182 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %12)
  br label %307

183:                                              ; preds = %86
  %184 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %185 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %184)
  br label %307

186:                                              ; preds = %86
  %187 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %188 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %187)
  br label %307

189:                                              ; preds = %86
  %190 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %193 = call i32 @read(i32 %191, i8* %192, i32 1)
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %307

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = call i32 @read(i32 %198, i8* %200, i32 1)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %307

204:                                              ; preds = %196
  %205 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 91
  br i1 %208, label %209, label %260

209:                                              ; preds = %204
  %210 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp sge i32 %212, 48
  br i1 %213, label %214, label %240

214:                                              ; preds = %209
  %215 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp sle i32 %217, 57
  br i1 %218, label %219, label %240

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = call i32 @read(i32 %221, i8* %223, i32 1)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %307

227:                                              ; preds = %219
  %228 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 126
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  switch i32 %235, label %238 [
    i32 51, label %236
  ]

236:                                              ; preds = %232
  %237 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %12)
  br label %238

238:                                              ; preds = %232, %236
  br label %239

239:                                              ; preds = %238, %227
  br label %259

240:                                              ; preds = %214, %209
  %241 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  switch i32 %243, label %258 [
    i32 65, label %244
    i32 66, label %247
    i32 67, label %250
    i32 68, label %252
    i32 72, label %254
    i32 70, label %256
  ]

244:                                              ; preds = %240
  %245 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %246 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %245)
  br label %258

247:                                              ; preds = %240
  %248 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %249 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %248)
  br label %258

250:                                              ; preds = %240
  %251 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %12)
  br label %258

252:                                              ; preds = %240
  %253 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %12)
  br label %258

254:                                              ; preds = %240
  %255 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %258

256:                                              ; preds = %240
  %257 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %258

258:                                              ; preds = %240, %256, %254, %252, %250, %247, %244
  br label %259

259:                                              ; preds = %258, %239
  br label %275

260:                                              ; preds = %204
  %261 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 79
  br i1 %264, label %265, label %274

265:                                              ; preds = %260
  %266 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  switch i32 %268, label %273 [
    i32 72, label %269
    i32 70, label %271
  ]

269:                                              ; preds = %265
  %270 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %273

271:                                              ; preds = %265
  %272 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %273

273:                                              ; preds = %265, %271, %269
  br label %274

274:                                              ; preds = %273, %260
  br label %275

275:                                              ; preds = %274, %259
  br label %307

276:                                              ; preds = %86
  %277 = load i8, i8* %13, align 1
  %278 = call i32 @linenoiseEditInsert(%struct.linenoiseState* %12, i8 signext %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i32 -1, i32* %6, align 4
  br label %308

281:                                              ; preds = %276
  br label %307

282:                                              ; preds = %86
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  store i8 0, i8* %284, align 1
  %285 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 0, i32* %285, align 8
  %286 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  store i64 0, i64* %286, align 8
  %287 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %307

288:                                              ; preds = %86
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  store i8 0, i8* %292, align 1
  %293 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 %295, i32* %296, align 8
  %297 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %307

298:                                              ; preds = %86
  %299 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %307

300:                                              ; preds = %86
  %301 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %307

302:                                              ; preds = %86
  %303 = call i32 (...) @linenoiseClearScreen()
  %304 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %307

305:                                              ; preds = %86
  %306 = call i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState* %12)
  br label %307

307:                                              ; preds = %305, %302, %300, %298, %288, %282, %281, %275, %226, %203, %195, %186, %183, %181, %179, %178, %129, %113
  br label %56

308:                                              ; preds = %280, %121, %111, %108, %77, %62, %54
  %309 = load i32, i32* %6, align 4
  ret i32 %309
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @getColumns(i32, i32) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local signext i8 @completeLine(%struct.linenoiseState*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @linenoiseEditMoveEnd(%struct.linenoiseState*) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditBackspace(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditDelete(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveLeft(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveRight(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditHistoryNext(%struct.linenoiseState*, i32) #1

declare dso_local i32 @linenoiseEditMoveHome(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditInsert(%struct.linenoiseState*, i8 signext) #1

declare dso_local i32 @linenoiseClearScreen(...) #1

declare dso_local i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
