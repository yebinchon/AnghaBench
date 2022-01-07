; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SqlStmt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SqlStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"DELETE FROM %Q.'%q_content' WHERE rowid = ?\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"SELECT NOT EXISTS(SELECT docid FROM %Q.'%q_content' WHERE rowid!=?)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DELETE FROM %Q.'%q_content'\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DELETE FROM %Q.'%q_segments'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DELETE FROM %Q.'%q_segdir'\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"DELETE FROM %Q.'%q_docsize'\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"DELETE FROM %Q.'%q_stat'\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"SELECT %s WHERE rowid=?\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"SELECT (SELECT max(idx) FROM %Q.'%q_segdir' WHERE level = ?) + 1\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"REPLACE INTO %Q.'%q_segments'(blockid, block) VALUES(?, ?)\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"SELECT coalesce((SELECT max(blockid) FROM %Q.'%q_segments') + 1, 1)\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"REPLACE INTO %Q.'%q_segdir' VALUES(?,?,?,?,?,?)\00", align 1
@.str.12 = private unnamed_addr constant [112 x i8] c"SELECT idx, start_block, leaves_end_block, end_block, root FROM %Q.'%q_segdir' WHERE level = ? ORDER BY idx ASC\00", align 1
@.str.13 = private unnamed_addr constant [135 x i8] c"SELECT idx, start_block, leaves_end_block, end_block, root FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?ORDER BY level DESC, idx ASC\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"SELECT count(*) FROM %Q.'%q_segdir' WHERE level = ?\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"SELECT max(level) FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"DELETE FROM %Q.'%q_segdir' WHERE level = ?\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"DELETE FROM %Q.'%q_segments' WHERE blockid BETWEEN ? AND ?\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"INSERT INTO %Q.'%q_content' VALUES(%s)\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"DELETE FROM %Q.'%q_docsize' WHERE docid = ?\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"REPLACE INTO %Q.'%q_docsize' VALUES(?,?)\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"SELECT size FROM %Q.'%q_docsize' WHERE docid=?\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"SELECT value FROM %Q.'%q_stat' WHERE id=?\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"REPLACE INTO %Q.'%q_stat' VALUES(?,?)\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"DELETE FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"SELECT ? UNION SELECT level / (1024 * ?) FROM %Q.'%q_segdir'\00", align 1
@.str.27 = private unnamed_addr constant [119 x i8] c"SELECT level, count(*) AS cnt FROM %Q.'%q_segdir'   GROUP BY level HAVING cnt>=?  ORDER BY (level %% 1024) ASC LIMIT 1\00", align 1
@.str.28 = private unnamed_addr constant [103 x i8] c"SELECT 2 * total(1 + leaves_end_block - start_block)   FROM %Q.'%q_segdir' WHERE level = ? AND idx < ?\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"DELETE FROM %Q.'%q_segdir' WHERE level = ? AND idx = ?\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"UPDATE %Q.'%q_segdir' SET idx = ? WHERE level=? AND idx=?\00", align 1
@.str.31 = private unnamed_addr constant [107 x i8] c"SELECT idx, start_block, leaves_end_block, end_block, root FROM %Q.'%q_segdir' WHERE level = ? AND idx = ?\00", align 1
@.str.32 = private unnamed_addr constant [79 x i8] c"UPDATE %Q.'%q_segdir' SET start_block = ?, root = ?WHERE level = ? AND idx = ?\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"SELECT 1 FROM %Q.'%q_segments' WHERE blockid=? AND block IS NULL\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"SELECT idx FROM %Q.'%q_segdir' WHERE level=? ORDER BY 1 ASC\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"SELECT max( level %% 1024 ) FROM %Q.'%q_segdir'\00", align 1
@.str.36 = private unnamed_addr constant [106 x i8] c"SELECT level, idx, end_block FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ? ORDER BY level DESC, idx ASC\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"UPDATE OR FAIL %Q.'%q_segdir' SET level=-1,idx=? WHERE level=? AND idx=?\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"UPDATE OR FAIL %Q.'%q_segdir' SET level=? WHERE level=-1\00", align 1
@__const.fts3SqlStmt.azSql = private unnamed_addr constant [40 x i8*] [i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i32 0, i32 0)], align 16
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_PREPARE_PERSISTENT = common dso_local global i32 0, align 4
@SQLITE_PREPARE_NO_VTAB = common dso_local global i32 0, align 4
@SQL_CONTENT_INSERT = common dso_local global i32 0, align 4
@SQL_SELECT_CONTENT_BY_ROWID = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8**, i32**)* @fts3SqlStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SqlStmt(%struct.TYPE_3__* %0, i32 %1, i8** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca [40 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %16 = bitcast [40 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([40 x i8*]* @__const.fts3SqlStmt.azSql to i8*), i64 320, i1 false)
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds [40 x i8*], [40 x i8*]* %9, i64 0, i64 0
  %19 = call i32 @SizeofArray(i8** %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = call i32 @SizeofArray(i8** %22)
  %24 = icmp eq i32 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [40 x i8*], [40 x i8*]* %9, i64 0, i64 0
  %29 = call i32 @SizeofArray(i8** %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br label %34

34:                                               ; preds = %31, %4
  %35 = phi i1 [ false, %4 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %131, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @SQLITE_PREPARE_PERSISTENT, align 4
  %49 = load i32, i32* @SQLITE_PREPARE_NO_VTAB, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SQL_CONTENT_INSERT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [40 x i8*], [40 x i8*]* %9, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %58, i32 %61, i32 %64, i32 %67)
  store i8* %68, i8** %13, align 8
  br label %99

69:                                               ; preds = %47
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SQL_SELECT_CONTENT_BY_ROWID, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* @SQLITE_PREPARE_NO_VTAB, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [40 x i8*], [40 x i8*]* %9, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %81, i32 %84)
  store i8* %85, i8** %13, align 8
  br label %98

86:                                               ; preds = %69
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [40 x i8*], [40 x i8*]* %9, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* %90, i32 %93, i32 %96)
  store i8* %97, i8** %13, align 8
  br label %98

98:                                               ; preds = %86, %73
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %103, i32* %10, align 4
  br label %130

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @sqlite3_prepare_v3(i32 %107, i8* %108, i32 -1, i32 %109, i8** %11, i32* null)
  store i32 %110, i32* %10, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @sqlite3_free(i8* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %104
  %117 = load i8*, i8** %11, align 8
  %118 = icmp eq i8* %117, null
  br label %119

119:                                              ; preds = %116, %104
  %120 = phi i1 [ true, %104 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  br label %130

130:                                              ; preds = %119, %102
  br label %131

131:                                              ; preds = %130, %34
  %132 = load i32**, i32*** %8, align 8
  %133 = icmp ne i32** %132, null
  br i1 %133, label %134, label %161

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @sqlite3_bind_parameter_count(i8* %135)
  store i32 %136, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %157, %134
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp slt i32 %142, %143
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i1 [ false, %137 ], [ %144, %141 ]
  br i1 %146, label %147, label %160

147:                                              ; preds = %145
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  %151 = load i32**, i32*** %8, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @sqlite3_bind_value(i8* %148, i32 %150, i32* %155)
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %147
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %137

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %131
  %162 = load i8*, i8** %11, align 8
  %163 = load i8**, i8*** %7, align 8
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @SizeofArray(i8**) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, ...) #2

declare dso_local i32 @sqlite3_prepare_v3(i32, i8*, i32, i32, i8**, i32*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @sqlite3_bind_parameter_count(i8*) #2

declare dso_local i32 @sqlite3_bind_value(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
