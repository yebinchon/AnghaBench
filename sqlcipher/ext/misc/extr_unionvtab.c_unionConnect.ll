; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, i64, i32, i32* }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"swarmvtab\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unionvtab\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s tables must be created in TEMP schema\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"wrong number of arguments for %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SELECT * FROM (%z) ORDER BY 3\00", align 1
@SWARMVTAB_MAX_OPEN = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"rowid range mismatch error\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"no source tables configured\00", align 1
@.str.8 = private unnamed_addr constant [178 x i8] c"SELECT 'CREATE TABLE xyz('    || group_concat(quote(name) || ' ' || type, ', ')    || ')',max((cid+1) * (type='INTEGER' COLLATE nocase AND pk=1))-1 FROM pragma_table_info(%Q, ?)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @unionConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_12__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i8** %5, i8*** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %31 = load i32, i32* @SQLITE_OK, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %39, i8** %16, align 8
  %40 = load i8**, i8*** %10, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %6
  %46 = load i8*, i8** %16, align 8
  %47 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i8**, i8*** %12, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %49, i32* %14, align 4
  br label %332

50:                                               ; preds = %6
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 4
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %50
  %60 = load i8*, i8** %16, align 8
  %61 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = load i8**, i8*** %12, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %63, i32* %14, align 4
  br label %331

