; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_fts3ExprParse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_fts3ExprParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@sqlite3_fts3_enable_parentheses = common dso_local global i32 0, align 4
@FTSQUERY_PHRASE = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTSQUERY_NOT = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@FTSQUERY_AND = common dso_local global i32 0, align 4
@FTSQUERY_NEAR = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, %struct.TYPE_13__**, i32*)* @fts3ExprParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3ExprParse(%struct.TYPE_12__* %0, i8* %1, i32 %2, %struct.TYPE_13__** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %28

28:                                               ; preds = %251, %5
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %262

32:                                               ; preds = %28
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %18, align 8
  store i32 0, i32* %19, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @getNextNode(%struct.TYPE_12__* %33, i8* %34, i32 %35, %struct.TYPE_13__** %18, i32* %19)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %45 = icmp eq %struct.TYPE_13__* %44, null
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i1 [ false, %39 ], [ %45, %43 ]
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi i1 [ true, %32 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %238

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %233

58:                                               ; preds = %55
  %59 = load i32, i32* @sqlite3_fts3_enable_parentheses, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %102, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = call %struct.TYPE_13__* @fts3MallocZero(i32 32)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %21, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %75 = icmp ne %struct.TYPE_13__* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %78 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %77)
  %79 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %79, i32* %16, align 4
  br label %316

80:                                               ; preds = %72
  %81 = load i32, i32* @FTSQUERY_NOT, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %98, align 8
  br label %99

99:                                               ; preds = %92, %80
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %13, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %18, align 8
  br label %231

102:                                              ; preds = %67, %61, %58
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br label %114

114:                                              ; preds = %109, %102
  %115 = phi i1 [ true, %102 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %124 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %123)
  %125 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %125, i32* %16, align 4
  br label %316

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %157

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %157, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = icmp ne %struct.TYPE_13__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i1 [ false, %132 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = call %struct.TYPE_13__* @fts3MallocZero(i32 32)
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %23, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %144 = icmp ne %struct.TYPE_13__* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %147 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %146)
  %148 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %148, i32* %16, align 4
  br label %316

149:                                              ; preds = %138
  %150 = load i32, i32* @FTSQUERY_AND, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %155 = call i32 @insertBinaryOperator(%struct.TYPE_13__** %11, %struct.TYPE_13__* %153, %struct.TYPE_13__* %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %12, align 8
  br label %157

157:                                              ; preds = %149, %129, %126
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %159 = icmp ne %struct.TYPE_13__* %158, null
  br i1 %159, label %160, label %190

160:                                              ; preds = %157
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* @FTSQUERY_NEAR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %20, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %167, %164, %160
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FTSQUERY_NEAR, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180, %167
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %188 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %187)
  %189 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %189, i32* %16, align 4
  br label %316

190:                                              ; preds = %180, %177, %173, %157
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %195 = icmp ne %struct.TYPE_13__* %194, null
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %198 = icmp ne %struct.TYPE_13__* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = icmp ne %struct.TYPE_13__* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = icmp eq %struct.TYPE_13__* %207, null
  br label %209

209:                                              ; preds = %204, %199, %196
  %210 = phi i1 [ false, %199 ], [ false, %196 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 3
  store %struct.TYPE_13__* %213, %struct.TYPE_13__** %215, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %218, align 8
  br label %221

219:                                              ; preds = %193
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %220, %struct.TYPE_13__** %11, align 8
  br label %221

221:                                              ; preds = %219, %209
  br label %226

222:                                              ; preds = %190
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %225 = call i32 @insertBinaryOperator(%struct.TYPE_13__** %11, %struct.TYPE_13__* %223, %struct.TYPE_13__* %224)
  br label %226

226:                                              ; preds = %222, %221
  %227 = load i32, i32* %20, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %17, align 4
  br label %231

231:                                              ; preds = %226, %99
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %232, %struct.TYPE_13__** %12, align 8
  br label %233

233:                                              ; preds = %231, %55
  %234 = load i32, i32* %19, align 4
  %235 = icmp sgt i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  br label %238

238:                                              ; preds = %233, %48
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @SQLITE_OK, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %251, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %19, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp sle i32 %246, %247
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi i1 [ false, %242 ], [ %248, %245 ]
  br label %251

251:                                              ; preds = %249, %238
  %252 = phi i1 [ true, %238 ], [ %250, %249 ]
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load i32, i32* %19, align 4
  %256 = load i32, i32* %14, align 4
  %257 = sub nsw i32 %256, %255
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load i8*, i8** %15, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %15, align 8
  br label %28

262:                                              ; preds = %28
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* @SQLITE_DONE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %268 = icmp ne %struct.TYPE_13__* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32, i32* %17, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %273, i32* %16, align 4
  br label %274

274:                                              ; preds = %272, %269, %266, %262
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* @SQLITE_DONE, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %311

278:                                              ; preds = %274
  %279 = load i32, i32* @SQLITE_OK, align 4
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* @sqlite3_fts3_enable_parentheses, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %310, label %282

282:                                              ; preds = %278
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %284 = icmp ne %struct.TYPE_13__* %283, null
  br i1 %284, label %285, label %310

285:                                              ; preds = %282
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %287 = icmp ne %struct.TYPE_13__* %286, null
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %289, i32* %16, align 4
  br label %309

290:                                              ; preds = %285
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %291, %struct.TYPE_13__** %24, align 8
  br label %292

292:                                              ; preds = %297, %290
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = icmp ne %struct.TYPE_13__* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  store %struct.TYPE_13__* %300, %struct.TYPE_13__** %24, align 8
  br label %292

301:                                              ; preds = %292
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  store %struct.TYPE_13__* %302, %struct.TYPE_13__** %304, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 1
  store %struct.TYPE_13__* %305, %struct.TYPE_13__** %307, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %308, %struct.TYPE_13__** %11, align 8
  br label %309

309:                                              ; preds = %301, %288
  br label %310

310:                                              ; preds = %309, %282, %278
  br label %311

311:                                              ; preds = %310, %274
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %14, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load i32*, i32** %10, align 8
  store i32 %314, i32* %315, align 4
  br label %316

316:                                              ; preds = %311, %186, %145, %122, %76
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* @SQLITE_OK, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %322 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %321)
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %324 = call i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__* %323)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %325

325:                                              ; preds = %320, %316
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %327 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %326, %struct.TYPE_13__** %327, align 8
  %328 = load i32, i32* %16, align 4
  ret i32 %328
}

declare dso_local i32 @getNextNode(%struct.TYPE_12__*, i8*, i32, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @fts3MallocZero(i32) #1

declare dso_local i32 @sqlite3Fts3ExprFree(%struct.TYPE_13__*) #1

declare dso_local i32 @insertBinaryOperator(%struct.TYPE_13__**, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
