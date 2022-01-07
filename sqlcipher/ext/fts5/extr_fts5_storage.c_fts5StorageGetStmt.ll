; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageGetStmt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageGetStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_STMT_REPLACE_DOCSIZE = common dso_local global i32 0, align 4
@FTS5_STMT_DELETE_DOCSIZE = common dso_local global i32 0, align 4
@FTS5_STMT_LOOKUP_DOCSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"SELECT %s FROM %s T WHERE T.%Q >= ? AND T.%Q <= ? ORDER BY T.%Q ASC\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"SELECT %s FROM %s T WHERE T.%Q <= ? AND T.%Q >= ? ORDER BY T.%Q DESC\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SELECT %s FROM %s T WHERE T.%Q=?\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"INSERT INTO %Q.'%q_content' VALUES(%s)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"REPLACE INTO %Q.'%q_content' VALUES(%s)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DELETE FROM %Q.'%q_content' WHERE id=?\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"REPLACE INTO %Q.'%q_docsize' VALUES(?,?)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"DELETE FROM %Q.'%q_docsize' WHERE id=?\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"SELECT sz FROM %Q.'%q_docsize' WHERE id=?\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"REPLACE INTO %Q.'%q_config' VALUES(?,?)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"SELECT %s FROM %s AS T\00", align 1
@__const.fts5StorageGetStmt.azStmt = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)], align 16
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_PREPARE_PERSISTENT = common dso_local global i32 0, align 4
@SQLITE_PREPARE_NO_VTAB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32**, i8**)* @fts5StorageGetStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5StorageGetStmt(%struct.TYPE_4__* %0, i32 %1, i32** %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca [11 x i8*], align 16
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FTS5_STMT_REPLACE_DOCSIZE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FTS5_STMT_DELETE_DOCSIZE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @FTS5_STMT_LOOKUP_DOCSIZE, align 4
  %35 = icmp ne i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = phi i1 [ false, %28 ], [ false, %24 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi i1 [ true, %4 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = call i32 @ArraySize(i32** %48)
  %50 = icmp slt i32 %45, %49
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i1 [ false, %38 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %225

63:                                               ; preds = %51
  %64 = bitcast [11 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([11 x i8*]* @__const.fts5StorageGetStmt.azStmt to i8*), i64 88, i1 false)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %11, align 8
  store i8* null, i8** %12, align 8
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %170 [
    i32 130, label %69
    i32 129, label %81
    i32 128, label %81
    i32 132, label %102
    i32 133, label %117
    i32 131, label %117
  ]

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %73, i32 %76, i32 %79)
  store i8* %80, i8** %12, align 8
  br label %182

81:                                               ; preds = %63, %63
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100)
  store i8* %101, i8** %12, align 8
  br label %182

102:                                              ; preds = %63
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %106, i32 %109, i32 %112, i32 %115)
  store i8* %116, i8** %12, align 8
  br label %182

117:                                              ; preds = %63, %63
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 1, %123
  %125 = call i8* @sqlite3_malloc64(i32 %124)
  store i8* %125, i8** %14, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %169

128:                                              ; preds = %117
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 63, i8* %138, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 %140, 2
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  store i8 44, i8* %144, align 1
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %129

148:                                              ; preds = %129
  %149 = load i8*, i8** %14, align 8
  %150 = load i32, i32* %15, align 4
  %151 = mul nsw i32 %150, 2
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %158, i32 %161, i32 %164, i8* %165)
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = call i32 @sqlite3_free(i8* %167)
  br label %169

169:                                              ; preds = %148, %117
  br label %182

170:                                              ; preds = %63
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %174, i32 %177, i32 %180)
  store i8* %181, i8** %12, align 8
  br label %182

182:                                              ; preds = %170, %169, %102, %81, %69
  %183 = load i8*, i8** %12, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %186, i32* %9, align 4
  br label %224

187:                                              ; preds = %182
  %188 = load i32, i32* @SQLITE_PREPARE_PERSISTENT, align 4
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp sgt i32 %189, 132
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @SQLITE_PREPARE_NO_VTAB, align 4
  %193 = load i32, i32* %16, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %16, align 4
  br label %195

195:                                              ; preds = %191, %187
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = call i32 @sqlite3_prepare_v3(i32 %198, i8* %199, i32 -1, i32 %200, i32** %206, i32 0)
  store i32 %207, i32* %9, align 4
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @sqlite3_free(i8* %208)
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @SQLITE_OK, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %195
  %214 = load i8**, i8*** %8, align 8
  %215 = icmp ne i8** %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @sqlite3_errmsg(i32 %219)
  %221 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %220)
  %222 = load i8**, i8*** %8, align 8
  store i8* %221, i8** %222, align 8
  br label %223

223:                                              ; preds = %216, %213, %195
  br label %224

224:                                              ; preds = %223, %185
  br label %225

225:                                              ; preds = %224, %51
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32**, i32*** %7, align 8
  store i32* %232, i32** %233, align 8
  %234 = load i32**, i32*** %7, align 8
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @sqlite3_reset(i32* %235)
  %237 = load i32, i32* %9, align 4
  ret i32 %237
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, ...) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_prepare_v3(i32, i8*, i32, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