64:                                               ; preds = %56, %53
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %65 = load i8**, i8*** %10, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @unionStrdup(i32* %14, i8* %67)
  store i8* %68, i8** %19, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @unionDequote(i8* %69)
  %71 = load i8**, i8*** %12, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = call i32* (i32*, i8**, i32*, i8*, i8*, ...) @unionPreparePrintf(i32* %14, i8** %71, i32* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i32* %74, i32** %18, align 8
  %75 = call %struct.TYPE_11__* @unionMalloc(i32* %14, i32 48)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %13, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %64
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 6
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @SWARMVTAB_MAX_OPEN, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %78, %64
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 4
  %101 = load i8**, i8*** %10, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 4
  %103 = load i8**, i8*** %12, align 8
  %104 = call i32 @unionConfigureVtab(i32* %14, %struct.TYPE_11__* %97, i32* %98, i32 %100, i8** %102, i8** %103)
  br label %105

105:                                              ; preds = %96, %93
  br label %106

106:                                              ; preds = %253, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i64, i64* @SQLITE_ROW, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = call i64 @sqlite3_step(i32* %112)
  %114 = icmp eq i64 %111, %113
  br label %115

115:                                              ; preds = %110, %106
  %116 = phi i1 [ false, %106 ], [ %114, %110 ]
  br i1 %116, label %117, label %254

117:                                              ; preds = %115
  %118 = load i32*, i32** %18, align 8
  %119 = call i64 @sqlite3_column_text(i32* %118, i32 0)
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %20, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = call i64 @sqlite3_column_text(i32* %121, i32 1)
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %21, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = call i64 @sqlite3_column_int64(i32* %124, i32 2)
  store i64 %125, i64* %22, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i64 @sqlite3_column_int64(i32* %126, i32 3)
  store i64 %127, i64* %23, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %128, %131
  br i1 %132, label %133, label %176

133:                                              ; preds = %117
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %17, align 4
  %138 = mul nsw i32 %137, 2
  br label %140

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi i32 [ %138, %136 ], [ 8, %139 ]
  store i32 %141, i32* %25, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 48
  %148 = trunc i64 %147 to i32
  %149 = call i64 @sqlite3_realloc64(%struct.TYPE_12__* %144, i32 %148)
  %150 = inttoptr i64 %149 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %26, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %152 = icmp eq %struct.TYPE_12__* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %140
  %154 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %154, i32* %14, align 4
  br label %254

155:                                              ; preds = %140
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %160
  %162 = load i32, i32* %25, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 48
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memset(%struct.TYPE_12__* %161, i32 0, i32 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  store %struct.TYPE_12__* %171, %struct.TYPE_12__** %173, align 8
  %174 = load i32, i32* %25, align 4
  store i32 %174, i32* %17, align 4
  br label %175

175:                                              ; preds = %155
  br label %176

176:                                              ; preds = %175, %117
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %22, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %199, label %180

180:                                              ; preds = %176
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load i64, i64* %22, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp sle i64 %186, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %185, %176
  %200 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i8**, i8*** %12, align 8
  store i8* %200, i8** %201, align 8
  %202 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %199, %185, %180
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @SQLITE_OK, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %253

207:                                              ; preds = %203
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %215
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %24, align 8
  %217 = load i8*, i8** %21, align 8
  %218 = call i8* @unionStrdup(i32* %14, i8* %217)
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load i64, i64* %22, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* %23, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %207
  %230 = load i8*, i8** %20, align 8
  %231 = call i8* @unionStrdup(i32* %14, i8* %230)
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 4
  store i8* %231, i8** %233, align 8
  br label %239

234:                                              ; preds = %207
  %235 = load i8*, i8** %20, align 8
  %236 = call i8* @unionStrdup(i32* %14, i8* %235)
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = load i32*, i32** %18, align 8
  %246 = call i64 @sqlite3_column_text(i32* %245, i32 4)
  %247 = inttoptr i64 %246 to i8*
  store i8* %247, i8** %27, align 8
  %248 = load i8*, i8** %27, align 8
  %249 = call i8* @unionStrdup(i32* %14, i8* %248)
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %244, %239
  br label %253

253:                                              ; preds = %252, %203
  br label %106

254:                                              ; preds = %153, %115
  %255 = load i32*, i32** %18, align 8
  %256 = load i8**, i8*** %12, align 8
  %257 = call i32 @unionFinalize(i32* %14, i32* %255, i8** %256)
  store i32* null, i32** %18, align 8
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* @SQLITE_OK, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %254
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %268 = load i8**, i8*** %12, align 8
  store i8* %267, i8** %268, align 8
  %269 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %266, %261, %254
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @SQLITE_OK, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = load i32, i32* %15, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %279 = load i8**, i8*** %12, align 8
  %280 = call i32 @unionOpenDatabase(%struct.TYPE_11__* %278, i32 0, i8** %279)
  store i32 %280, i32* %14, align 4
  br label %285

281:                                              ; preds = %274
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %283 = load i8**, i8*** %12, align 8
  %284 = call i32 @unionSourceCheck(%struct.TYPE_11__* %282, i8** %283)
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %270
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* @SQLITE_OK, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %307

290:                                              ; preds = %286
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 0
  store %struct.TYPE_12__* %294, %struct.TYPE_12__** %28, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %297 = call i32* @unionGetDb(%struct.TYPE_11__* %295, %struct.TYPE_12__* %296)
  store i32* %297, i32** %29, align 8
  %298 = load i8**, i8*** %12, align 8
  %299 = load i32*, i32** %29, align 8
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 2
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32* (i32*, i8**, i32*, i8*, i8*, ...) @unionPreparePrintf(i32* %14, i8** %298, i32* %299, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.8, i64 0, i64 0), i8* %302, i8* %305)
  store i32* %306, i32** %18, align 8
  br label %307

307:                                              ; preds = %290, %286
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* @SQLITE_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %327

311:                                              ; preds = %307
  %312 = load i64, i64* @SQLITE_ROW, align 8
  %313 = load i32*, i32** %18, align 8
  %314 = call i64 @sqlite3_step(i32* %313)
  %315 = icmp eq i64 %312, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %311
  %317 = load i32*, i32** %18, align 8
  %318 = call i64 @sqlite3_column_text(i32* %317, i32 0)
  %319 = inttoptr i64 %318 to i8*
  store i8* %319, i8** %30, align 8
  %320 = load i32*, i32** %7, align 8
  %321 = load i8*, i8** %30, align 8
  %322 = call i32 @sqlite3_declare_vtab(i32* %320, i8* %321)
  store i32 %322, i32* %14, align 4
  %323 = load i32*, i32** %18, align 8
  %324 = call i32 @sqlite3_column_int(i32* %323, i32 1)
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  br label %327

327:                                              ; preds = %316, %311, %307
  %328 = load i32*, i32** %18, align 8
  %329 = load i8**, i8*** %12, align 8
  %330 = call i32 @unionFinalize(i32* %14, i32* %328, i8** %329)
  br label %331

331:                                              ; preds = %327, %59
  br label %332

332:                                              ; preds = %331, %45
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* @SQLITE_OK, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %338 = bitcast %struct.TYPE_11__* %337 to i32*
  %339 = call i32 @unionDisconnect(i32* %338)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  br label %340

340:                                              ; preds = %336, %332
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %342 = bitcast %struct.TYPE_11__* %341 to i32*
  %343 = load i32**, i32*** %11, align 8
  store i32* %342, i32** %343, align 8
  %344 = load i32, i32* %14, align 4
  ret i32 %344
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i8* @unionStrdup(i32*, i8*) #1

declare dso_local i32 @unionDequote(i8*) #1

declare dso_local i32* @unionPreparePrintf(i32*, i8**, i32*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @unionMalloc(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unionConfigureVtab(i32*, %struct.TYPE_11__*, i32*, i32, i8**, i8**) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @unionFinalize(i32*, i32*, i8**) #1

declare dso_local i32 @unionOpenDatabase(%struct.TYPE_11__*, i32, i8**) #1

declare dso_local i32 @unionSourceCheck(%struct.TYPE_11__*, i8**) #1

declare dso_local i32* @unionGetDb(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @unionDisconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
