; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigParse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8**, i8*, i32, i32, i64, i64, i64, i64, i8*, i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i32 0, align 4
@FTS5_RANK_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reserved fts5 table name: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"parse error in \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@FTS5_CONTENT_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"docsize\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%Q.'%q_%s'\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ConfigParse(i32* %0, i32* %1, i32 %2, i8** %3, %struct.TYPE_9__** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %14, align 4
  %27 = call i64 @sqlite3_malloc(i32 96)
  %28 = inttoptr i64 %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %15, align 8
  %29 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %294

34:                                               ; preds = %6
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = call i32 @memset(%struct.TYPE_9__* %35, i32 0, i32 96)
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 12
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 12
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i64 @sqlite3Fts5MallocZero(i32* %14, i32 %46)
  %48 = inttoptr i64 %47 to i8**
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8** %48, i8*** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = bitcast i8** %56 to i32*
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 11
  store i32* %57, i32** %59, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @sqlite3Fts5Strndup(i32* %14, i8* %62, i32 -1)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 9
  store i8* %63, i8** %65, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @sqlite3Fts5Strndup(i32* %14, i8* %68, i32 -1)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @FTS5_DETAIL_FULL, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %34
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @FTS5_RANK_NAME, align 4
  %85 = call i64 @sqlite3_stricmp(i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load i8**, i8*** %13, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %87, %80, %34
  store i32 3, i32* %16, align 4
  br label %95

95:                                               ; preds = %194, %94
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %197

105:                                              ; preds = %103
  %106 = load i8**, i8*** %11, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %18, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = call i8* @fts5ConfigGobbleWord(i32* %14, i8* %111, i8** %20, i32* %23)
  store i8* %112, i8** %19, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = call i8* @fts5ConfigSkipWhitespace(i8* %113)
  store i8* %114, i8** %19, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %105
  %118 = load i8*, i8** %19, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 61
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  store i32 1, i32* %22, align 4
  %123 = load i8*, i8** %19, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %19, align 8
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i8* null, i8** %19, align 8
  br label %128

128:                                              ; preds = %127, %122
  br label %129

129:                                              ; preds = %128, %117, %105
  %130 = load i8*, i8** %19, align 8
  %131 = call i8* @fts5ConfigSkipWhitespace(i8* %130)
  store i8* %131, i8** %19, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load i8*, i8** %19, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %134
  %141 = load i8*, i8** %19, align 8
  %142 = call i8* @fts5ConfigGobbleWord(i32* %14, i8* %141, i8** %21, i32* %24)
  store i8* %142, i8** %19, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i8*, i8** %19, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i8* null, i8** %19, align 8
  br label %152

152:                                              ; preds = %151, %145, %140
  br label %153

153:                                              ; preds = %152, %134, %129
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @SQLITE_OK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %153
  %158 = load i8*, i8** %19, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %18, align 8
  %162 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  %163 = load i8**, i8*** %13, align 8
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %164, i32* %14, align 4
  br label %188

165:                                              ; preds = %157
  %166 = load i32, i32* %22, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %171 = load i8*, i8** %20, align 8
  %172 = load i8*, i8** %21, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i8*, i8** %21, align 8
  br label %177

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i8* [ %175, %174 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %176 ]
  %179 = load i8**, i8*** %13, align 8
  %180 = call i32 @fts5ConfigParseSpecial(i32* %169, %struct.TYPE_9__* %170, i8* %171, i8* %178, i8** %179)
  store i32 %180, i32* %14, align 4
  br label %187

181:                                              ; preds = %165
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = load i8*, i8** %21, align 8
  %185 = load i8**, i8*** %13, align 8
  %186 = call i32 @fts5ConfigParseColumn(%struct.TYPE_9__* %182, i8* %183, i8* %184, i8** %185)
  store i32 %186, i32* %14, align 4
  store i8* null, i8** %20, align 8
  br label %187

187:                                              ; preds = %181, %177
  br label %188

188:                                              ; preds = %187, %160
  br label %189

189:                                              ; preds = %188, %153
  %190 = load i8*, i8** %20, align 8
  %191 = call i32 @sqlite3_free(i8* %190)
  %192 = load i8*, i8** %21, align 8
  %193 = call i32 @sqlite3_free(i8* %192)
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  br label %95

197:                                              ; preds = %103
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @SQLITE_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load i32*, i32** %8, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %209 = call i32 @fts5ConfigDefaultTokenizer(i32* %207, %struct.TYPE_9__* %208)
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %206, %201, %197
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @SQLITE_OK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %263

214:                                              ; preds = %210
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %263

219:                                              ; preds = %214
  store i8* null, i8** %25, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @FTS5_CONTENT_NONE, align 8
  %230 = icmp eq i64 %228, %229
  br label %231

231:                                              ; preds = %225, %219
  %232 = phi i1 [ true, %219 ], [ %230, %225 ]
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %231
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %25, align 8
  br label %248

241:                                              ; preds = %231
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %25, align 8
  br label %247

247:                                              ; preds = %246, %241
  br label %248

248:                                              ; preds = %247, %240
  %249 = load i8*, i8** %25, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %262

251:                                              ; preds = %248
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 9
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** %25, align 8
  %259 = call i64 @sqlite3Fts5Mprintf(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %254, i8* %257, i8* %258)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 6
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %251, %248
  br label %263

263:                                              ; preds = %262, %214, %210
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @SQLITE_OK, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %263
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 8
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = call i8* @sqlite3Fts5Strndup(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 8
  store i64 %274, i64* %276, align 8
  br label %277

277:                                              ; preds = %272, %267, %263
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %283 = call i32 @fts5ConfigMakeExprlist(%struct.TYPE_9__* %282)
  store i32 %283, i32* %14, align 4
  br label %284

284:                                              ; preds = %281, %277
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* @SQLITE_OK, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %290 = call i32 @sqlite3Fts5ConfigFree(%struct.TYPE_9__* %289)
  %291 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %291, align 8
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* %14, align 4
  store i32 %293, i32* %7, align 4
  br label %294

294:                                              ; preds = %292, %32
  %295 = load i32, i32* %7, align 4
  ret i32 %295
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i8* @sqlite3Fts5Strndup(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8* @fts5ConfigGobbleWord(i32*, i8*, i8**, i32*) #1

declare dso_local i8* @fts5ConfigSkipWhitespace(i8*) #1

declare dso_local i32 @fts5ConfigParseSpecial(i32*, %struct.TYPE_9__*, i8*, i8*, i8**) #1

declare dso_local i32 @fts5ConfigParseColumn(%struct.TYPE_9__*, i8*, i8*, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fts5ConfigDefaultTokenizer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Fts5Mprintf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fts5ConfigMakeExprlist(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3Fts5ConfigFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
