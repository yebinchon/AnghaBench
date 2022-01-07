; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetText.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.snippetMatch* }
%struct.snippetMatch = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SNIPPET_IGNORE = common dso_local global i8* null, align 8
@SNIPPET_DESIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*, i8*)* @snippetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snippetText(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snippetMatch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sqlite3_free(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.snippetMatch*, %struct.snippetMatch** %34, align 8
  store %struct.snippetMatch* %35, %struct.snippetMatch** %11, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = call i32 @initStringBuffer(i32* %14)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %53, %4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i8*, i8** @SNIPPET_IGNORE, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %48, i64 %50
  %52 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %41

56:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %92, %56
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %70, i64 %72
  %74 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i64, i64* @SNIPPET_DESIRED, align 8
  %80 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %80, i64 %82
  %84 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %83, i32 0, i32 0
  store i64 %79, i64* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %91

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %65

91:                                               ; preds = %78, %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %57

95:                                               ; preds = %57
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %386, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 0
  br label %103

103:                                              ; preds = %100, %96
  %104 = phi i1 [ false, %96 ], [ %102, %100 ]
  br i1 %104, label %105, label %389

105:                                              ; preds = %103
  %106 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %106, i64 %108
  %110 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SNIPPET_DESIRED, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %386

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %13, align 4
  %118 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %118, i64 %120
  %122 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %17, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i64 @sqlite3_column_text(i32 %126, i32 %128)
  %130 = inttoptr i64 %129 to i8*
  store i8* %130, i8** %19, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i32 @sqlite3_column_bytes(i32 %133, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %137, i64 %139
  %141 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 40
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i8*, i8** %19, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @wordBoundary(i32 %144, i8* %145, i32 %146, %struct.snippetMatch* %147, i32 %148, i32 %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp sle i32 %151, 10
  br i1 %152, label %153, label %154

153:                                              ; preds = %115
  store i32 0, i32* %20, align 4
  br label %154

154:                                              ; preds = %153, %115
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 20
  %162 = icmp sle i32 %159, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %20, align 4
  br label %165

165:                                              ; preds = %163, %158, %154
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %15, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169, %165
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172, %169
  %177 = call i32 @trimWhiteSpace(i32* %14)
  %178 = call i32 @appendWhiteSpace(i32* %14)
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @append(i32* %14, i8* %179)
  %181 = call i32 @appendWhiteSpace(i32* %14)
  br label %182

182:                                              ; preds = %176, %172
  %183 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %183, i64 %185
  %187 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %189, i64 %191
  %193 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %188, %194
  %196 = add nsw i32 %195, 40
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i8*, i8** %19, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @wordBoundary(i32 %197, i8* %198, i32 %199, %struct.snippetMatch* %200, i32 %201, i32 %202)
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %18, align 4
  %206 = sub nsw i32 %205, 10
  %207 = icmp sge i32 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %182
  %209 = load i32, i32* %18, align 4
  store i32 %209, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %211

210:                                              ; preds = %182
  store i32 1, i32* %22, align 4
  br label %211

211:                                              ; preds = %210, %208
  br label %212

212:                                              ; preds = %227, %211
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %218 = load i32, i32* %23, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %217, i64 %219
  %221 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp slt i32 %222, %223
  br label %225

225:                                              ; preds = %216, %212
  %226 = phi i1 [ false, %212 ], [ %224, %216 ]
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = load i32, i32* %23, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %23, align 4
  br label %212

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %382, %230
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %383

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %260, %235
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %258

240:                                              ; preds = %236
  %241 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %241, i64 %243
  %245 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %20, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %240
  %250 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %250, i64 %252
  %254 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp sle i32 %255, %256
  br label %258

258:                                              ; preds = %249, %240, %236
  %259 = phi i1 [ false, %240 ], [ false, %236 ], [ %257, %249 ]
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %23, align 4
  br label %236

263:                                              ; preds = %258
  %264 = load i32, i32* %23, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %372

267:                                              ; preds = %263
  %268 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %269 = load i32, i32* %23, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %268, i64 %270
  %272 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %21, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %372

276:                                              ; preds = %267
  %277 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %278 = load i32, i32* %23, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %277, i64 %279
  %281 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %372

285:                                              ; preds = %276
  %286 = load i8*, i8** %19, align 8
  %287 = load i32, i32* %20, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %290, i64 %292
  %294 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %20, align 4
  %297 = sub nsw i32 %295, %296
  %298 = call i32 @nappend(i32* %14, i8* %289, i32 %297)
  %299 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %300 = load i32, i32* %23, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %299, i64 %301
  %303 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %20, align 4
  %305 = load i8*, i8** %6, align 8
  %306 = call i32 @append(i32* %14, i8* %305)
  %307 = load i8*, i8** %19, align 8
  %308 = load i32, i32* %20, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %312 = load i32, i32* %23, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %311, i64 %313
  %315 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @nappend(i32* %14, i8* %310, i32 %316)
  %318 = load i8*, i8** %7, align 8
  %319 = call i32 @append(i32* %14, i8* %318)
  %320 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %321 = load i32, i32* %23, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %320, i64 %322
  %324 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %20, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %23, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %330

330:                                              ; preds = %368, %285
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* %12, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %371

334:                                              ; preds = %330
  %335 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %336 = load i32, i32* %10, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %335, i64 %337
  %339 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %342 = load i32, i32* %23, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %341, i64 %343
  %345 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %340, %346
  br i1 %347, label %348, label %367

348:                                              ; preds = %334
  %349 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %349, i64 %351
  %353 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @SNIPPET_DESIRED, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %348
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %13, align 4
  %360 = load i8*, i8** @SNIPPET_IGNORE, align 8
  %361 = ptrtoint i8* %360 to i64
  %362 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %362, i64 %364
  %366 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %365, i32 0, i32 0
  store i64 %361, i64* %366, align 8
  br label %367

367:                                              ; preds = %357, %348, %334
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %10, align 4
  br label %330

371:                                              ; preds = %330
  br label %382

372:                                              ; preds = %276, %267, %263
  %373 = load i8*, i8** %19, align 8
  %374 = load i32, i32* %20, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = load i32, i32* %21, align 4
  %378 = load i32, i32* %20, align 4
  %379 = sub nsw i32 %377, %378
  %380 = call i32 @nappend(i32* %14, i8* %376, i32 %379)
  %381 = load i32, i32* %21, align 4
  store i32 %381, i32* %20, align 4
  br label %382

382:                                              ; preds = %372, %371
  br label %231

383:                                              ; preds = %231
  %384 = load i32, i32* %17, align 4
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %21, align 4
  store i32 %385, i32* %16, align 4
  br label %386

386:                                              ; preds = %383, %114
  %387 = load i32, i32* %9, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %9, align 4
  br label %96

389:                                              ; preds = %103
  %390 = call i32 @trimWhiteSpace(i32* %14)
  %391 = load i32, i32* %22, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %389
  %394 = call i32 @appendWhiteSpace(i32* %14)
  %395 = load i8*, i8** %8, align 8
  %396 = call i32 @append(i32* %14, i8* %395)
  br label %397

397:                                              ; preds = %393, %389
  %398 = call i32 @stringBufferData(i32* %14)
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 2
  store i32 %398, i32* %401, align 8
  %402 = call i32 @stringBufferLength(i32* %14)
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  store i32 %402, i32* %405, align 4
  ret void
}

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @initStringBuffer(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32, i32) #1

declare dso_local i32 @wordBoundary(i32, i8*, i32, %struct.snippetMatch*, i32, i32) #1

declare dso_local i32 @trimWhiteSpace(i32*) #1

declare dso_local i32 @appendWhiteSpace(i32*) #1

declare dso_local i32 @append(i32*, i8*) #1

declare dso_local i32 @nappend(i32*, i8*, i32) #1

declare dso_local i32 @stringBufferData(i32*) #1

declare dso_local i32 @stringBufferLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
