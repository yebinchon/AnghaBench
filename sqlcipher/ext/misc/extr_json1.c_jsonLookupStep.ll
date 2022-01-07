; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonLookupStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonLookupStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }

@JSON_OBJECT = common dso_local global i64 0, align 8
@JNODE_APPEND = common dso_local global i32 0, align 4
@JSON_STRING = common dso_local global i64 0, align 8
@JNODE_RAW = common dso_local global i32 0, align 4
@JSON_ARRAY = common dso_local global i64 0, align 8
@JNODE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i64, i8*, i32*, i8**)* @jsonLookupStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @jsonLookupStep(%struct.TYPE_12__* %0, i64 %1, i8* %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %25
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %16, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %6, align 8
  br label %424

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %245

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @JSON_OBJECT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

47:                                               ; preds = %40
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %55, label %93

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %15, align 8
  store i64 1, i64* %12, align 8
  br label %58

58:                                               ; preds = %75, %55
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 34
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i1 [ false, %58 ], [ %71, %65 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %58

78:                                               ; preds = %72
  %79 = load i64, i64* %12, align 8
  %80 = sub i64 %79, 1
  store i64 %80, i64* %14, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %92

89:                                               ; preds = %78
  %90 = load i8*, i8** %9, align 8
  %91 = load i8**, i8*** %11, align 8
  store i8* %90, i8** %91, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

92:                                               ; preds = %86
  br label %124

93:                                               ; preds = %47
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %15, align 8
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %119, %93
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 46
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 91
  br label %116

116:                                              ; preds = %109, %102, %95
  %117 = phi i1 [ false, %102 ], [ false, %95 ], [ %115, %109 ]
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %95

122:                                              ; preds = %116
  %123 = load i64, i64* %12, align 8
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %122, %92
  %125 = load i64, i64* %14, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %9, align 8
  %129 = load i8**, i8*** %11, align 8
  store i8* %128, i8** %129, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

130:                                              ; preds = %124
  store i64 1, i64* %13, align 8
  br label %131

131:                                              ; preds = %175, %130
  br label %132

132:                                              ; preds = %158, %131
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ule i64 %133, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %140
  %142 = load i8*, i8** %15, align 8
  %143 = load i64, i64* %14, align 8
  %144 = call i64 @jsonLabelCompare(%struct.TYPE_13__* %141, i8* %142, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %148, %149
  %151 = add i64 %150, 1
  %152 = load i8*, i8** %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i32*, i32** %10, align 8
  %156 = load i8**, i8*** %11, align 8
  %157 = call %struct.TYPE_13__* @jsonLookupStep(%struct.TYPE_12__* %147, i64 %151, i8* %154, i32* %155, i8** %156)
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %6, align 8
  br label %424

158:                                              ; preds = %138
  %159 = load i64, i64* %13, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %13, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i64 %162
  %164 = call i64 @jsonNodeSize(%struct.TYPE_13__* %163)
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %13, align 8
  br label %132

167:                                              ; preds = %132
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @JNODE_APPEND, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %187

175:                                              ; preds = %167
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %8, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %185
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %16, align 8
  store i64 1, i64* %13, align 8
  br label %131

187:                                              ; preds = %174
  %188 = load i32*, i32** %10, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %244

190:                                              ; preds = %187
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = load i64, i64* @JSON_OBJECT, align 8
  %193 = call i64 @jsonParseAddNode(%struct.TYPE_12__* %191, i64 %192, i32 2, i8* null)
  store i64 %193, i64* %17, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %195 = load i64, i64* @JSON_STRING, align 8
  %196 = load i64, i64* %12, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %9, align 8
  %199 = call i64 @jsonParseAddNode(%struct.TYPE_12__* %194, i64 %195, i32 %197, i8* %198)
  store i64 %199, i64* %18, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  store i8* %202, i8** %9, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i8**, i8*** %11, align 8
  %207 = call %struct.TYPE_13__* @jsonLookupAppend(%struct.TYPE_12__* %203, i8* %204, i32* %205, i8** %206)
  store %struct.TYPE_13__* %207, %struct.TYPE_13__** %19, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %190
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

213:                                              ; preds = %190
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %215 = icmp ne %struct.TYPE_13__* %214, null
  br i1 %215, label %216, label %242

216:                                              ; preds = %213
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = load i64, i64* %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 %220
  store %struct.TYPE_13__* %221, %struct.TYPE_13__** %16, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %8, align 8
  %224 = sub i64 %222, %223
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  store i64 %224, i64* %227, align 8
  %228 = load i32, i32* @JNODE_APPEND, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load i32, i32* @JNODE_RAW, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = load i64, i64* %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %233
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %216, %213
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %243, %struct.TYPE_13__** %6, align 8
  br label %424

244:                                              ; preds = %187
  br label %423

245:                                              ; preds = %34
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 91
  br i1 %250, label %251, label %419

251:                                              ; preds = %245
  %252 = load i8*, i8** %9, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i8, i8* %253, align 1
  %255 = call i64 @safe_isdigit(i8 signext %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %419

257:                                              ; preds = %251
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @JSON_ARRAY, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

264:                                              ; preds = %257
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  br label %265

265:                                              ; preds = %272, %264
  %266 = load i8*, i8** %9, align 8
  %267 = load i64, i64* %13, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = call i64 @safe_isdigit(i8 signext %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %265
  %273 = load i64, i64* %12, align 8
  %274 = mul i64 %273, 10
  %275 = load i8*, i8** %9, align 8
  %276 = load i64, i64* %13, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i64
  %280 = add i64 %274, %279
  %281 = sub i64 %280, 48
  store i64 %281, i64* %12, align 8
  %282 = load i64, i64* %13, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %13, align 8
  br label %265

284:                                              ; preds = %265
  %285 = load i8*, i8** %9, align 8
  %286 = load i64, i64* %13, align 8
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 93
  br i1 %290, label %291, label %294

291:                                              ; preds = %284
  %292 = load i8*, i8** %9, align 8
  %293 = load i8**, i8*** %11, align 8
  store i8* %292, i8** %293, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

294:                                              ; preds = %284
  %295 = load i64, i64* %13, align 8
  %296 = add i64 %295, 1
  %297 = load i8*, i8** %9, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 %296
  store i8* %298, i8** %9, align 8
  store i64 1, i64* %13, align 8
  br label %299

299:                                              ; preds = %349, %294
  br label %300

300:                                              ; preds = %334, %299
  %301 = load i64, i64* %13, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ule i64 %301, %304
  br i1 %305, label %306, label %320

306:                                              ; preds = %300
  %307 = load i64, i64* %12, align 8
  %308 = icmp ugt i64 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %306
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %311 = load i64, i64* %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @JNODE_REMOVE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br label %318

318:                                              ; preds = %309, %306
  %319 = phi i1 [ true, %306 ], [ %317, %309 ]
  br label %320

320:                                              ; preds = %318, %300
  %321 = phi i1 [ false, %300 ], [ %319, %318 ]
  br i1 %321, label %322, label %341

322:                                              ; preds = %320
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %324 = load i64, i64* %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @JNODE_REMOVE, align 4
  %329 = and i32 %327, %328
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %322
  %332 = load i64, i64* %12, align 8
  %333 = add i64 %332, -1
  store i64 %333, i64* %12, align 8
  br label %334

334:                                              ; preds = %331, %322
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %336 = load i64, i64* %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i64 %336
  %338 = call i64 @jsonNodeSize(%struct.TYPE_13__* %337)
  %339 = load i64, i64* %13, align 8
  %340 = add i64 %339, %338
  store i64 %340, i64* %13, align 8
  br label %300

341:                                              ; preds = %320
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @JNODE_APPEND, align 4
  %346 = and i32 %344, %345
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  br label %361

349:                                              ; preds = %341
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* %8, align 8
  %355 = add i64 %354, %353
  store i64 %355, i64* %8, align 8
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %357, align 8
  %359 = load i64, i64* %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i64 %359
  store %struct.TYPE_13__* %360, %struct.TYPE_13__** %16, align 8
  store i64 1, i64* %13, align 8
  br label %299

361:                                              ; preds = %348
  %362 = load i64, i64* %13, align 8
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ule i64 %362, %365
  br i1 %366, label %367, label %376

367:                                              ; preds = %361
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %369 = load i64, i64* %8, align 8
  %370 = load i64, i64* %13, align 8
  %371 = add i64 %369, %370
  %372 = load i8*, i8** %9, align 8
  %373 = load i32*, i32** %10, align 8
  %374 = load i8**, i8*** %11, align 8
  %375 = call %struct.TYPE_13__* @jsonLookupStep(%struct.TYPE_12__* %368, i64 %371, i8* %372, i32* %373, i8** %374)
  store %struct.TYPE_13__* %375, %struct.TYPE_13__** %6, align 8
  br label %424

376:                                              ; preds = %361
  %377 = load i64, i64* %12, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %418

379:                                              ; preds = %376
  %380 = load i32*, i32** %10, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %382, label %418

382:                                              ; preds = %379
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = load i64, i64* @JSON_ARRAY, align 8
  %385 = call i64 @jsonParseAddNode(%struct.TYPE_12__* %383, i64 %384, i32 1, i8* null)
  store i64 %385, i64* %20, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %387 = load i8*, i8** %9, align 8
  %388 = load i32*, i32** %10, align 8
  %389 = load i8**, i8*** %11, align 8
  %390 = call %struct.TYPE_13__* @jsonLookupAppend(%struct.TYPE_12__* %386, i8* %387, i32* %388, i8** %389)
  store %struct.TYPE_13__* %390, %struct.TYPE_13__** %21, align 8
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %382
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

396:                                              ; preds = %382
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %398 = icmp ne %struct.TYPE_13__* %397, null
  br i1 %398, label %399, label %416

399:                                              ; preds = %396
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %401, align 8
  %403 = load i64, i64* %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i64 %403
  store %struct.TYPE_13__* %404, %struct.TYPE_13__** %16, align 8
  %405 = load i64, i64* %20, align 8
  %406 = load i64, i64* %8, align 8
  %407 = sub i64 %405, %406
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  store i64 %407, i64* %410, align 8
  %411 = load i32, i32* @JNODE_APPEND, align 4
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %399, %396
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %417, %struct.TYPE_13__** %6, align 8
  br label %424

418:                                              ; preds = %379, %376
  br label %422

419:                                              ; preds = %251, %245
  %420 = load i8*, i8** %9, align 8
  %421 = load i8**, i8*** %11, align 8
  store i8* %420, i8** %421, align 8
  br label %422

422:                                              ; preds = %419, %418
  br label %423

423:                                              ; preds = %422, %244
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %424

424:                                              ; preds = %423, %416, %395, %367, %291, %263, %242, %212, %146, %127, %89, %46, %32
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %425
}

declare dso_local i64 @jsonLabelCompare(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i64 @jsonNodeSize(%struct.TYPE_13__*) #1

declare dso_local i64 @jsonParseAddNode(%struct.TYPE_12__*, i64, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @jsonLookupAppend(%struct.TYPE_12__*, i8*, i32*, i8**) #1

declare dso_local i64 @safe_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
