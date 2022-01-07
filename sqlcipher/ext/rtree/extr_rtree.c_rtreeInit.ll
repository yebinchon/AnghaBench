; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i64, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_COORD_INT32 = common dso_local global i32 0, align 4
@RTREE_COORD_REAL32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Wrong number of columns for an rtree table\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Too few columns for an rtree table\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Too many columns for an rtree table\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Auxiliary rtree columns must be last\00", align 1
@RTREE_MAX_AUX_COLUMN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_VTAB_CONSTRAINT_SUPPORT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@rtreeModule = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"CREATE TABLE x(%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c");\00", align 1
@RTREE_MAX_DIMENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**, i32)* @rtreeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeInit(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [5 x i8*], align 16
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @RTREE_COORD_INT32, align 4
  br label %33

31:                                               ; preds = %7
  %32 = load i32, i32* @RTREE_COORD_REAL32, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %20, align 4
  store i32 4, i32* %23, align 4
  %35 = bitcast [5 x i8*]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 40, i1 false)
  %36 = bitcast i8* %35 to [5 x i8*]*
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8** %37, align 8
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8** %38, align 16
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8** %39, align 8
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8** %40, align 16
  %41 = load i32, i32* @RTREE_MAX_AUX_COLUMN, align 4
  %42 = icmp slt i32 %41, 256
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @RTREE_MAX_AUX_COLUMN, align 4
  %47 = add nsw i32 %46, 3
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load i8**, i8*** %14, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %54, i32* %8, align 4
  br label %327

55:                                               ; preds = %33
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @SQLITE_VTAB_CONSTRAINT_SUPPORT, align 4
  %58 = call i32 @sqlite3_vtab_config(i32* %56, i32 %57, i32 1)
  %59 = load i8**, i8*** %12, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %18, align 4
  %64 = load i8**, i8*** %12, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 56, %70
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = add i64 %74, 2
  %76 = trunc i64 %75 to i32
  %77 = call i64 @sqlite3_malloc64(i32 %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %17, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %55
  %82 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %82, i32* %8, align 4
  br label %327

83:                                               ; preds = %55
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 56, %86
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = add i64 %90, 2
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(%struct.TYPE_8__* %84, i32 0, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32* @rtreeModule, i32** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 1
  %101 = bitcast %struct.TYPE_8__* %100 to i8*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %12, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @memcpy(i8* %118, i8* %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %12, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @memcpy(i8* %126, i8* %129, i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = call i32* @sqlite3_str_new(i32* %132)
  store i32* %133, i32** %21, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = load i8**, i8*** %12, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %137)
  store i32 4, i32* %23, align 4
  br label %139

139:                                              ; preds = %186, %83
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %189

143:                                              ; preds = %139
  %144 = load i8**, i8*** %12, align 8
  %145 = load i32, i32* %23, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 43
  br i1 %152, label %153, label %166

153:                                              ; preds = %143
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = load i8**, i8*** %12, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %164)
  br label %185

166:                                              ; preds = %143
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %189

172:                                              ; preds = %166
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = load i8**, i8*** %12, align 8
  %179 = load i32, i32* %23, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %153
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %23, align 4
  br label %139

189:                                              ; preds = %171, %139
  %190 = load i32*, i32** %21, align 8
  %191 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32*, i32** %21, align 8
  %193 = call i8* @sqlite3_str_finish(i32* %192)
  store i8* %193, i8** %22, align 8
  %194 = load i8*, i8** %22, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %197, i32* %16, align 4
  br label %221

198:                                              ; preds = %189
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 4
  %204 = load i8*, i8** %203, align 16
  %205 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %204)
  %206 = load i8**, i8*** %14, align 8
  store i8* %205, i8** %206, align 8
  %207 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %207, i32* %16, align 4
  br label %220

208:                                              ; preds = %198
  %209 = load i32, i32* @SQLITE_OK, align 4
  %210 = load i32*, i32** %9, align 8
  %211 = load i8*, i8** %22, align 8
  %212 = call i32 @sqlite3_declare_vtab(i32* %210, i8* %211)
  store i32 %212, i32* %16, align 4
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i32*, i32** %9, align 8
  %216 = call i8* @sqlite3_errmsg(i32* %215)
  %217 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %216)
  %218 = load i8**, i8*** %14, align 8
  store i8* %217, i8** %218, align 8
  br label %219

