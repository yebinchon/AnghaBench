; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeSqlInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeSqlInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@rtreeSqlInit.azSql = internal global [8 x i8*] [i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [53 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_node' VALUES(?1, ?2)\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"DELETE FROM '%q'.'%q_node' WHERE nodeno = ?1\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"SELECT nodeno FROM '%q'.'%q_rowid' WHERE rowid = ?1\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_rowid' VALUES(?1, ?2)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"DELETE FROM '%q'.'%q_rowid' WHERE rowid = ?1\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"SELECT parentnode FROM '%q'.'%q_parent' WHERE nodeno = ?1\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_parent' VALUES(?1, ?2)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"DELETE FROM '%q'.'%q_parent' WHERE nodeno = ?1\00", align 1
@SQLITE_PREPARE_PERSISTENT = common dso_local global i32 0, align 4
@SQLITE_PREPARE_NO_VTAB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"CREATE TABLE \22%w\22.\22%w_rowid\22(rowid INTEGER PRIMARY KEY,nodeno\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c",a%d\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c");CREATE TABLE \22%w\22.\22%w_node\22(nodeno INTEGER PRIMARY KEY,data);\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"CREATE TABLE \22%w\22.\22%w_parent\22(nodeno INTEGER PRIMARY KEY,parentnode);\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"INSERT INTO \22%w\22.\22%w_node\22VALUES(1,zeroblob(%d))\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [108 x i8] c"INSERT INTO\22%w\22.\22%w_rowid\22(rowid,nodeno)VALUES(?1,?2)ON CONFLICT(rowid)DO UPDATE SET nodeno=excluded.nodeno\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"SELECT * FROM \22%w\22.\22%w_rowid\22 WHERE rowid=?1\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"UPDATE \22%w\22.\22%w_rowid\22SET \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"a%d=coalesce(?%d,a%d)\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"a%d=?%d\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" WHERE rowid=?1\00", align 1
@N_STATEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i8*, i8*, i32)* @rtreeSqlInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeSqlInit(%struct.TYPE_4__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32**], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* @SQLITE_OK, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @SQLITE_PREPARE_PERSISTENT, align 4
  %26 = load i32, i32* @SQLITE_PREPARE_NO_VTAB, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 13
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @sqlite3_str_new(i32* %34)
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %36, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i8* %37, i8* %38)
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %50, %33
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i32*, i32** %17, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %58, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i32*, i32** %17, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %63, i8* %64, i32 %67)
  %69 = load i32*, i32** %17, align 8
  %70 = call i8* @sqlite3_str_finish(i32* %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %53
  %74 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %74, i32* %6, align 4
  br label %244

75:                                               ; preds = %53
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @sqlite3_exec(i32* %76, i8* %77, i32 0, i32 0, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @sqlite3_free(i8* %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %244

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %5
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 11
  %90 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 0
  store i32** %89, i32*** %90, align 16
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 10
  %93 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 1
  store i32** %92, i32*** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 9
  %96 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 2
  store i32** %95, i32*** %96, align 16
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 8
  %99 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 3
  store i32** %98, i32*** %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  %102 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 4
  store i32** %101, i32*** %102, align 16
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 5
  store i32** %104, i32*** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 6
  store i32** %107, i32*** %108, align 16
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 7
  store i32** %110, i32*** %111, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = call i32 @rtreeQueryStat1(i32* %112, %struct.TYPE_4__* %113)
  store i32 %114, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %159, %87
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 8
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @SQLITE_OK, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %124, label %162

124:                                              ; preds = %122
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 3
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i8*], [8 x i8*]* @rtreeSqlInit.azSql, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %20, align 8
  br label %138

137:                                              ; preds = %127
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.13, i64 0, i64 0), i8** %20, align 8
  br label %138

138:                                              ; preds = %137, %132
  %139 = load i8*, i8** %20, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i8* @sqlite3_mprintf(i8* %139, i8* %140, i8* %141)
  store i8* %142, i8** %19, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load i32*, i32** %8, align 8
  %147 = load i8*, i8** %19, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i32**], [8 x i32**]* %13, i64 0, i64 %150
  %152 = load i32**, i32*** %151, align 8
  %153 = call i32 @sqlite3_prepare_v3(i32* %146, i8* %147, i32 -1, i32 %148, i32** %152, i32 0)
  store i32 %153, i32* %12, align 4
  br label %156

154:                                              ; preds = %138
  %155 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %154, %145
  %157 = load i8*, i8** %19, align 8
  %158 = call i32 @sqlite3_free(i8* %157)
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %115

162:                                              ; preds = %122
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %242

167:                                              ; preds = %162
  %168 = load i8*, i8** %9, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %168, i8* %169)
  %171 = ptrtoint i8* %170 to i64
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %179, i32* %12, align 4
  br label %241

180:                                              ; preds = %167
  %181 = load i32*, i32** %8, align 8
  %182 = call i32* @sqlite3_str_new(i32* %181)
  store i32* %182, i32** %21, align 8
  %183 = load i32*, i32** %21, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %184, i8* %185)
  store i32 0, i32* %22, align 4
  br label %187

187:                                              ; preds = %219, %180
  %188 = load i32, i32* %22, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %222

193:                                              ; preds = %187
  %194 = load i32, i32* %22, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32*, i32** %21, align 8
  %198 = call i32 @sqlite3_str_append(i32* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %22, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load i32*, i32** %21, align 8
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 2
  %210 = load i32, i32* %22, align 4
  %211 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %207, i32 %209, i32 %210)
  br label %218

212:                                              ; preds = %199
  %213 = load i32*, i32** %21, align 8
  %214 = load i32, i32* %22, align 4
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %215, 2
  %217 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %212, %205
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %22, align 4
  br label %187

222:                                              ; preds = %187
  %223 = load i32*, i32** %21, align 8
  %224 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %225 = load i32*, i32** %21, align 8
  %226 = call i8* @sqlite3_str_finish(i32* %225)
  store i8* %226, i8** %23, align 8
  %227 = load i8*, i8** %23, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %230, i32* %12, align 4
  br label %240

231:                                              ; preds = %222
  %232 = load i32*, i32** %8, align 8
  %233 = load i8*, i8** %23, align 8
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 3
  %237 = call i32 @sqlite3_prepare_v3(i32* %232, i8* %233, i32 -1, i32 %234, i32** %236, i32 0)
  store i32 %237, i32* %12, align 4
  %238 = load i8*, i8** %23, align 8
  %239 = call i32 @sqlite3_free(i8* %238)
  br label %240

240:                                              ; preds = %231, %229
  br label %241

241:                                              ; preds = %240, %178
  br label %242

242:                                              ; preds = %241, %162
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %242, %84, %73
  %245 = load i32, i32* %6, align 4
  ret i32 %245
}

declare dso_local i32* @sqlite3_str_new(i32*) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, ...) #1

declare dso_local i8* @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @rtreeQueryStat1(i32*, %struct.TYPE_4__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v3(i32*, i8*, i32, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_str_append(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
