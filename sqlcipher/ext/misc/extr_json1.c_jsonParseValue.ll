; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonParseValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonParseValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@JSON_OBJECT = common dso_local global i64 0, align 8
@JSON_MAX_DEPTH = common dso_local global i64 0, align 8
@JSON_STRING = common dso_local global i64 0, align 8
@JNODE_LABEL = common dso_local global i32 0, align 4
@JSON_ARRAY = common dso_local global i64 0, align 8
@JNODE_ESCAPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@JSON_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@JSON_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@JSON_FALSE = common dso_local global i64 0, align 8
@JSON_REAL = common dso_local global i64 0, align 8
@JSON_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @jsonParseValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonParseValue(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %25, %2
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @safe_isspace(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %18

28:                                               ; preds = %18
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 123
  br i1 %34, label %35, label %199

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i64, i64* @JSON_OBJECT, align 8
  %38 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %36, i64 %37, i64 0, i8* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %680

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %178, %42
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @safe_isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %46

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* @JSON_MAX_DEPTH, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %680

64:                                               ; preds = %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @jsonParseValue(%struct.TYPE_5__* %65, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, -2
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 1
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %680

89:                                               ; preds = %77, %70
  store i32 -1, i32* %3, align 4
  br label %680

90:                                               ; preds = %64
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %3, align 4
  br label %680

96:                                               ; preds = %90
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %103
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %10, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @JSON_STRING, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %680

111:                                              ; preds = %96
  %112 = load i32, i32* @JNODE_LABEL, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %7, align 8
  br label %119

119:                                              ; preds = %126, %111
  %120 = load i8*, i8** %11, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @safe_isspace(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %7, align 8
  br label %119

129:                                              ; preds = %119
  %130 = load i8*, i8** %11, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 58
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 -1, i32* %3, align 4
  br label %680

137:                                              ; preds = %129
  %138 = load i64, i64* %7, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %7, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @jsonParseValue(%struct.TYPE_5__* %140, i64 %141)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %144, align 8
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  store i32 -1, i32* %3, align 4
  br label %680

150:                                              ; preds = %137
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %7, align 8
  br label %153

153:                                              ; preds = %160, %150
  %154 = load i8*, i8** %11, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @safe_isspace(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %7, align 8
  br label %153

163:                                              ; preds = %153
  %164 = load i8*, i8** %11, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  store i8 %167, i8* %6, align 1
  %168 = load i8, i8* %6, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 44
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %178

172:                                              ; preds = %163
  %173 = load i8, i8* %6, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 125
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 -1, i32* %3, align 4
  br label %680

177:                                              ; preds = %172
  br label %181

178:                                              ; preds = %171
  %179 = load i64, i64* %7, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %7, align 8
  br label %45

181:                                              ; preds = %177
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = sub i64 %184, %186
  %188 = sub i64 %187, 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  store i64 %188, i64* %195, align 8
  %196 = load i64, i64* %7, align 8
  %197 = add i64 %196, 1
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %3, align 4
  br label %680

199:                                              ; preds = %28
  %200 = load i8, i8* %6, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 91
  br i1 %202, label %203, label %307

203:                                              ; preds = %199
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %205 = load i64, i64* @JSON_ARRAY, align 8
  %206 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %204, i64 %205, i64 0, i8* null)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 -1, i32* %3, align 4
  br label %680

210:                                              ; preds = %203
  %211 = load i64, i64* %5, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %213

213:                                              ; preds = %286, %210
  br label %214

214:                                              ; preds = %221, %213
  %215 = load i8*, i8** %11, align 8
  %216 = load i64, i64* %7, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @safe_isspace(i8 signext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i64, i64* %7, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %7, align 8
  br label %214

224:                                              ; preds = %214
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  %229 = load i64, i64* @JSON_MAX_DEPTH, align 8
  %230 = icmp sgt i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i32 -1, i32* %3, align 4
  br label %680

232:                                              ; preds = %224
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @jsonParseValue(%struct.TYPE_5__* %233, i64 %234)
  store i32 %235, i32* %9, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, -1
  store i64 %239, i64* %237, align 8
  %240 = load i32, i32* %9, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %232
  %243 = load i32, i32* %9, align 4
  %244 = icmp eq i32 %243, -3
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = add i64 %250, 1
  %252 = icmp eq i64 %248, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load i64, i64* %7, align 8
  %255 = add i64 %254, 1
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %3, align 4
  br label %680

257:                                              ; preds = %245, %242
  store i32 -1, i32* %3, align 4
  br label %680

258:                                              ; preds = %232
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %7, align 8
  br label %261

261:                                              ; preds = %268, %258
  %262 = load i8*, i8** %11, align 8
  %263 = load i64, i64* %7, align 8
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = call i64 @safe_isspace(i8 signext %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %261
  %269 = load i64, i64* %7, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %7, align 8
  br label %261

271:                                              ; preds = %261
  %272 = load i8*, i8** %11, align 8
  %273 = load i64, i64* %7, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  %275 = load i8, i8* %274, align 1
  store i8 %275, i8* %6, align 1
  %276 = load i8, i8* %6, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 44
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %286

280:                                              ; preds = %271
  %281 = load i8, i8* %6, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 93
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  store i32 -1, i32* %3, align 4
  br label %680

285:                                              ; preds = %280
  br label %289

286:                                              ; preds = %279
  %287 = load i64, i64* %7, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %7, align 8
  br label %213

289:                                              ; preds = %285
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 %292, %294
  %296 = sub i64 %295, 1
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 2
  store i64 %296, i64* %303, align 8
  %304 = load i64, i64* %7, align 8
  %305 = add i64 %304, 1
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %3, align 4
  br label %680

307:                                              ; preds = %199
  %308 = load i8, i8* %6, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 34
  br i1 %310, label %311, label %419

311:                                              ; preds = %307
  store i32 0, i32* %12, align 4
  %312 = load i64, i64* %5, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %7, align 8
  br label %314

314:                                              ; preds = %386, %311
  %315 = load i8*, i8** %11, align 8
  %316 = load i64, i64* %7, align 8
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load i8, i8* %317, align 1
  store i8 %318, i8* %6, align 1
  %319 = load i8, i8* %6, align 1
  %320 = sext i8 %319 to i32
  %321 = and i32 %320, -32
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %314
  store i32 -1, i32* %3, align 4
  br label %680

324:                                              ; preds = %314
  %325 = load i8, i8* %6, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 92
  br i1 %327, label %328, label %380

328:                                              ; preds = %324
  %329 = load i8*, i8** %11, align 8
  %330 = load i64, i64* %7, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %7, align 8
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i8, i8* %332, align 1
  store i8 %333, i8* %6, align 1
  %334 = load i8, i8* %6, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 34
  br i1 %336, label %376, label %337

337:                                              ; preds = %328
  %338 = load i8, i8* %6, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 92
  br i1 %340, label %376, label %341

341:                                              ; preds = %337
  %342 = load i8, i8* %6, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 47
  br i1 %344, label %376, label %345

345:                                              ; preds = %341
  %346 = load i8, i8* %6, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 98
  br i1 %348, label %376, label %349

349:                                              ; preds = %345
  %350 = load i8, i8* %6, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 102
  br i1 %352, label %376, label %353

353:                                              ; preds = %349
  %354 = load i8, i8* %6, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 110
  br i1 %356, label %376, label %357

357:                                              ; preds = %353
  %358 = load i8, i8* %6, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 114
  br i1 %360, label %376, label %361

361:                                              ; preds = %357
  %362 = load i8, i8* %6, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 116
  br i1 %364, label %376, label %365

365:                                              ; preds = %361
  %366 = load i8, i8* %6, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 117
  br i1 %368, label %369, label %378

369:                                              ; preds = %365
  %370 = load i8*, i8** %11, align 8
  %371 = load i64, i64* %7, align 8
  %372 = getelementptr inbounds i8, i8* %370, i64 %371
  %373 = getelementptr inbounds i8, i8* %372, i64 1
  %374 = call i64 @jsonIs4Hex(i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %369, %361, %357, %353, %349, %345, %341, %337, %328
  %377 = load i32, i32* @JNODE_ESCAPE, align 4
  store i32 %377, i32* %12, align 4
  br label %379

378:                                              ; preds = %369, %365
  store i32 -1, i32* %3, align 4
  br label %680

379:                                              ; preds = %376
  br label %386

380:                                              ; preds = %324
  %381 = load i8, i8* %6, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp eq i32 %382, 34
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %389

385:                                              ; preds = %380
  br label %386

386:                                              ; preds = %385, %379
  %387 = load i64, i64* %7, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %7, align 8
  br label %314

389:                                              ; preds = %384
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %391 = load i64, i64* @JSON_STRING, align 8
  %392 = load i64, i64* %7, align 8
  %393 = add i64 %392, 1
  %394 = load i64, i64* %5, align 8
  %395 = sub i64 %393, %394
  %396 = load i8*, i8** %11, align 8
  %397 = load i64, i64* %5, align 8
  %398 = getelementptr inbounds i8, i8* %396, i64 %397
  %399 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %390, i64 %391, i64 %395, i8* %398)
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 4
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %415, label %404

404:                                              ; preds = %389
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 3
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %407, align 8
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = sub i64 %411, 1
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 1
  store i32 %405, i32* %414, align 8
  br label %415

415:                                              ; preds = %404, %389
  %416 = load i64, i64* %7, align 8
  %417 = add i64 %416, 1
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %3, align 4
  br label %680

419:                                              ; preds = %307
  %420 = load i8, i8* %6, align 1
  %421 = sext i8 %420 to i32
  %422 = icmp eq i32 %421, 110
  br i1 %422, label %423, label %444

423:                                              ; preds = %419
  %424 = load i8*, i8** %11, align 8
  %425 = load i64, i64* %5, align 8
  %426 = getelementptr inbounds i8, i8* %424, i64 %425
  %427 = call i64 @strncmp(i8* %426, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %444

429:                                              ; preds = %423
  %430 = load i8*, i8** %11, align 8
  %431 = load i64, i64* %5, align 8
  %432 = add i64 %431, 4
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = call i32 @safe_isalnum(i8 signext %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %444, label %437

437:                                              ; preds = %429
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %439 = load i64, i64* @JSON_NULL, align 8
  %440 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %438, i64 %439, i64 0, i8* null)
  %441 = load i64, i64* %5, align 8
  %442 = add i64 %441, 4
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %3, align 4
  br label %680

444:                                              ; preds = %429, %423, %419
  %445 = load i8, i8* %6, align 1
  %446 = sext i8 %445 to i32
  %447 = icmp eq i32 %446, 116
  br i1 %447, label %448, label %469

448:                                              ; preds = %444
  %449 = load i8*, i8** %11, align 8
  %450 = load i64, i64* %5, align 8
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  %452 = call i64 @strncmp(i8* %451, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %469

454:                                              ; preds = %448
  %455 = load i8*, i8** %11, align 8
  %456 = load i64, i64* %5, align 8
  %457 = add i64 %456, 4
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  %459 = load i8, i8* %458, align 1
  %460 = call i32 @safe_isalnum(i8 signext %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %469, label %462

462:                                              ; preds = %454
  %463 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %464 = load i64, i64* @JSON_TRUE, align 8
  %465 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %463, i64 %464, i64 0, i8* null)
  %466 = load i64, i64* %5, align 8
  %467 = add i64 %466, 4
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* %3, align 4
  br label %680

469:                                              ; preds = %454, %448, %444
  %470 = load i8, i8* %6, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp eq i32 %471, 102
  br i1 %472, label %473, label %494

473:                                              ; preds = %469
  %474 = load i8*, i8** %11, align 8
  %475 = load i64, i64* %5, align 8
  %476 = getelementptr inbounds i8, i8* %474, i64 %475
  %477 = call i64 @strncmp(i8* %476, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %494

479:                                              ; preds = %473
  %480 = load i8*, i8** %11, align 8
  %481 = load i64, i64* %5, align 8
  %482 = add i64 %481, 5
  %483 = getelementptr inbounds i8, i8* %480, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = call i32 @safe_isalnum(i8 signext %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %494, label %487

487:                                              ; preds = %479
  %488 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %489 = load i64, i64* @JSON_FALSE, align 8
  %490 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %488, i64 %489, i64 0, i8* null)
  %491 = load i64, i64* %5, align 8
  %492 = add i64 %491, 5
  %493 = trunc i64 %492 to i32
  store i32 %493, i32* %3, align 4
  br label %680

494:                                              ; preds = %479, %473, %469
  %495 = load i8, i8* %6, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp eq i32 %496, 45
  br i1 %497, label %506, label %498

498:                                              ; preds = %494
  %499 = load i8, i8* %6, align 1
  %500 = sext i8 %499 to i32
  %501 = icmp sge i32 %500, 48
  br i1 %501, label %502, label %664

502:                                              ; preds = %498
  %503 = load i8, i8* %6, align 1
  %504 = sext i8 %503 to i32
  %505 = icmp sle i32 %504, 57
  br i1 %505, label %506, label %664

506:                                              ; preds = %502, %494
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %507 = call i32 @assert(i32 1)
  %508 = load i8, i8* %6, align 1
  %509 = sext i8 %508 to i32
  %510 = icmp sle i32 %509, 48
  br i1 %510, label %511, label %546

511:                                              ; preds = %506
  %512 = load i8, i8* %6, align 1
  %513 = sext i8 %512 to i32
  %514 = icmp eq i32 %513, 45
  br i1 %514, label %515, label %518

515:                                              ; preds = %511
  %516 = load i64, i64* %5, align 8
  %517 = add i64 %516, 1
  br label %520

518:                                              ; preds = %511
  %519 = load i64, i64* %5, align 8
  br label %520

520:                                              ; preds = %518, %515
  %521 = phi i64 [ %517, %515 ], [ %519, %518 ]
  store i64 %521, i64* %7, align 8
  %522 = load i8*, i8** %11, align 8
  %523 = load i64, i64* %7, align 8
  %524 = getelementptr inbounds i8, i8* %522, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i32
  %527 = icmp eq i32 %526, 48
  br i1 %527, label %528, label %545

528:                                              ; preds = %520
  %529 = load i8*, i8** %11, align 8
  %530 = load i64, i64* %7, align 8
  %531 = add i64 %530, 1
  %532 = getelementptr inbounds i8, i8* %529, i64 %531
  %533 = load i8, i8* %532, align 1
  %534 = sext i8 %533 to i32
  %535 = icmp sge i32 %534, 48
  br i1 %535, label %536, label %545

536:                                              ; preds = %528
  %537 = load i8*, i8** %11, align 8
  %538 = load i64, i64* %7, align 8
  %539 = add i64 %538, 1
  %540 = getelementptr inbounds i8, i8* %537, i64 %539
  %541 = load i8, i8* %540, align 1
  %542 = sext i8 %541 to i32
  %543 = icmp sle i32 %542, 57
  br i1 %543, label %544, label %545

544:                                              ; preds = %536
  store i32 -1, i32* %3, align 4
  br label %680

545:                                              ; preds = %536, %528, %520
  br label %546

546:                                              ; preds = %545, %506
  %547 = load i64, i64* %5, align 8
  %548 = add i64 %547, 1
  store i64 %548, i64* %7, align 8
  br label %549

549:                                              ; preds = %633, %546
  %550 = load i8*, i8** %11, align 8
  %551 = load i64, i64* %7, align 8
  %552 = getelementptr inbounds i8, i8* %550, i64 %551
  %553 = load i8, i8* %552, align 1
  store i8 %553, i8* %6, align 1
  %554 = load i8, i8* %6, align 1
  %555 = sext i8 %554 to i32
  %556 = icmp sge i32 %555, 48
  br i1 %556, label %557, label %562

557:                                              ; preds = %549
  %558 = load i8, i8* %6, align 1
  %559 = sext i8 %558 to i32
  %560 = icmp sle i32 %559, 57
  br i1 %560, label %561, label %562

561:                                              ; preds = %557
  br label %633

562:                                              ; preds = %557, %549
  %563 = load i8, i8* %6, align 1
  %564 = sext i8 %563 to i32
  %565 = icmp eq i32 %564, 46
  br i1 %565, label %566, label %580

566:                                              ; preds = %562
  %567 = load i8*, i8** %11, align 8
  %568 = load i64, i64* %7, align 8
  %569 = sub i64 %568, 1
  %570 = getelementptr inbounds i8, i8* %567, i64 %569
  %571 = load i8, i8* %570, align 1
  %572 = sext i8 %571 to i32
  %573 = icmp eq i32 %572, 45
  br i1 %573, label %574, label %575

574:                                              ; preds = %566
  store i32 -1, i32* %3, align 4
  br label %680

575:                                              ; preds = %566
  %576 = load i32, i32* %13, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  store i32 -1, i32* %3, align 4
  br label %680

579:                                              ; preds = %575
  store i32 1, i32* %13, align 4
  br label %633

580:                                              ; preds = %562
  %581 = load i8, i8* %6, align 1
  %582 = sext i8 %581 to i32
  %583 = icmp eq i32 %582, 101
  br i1 %583, label %588, label %584

584:                                              ; preds = %580
  %585 = load i8, i8* %6, align 1
  %586 = sext i8 %585 to i32
  %587 = icmp eq i32 %586, 69
  br i1 %587, label %588, label %632

588:                                              ; preds = %584, %580
  %589 = load i8*, i8** %11, align 8
  %590 = load i64, i64* %7, align 8
  %591 = sub i64 %590, 1
  %592 = getelementptr inbounds i8, i8* %589, i64 %591
  %593 = load i8, i8* %592, align 1
  %594 = sext i8 %593 to i32
  %595 = icmp slt i32 %594, 48
  br i1 %595, label %596, label %597

596:                                              ; preds = %588
  store i32 -1, i32* %3, align 4
  br label %680

597:                                              ; preds = %588
  %598 = load i32, i32* %14, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %597
  store i32 -1, i32* %3, align 4
  br label %680

601:                                              ; preds = %597
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %602 = load i8*, i8** %11, align 8
  %603 = load i64, i64* %7, align 8
  %604 = add i64 %603, 1
  %605 = getelementptr inbounds i8, i8* %602, i64 %604
  %606 = load i8, i8* %605, align 1
  store i8 %606, i8* %6, align 1
  %607 = load i8, i8* %6, align 1
  %608 = sext i8 %607 to i32
  %609 = icmp eq i32 %608, 43
  br i1 %609, label %614, label %610

610:                                              ; preds = %601
  %611 = load i8, i8* %6, align 1
  %612 = sext i8 %611 to i32
  %613 = icmp eq i32 %612, 45
  br i1 %613, label %614, label %622

614:                                              ; preds = %610, %601
  %615 = load i64, i64* %7, align 8
  %616 = add i64 %615, 1
  store i64 %616, i64* %7, align 8
  %617 = load i8*, i8** %11, align 8
  %618 = load i64, i64* %7, align 8
  %619 = add i64 %618, 1
  %620 = getelementptr inbounds i8, i8* %617, i64 %619
  %621 = load i8, i8* %620, align 1
  store i8 %621, i8* %6, align 1
  br label %622

622:                                              ; preds = %614, %610
  %623 = load i8, i8* %6, align 1
  %624 = sext i8 %623 to i32
  %625 = icmp slt i32 %624, 48
  br i1 %625, label %630, label %626

626:                                              ; preds = %622
  %627 = load i8, i8* %6, align 1
  %628 = sext i8 %627 to i32
  %629 = icmp sgt i32 %628, 57
  br i1 %629, label %630, label %631

630:                                              ; preds = %626, %622
  store i32 -1, i32* %3, align 4
  br label %680

631:                                              ; preds = %626
  br label %633

632:                                              ; preds = %584
  br label %636

633:                                              ; preds = %631, %579, %561
  %634 = load i64, i64* %7, align 8
  %635 = add i64 %634, 1
  store i64 %635, i64* %7, align 8
  br label %549

636:                                              ; preds = %632
  %637 = load i8*, i8** %11, align 8
  %638 = load i64, i64* %7, align 8
  %639 = sub i64 %638, 1
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  %641 = load i8, i8* %640, align 1
  %642 = sext i8 %641 to i32
  %643 = icmp slt i32 %642, 48
  br i1 %643, label %644, label %645

644:                                              ; preds = %636
  store i32 -1, i32* %3, align 4
  br label %680

645:                                              ; preds = %636
  %646 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %647 = load i32, i32* %13, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %651

649:                                              ; preds = %645
  %650 = load i64, i64* @JSON_REAL, align 8
  br label %653

651:                                              ; preds = %645
  %652 = load i64, i64* @JSON_INT, align 8
  br label %653

653:                                              ; preds = %651, %649
  %654 = phi i64 [ %650, %649 ], [ %652, %651 ]
  %655 = load i64, i64* %7, align 8
  %656 = load i64, i64* %5, align 8
  %657 = sub i64 %655, %656
  %658 = load i8*, i8** %11, align 8
  %659 = load i64, i64* %5, align 8
  %660 = getelementptr inbounds i8, i8* %658, i64 %659
  %661 = call i32 @jsonParseAddNode(%struct.TYPE_5__* %646, i64 %654, i64 %657, i8* %660)
  %662 = load i64, i64* %7, align 8
  %663 = trunc i64 %662 to i32
  store i32 %663, i32* %3, align 4
  br label %680

664:                                              ; preds = %502, %498
  %665 = load i8, i8* %6, align 1
  %666 = sext i8 %665 to i32
  %667 = icmp eq i32 %666, 125
  br i1 %667, label %668, label %669

668:                                              ; preds = %664
  store i32 -2, i32* %3, align 4
  br label %680

669:                                              ; preds = %664
  %670 = load i8, i8* %6, align 1
  %671 = sext i8 %670 to i32
  %672 = icmp eq i32 %671, 93
  br i1 %672, label %673, label %674

673:                                              ; preds = %669
  store i32 -3, i32* %3, align 4
  br label %680

674:                                              ; preds = %669
  %675 = load i8, i8* %6, align 1
  %676 = sext i8 %675 to i32
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %674
  store i32 0, i32* %3, align 4
  br label %680

679:                                              ; preds = %674
  store i32 -1, i32* %3, align 4
  br label %680

680:                                              ; preds = %679, %678, %673, %668, %653, %644, %630, %600, %596, %578, %574, %544, %487, %462, %437, %415, %378, %323, %289, %284, %257, %253, %231, %209, %181, %176, %149, %136, %110, %95, %89, %85, %63, %41
  %681 = load i32, i32* %3, align 4
  ret i32 %681
}

declare dso_local i64 @safe_isspace(i8 signext) #1

declare dso_local i32 @jsonParseAddNode(%struct.TYPE_5__*, i64, i64, i8*) #1

declare dso_local i64 @jsonIs4Hex(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @safe_isalnum(i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