219:                                              ; preds = %214, %208
  br label %220

220:                                              ; preds = %219, %202
  br label %221

221:                                              ; preds = %220, %196
  %222 = load i8*, i8** %22, align 8
  %223 = call i32 @sqlite3_free(i8* %222)
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %306

227:                                              ; preds = %221
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sdiv i32 %230, 2
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  store i32 2, i32* %24, align 4
  br label %257

239:                                              ; preds = %227
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @RTREE_MAX_DIMENSIONS, align 4
  %244 = mul nsw i32 %243, 2
  %245 = icmp sgt i32 %242, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  store i32 3, i32* %24, align 4
  br label %256

247:                                              ; preds = %239
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = srem i32 %250, 2
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store i32 1, i32* %24, align 4
  br label %255

254:                                              ; preds = %247
  store i32 0, i32* %24, align 4
  br label %255

255:                                              ; preds = %254, %253
  br label %256

256:                                              ; preds = %255, %246
  br label %257

257:                                              ; preds = %256, %238
  %258 = load i32, i32* %24, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load i32, i32* %24, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [5 x i8*], [5 x i8*]* %25, i64 0, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %264)
  %266 = load i8**, i8*** %14, align 8
  store i8* %265, i8** %266, align 8
  br label %306

267:                                              ; preds = %257
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 %270, 4
  %272 = add nsw i32 8, %271
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 6
  store i32 %272, i32* %274, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %277 = load i32, i32* %15, align 4
  %278 = load i8**, i8*** %14, align 8
  %279 = call i32 @getNodeSize(i32* %275, %struct.TYPE_8__* %276, i32 %277, i8** %278)
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %16, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %267
  br label %306

283:                                              ; preds = %267
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %285 = load i32*, i32** %9, align 8
  %286 = load i8**, i8*** %12, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i8**, i8*** %12, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 2
  %291 = load i8*, i8** %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @rtreeSqlInit(%struct.TYPE_8__* %284, i32* %285, i8* %288, i8* %291, i32 %292)
  store i32 %293, i32* %16, align 4
  %294 = load i32, i32* %16, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %283
  %297 = load i32*, i32** %9, align 8
  %298 = call i8* @sqlite3_errmsg(i32* %297)
  %299 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %298)
  %300 = load i8**, i8*** %14, align 8
  store i8* %299, i8** %300, align 8
  br label %306

301:                                              ; preds = %283
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %303 = bitcast %struct.TYPE_8__* %302 to i32*
  %304 = load i32**, i32*** %13, align 8
  store i32* %303, i32** %304, align 8
  %305 = load i32, i32* @SQLITE_OK, align 4
  store i32 %305, i32* %8, align 4
  br label %327

306:                                              ; preds = %296, %282, %260, %226
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* @SQLITE_OK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %311, i32* %16, align 4
  br label %312

312:                                              ; preds = %310, %306
  %313 = load i32**, i32*** %13, align 8
  %314 = load i32*, i32** %313, align 8
  %315 = icmp eq i32* %314, null
  %316 = zext i1 %315 to i32
  %317 = call i32 @assert(i32 %316)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 1
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %325 = call i32 @rtreeRelease(%struct.TYPE_8__* %324)
  %326 = load i32, i32* %16, align 4
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %312, %301, %81, %49
  %328 = load i32, i32* %8, align 4
  ret i32 %328
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #2

declare dso_local i32 @sqlite3_vtab_config(i32*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @sqlite3_malloc64(i32) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32* @sqlite3_str_new(i32*) #2

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, ...) #2

declare dso_local i8* @sqlite3_str_finish(i32*) #2

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #2

declare dso_local i8* @sqlite3_errmsg(i32*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @getNodeSize(i32*, %struct.TYPE_8__*, i32, i8**) #2

declare dso_local i32 @rtreeSqlInit(%struct.TYPE_8__*, i32*, i8*, i8*, i32) #2

declare dso_local i32 @rtreeRelease(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
