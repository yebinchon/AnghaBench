; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterPrepareAll.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterPrepareAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, i64, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i32, i8*, i8*, i64, i32, i64, i64, i8*, i32, i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c" LIMIT -1 OFFSET %d\00", align 1
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@RBU_PK_VTAB = common dso_local global i64 0, align 8
@SQLITE_TESTCTRL_IMPOSTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"CREATE TABLE \22rbu_imp_%w\22( %s, PRIMARY KEY( %s ) ) WITHOUT ROWID\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"INSERT INTO \22rbu_imp_%w\22 VALUES(%s)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"DELETE FROM \22rbu_imp_%w\22 WHERE %s\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"SELECT %s, 0 AS rbu_control FROM '%q' %s ORDER BY %s%s\00", align 1
@RBU_PK_EXTERNAL = common dso_local global i64 0, align 8
@RBU_PK_NONE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [61 x i8] c"SELECT %s, rbu_control FROM %s.'rbu_tmp_%q' %s ORDER BY %s%s\00", align 1
@.str.7 = private unnamed_addr constant [159 x i8] c"SELECT %s, rbu_control FROM %s.'rbu_tmp_%q' %s UNION ALL SELECT %s, rbu_control FROM '%q' %s %s typeof(rbu_control)='integer' AND rbu_control!=1 ORDER BY %s%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"rbu_imp_\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"INSERT INTO \22%s%w\22(%s%s) VALUES(%s)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c", _rowid_\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"DELETE FROM \22%s%w\22 WHERE %s\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c", rbu_rowid\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"CREATE TABLE IF NOT EXISTS %s.'rbu_tmp_%q' AS SELECT *%s FROM '%q' WHERE 0;\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c", 0 AS rbu_rowid\00", align 1
@.str.20 = private unnamed_addr constant [299 x i8] c"CREATE TEMP TRIGGER rbu_delete_tr BEFORE DELETE ON \22%s%w\22 BEGIN   SELECT rbu_tmp_insert(3, %s);END;CREATE TEMP TRIGGER rbu_update1_tr BEFORE UPDATE ON \22%s%w\22 BEGIN   SELECT rbu_tmp_insert(3, %s);END;CREATE TEMP TRIGGER rbu_update2_tr AFTER UPDATE ON \22%s%w\22 BEGIN   SELECT rbu_tmp_insert(4, %s);END;\00", align 1
@.str.21 = private unnamed_addr constant [99 x i8] c"CREATE TEMP TRIGGER rbu_insert_tr AFTER INSERT ON \22%s%w\22 BEGIN   SELECT rbu_tmp_insert(0, %s);END;\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c",_rowid_ \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c",rbu_rowid\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"SELECT %s,%s rbu_control%s FROM '%q'%s\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"0 AS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)* @rbuObjIterPrepareAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuObjIterPrepareAll(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %504

39:                                               ; preds = %3
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %42 = call i64 @rbuObjIterCacheTableInfo(%struct.TYPE_26__* %40, %struct.TYPE_27__* %41)
  %43 = load i64, i64* @SQLITE_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %504

45:                                               ; preds = %39
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  store i8** %50, i8*** %9, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* @SQLITE_NOMEM, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %249

69:                                               ; preds = %66
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RBU_PK_VTAB, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = call i8* @rbuObjIterGetIndexCols(%struct.TYPE_26__* %80, %struct.TYPE_27__* %81, i8** %13, i8** %14, i8** %15, i32* %18)
  store i8* %82, i8** %8, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i8* @rbuObjIterGetBindlist(%struct.TYPE_26__* %83, i32 %84)
  store i8* %85, i8** %16, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %88 = call i8* @rbuObjIterGetIndexWhere(%struct.TYPE_26__* %86, %struct.TYPE_27__* %87)
  store i8* %88, i8** %17, align 8
  %89 = load i32, i32* @SQLITE_TESTCTRL_IMPOSTER, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sqlite3_test_control(i32 %89, i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  %94 = load i32, i32* @SQLITE_TESTCTRL_IMPOSTER, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @sqlite3_test_control(i32 %94, i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 (%struct.TYPE_26__*, i32, i8*, i8*, i8*, i8*, ...) @rbuMPrintfExec(%struct.TYPE_26__* %100, i32 %103, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %104, i8* %105, i8* %106)
  %108 = load i32, i32* @SQLITE_TESTCTRL_IMPOSTER, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sqlite3_test_control(i32 %108, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SQLITE_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %69
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %129, i8* %130)
  %132 = call i8* @prepareFreeAndCollectError(i32 %124, i64* %126, i8** %128, i8* %131)
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %121, %69
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SQLITE_OK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %154, i8* %155)
  %157 = call i8* @prepareFreeAndCollectError(i32 %149, i64* %151, i8** %153, i8* %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %146, %140, %136
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SQLITE_OK, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %238

167:                                              ; preds = %161
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %169 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i8*, i8** %8, align 8
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 9
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %172, i8* %175, i8* %176, i8* %177, i8* %178)
  store i8* %179, i8** %19, align 8
  br label %226

180:                                              ; preds = %167
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @RBU_PK_NONE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %186, %180
  %193 = load i8*, i8** %8, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 9
  %199 = load i8*, i8** %198, align 8
  %200 = load i8*, i8** %17, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i8* %193, i32 %196, i8* %199, i8* %200, i8* %201, i8* %202)
  store i8* %203, i8** %19, align 8
  br label %225

204:                                              ; preds = %186
  %205 = load i8*, i8** %8, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 9
  %211 = load i8*, i8** %210, align 8
  %212 = load i8*, i8** %17, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 9
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = load i8*, i8** %17, align 8
  %219 = icmp ne i8* %218, null
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.7, i64 0, i64 0), i8* %205, i32 %208, i8* %211, i8* %212, i8* %213, i8* %216, i8* %217, i8* %221, i8* %222, i8* %223)
  store i8* %224, i8** %19, align 8
  br label %225

225:                                              ; preds = %204, %192
  br label %226

226:                                              ; preds = %225, %171
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 1
  %232 = load i8**, i8*** %9, align 8
  %233 = load i8*, i8** %19, align 8
  %234 = call i8* @prepareFreeAndCollectError(i32 %229, i64* %231, i8** %232, i8* %233)
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %226, %161
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 @sqlite3_free(i8* %239)
  %241 = load i8*, i8** %14, align 8
  %242 = call i32 @sqlite3_free(i8* %241)
  %243 = load i8*, i8** %15, align 8
  %244 = call i32 @sqlite3_free(i8* %243)
  %245 = load i8*, i8** %16, align 8
  %246 = call i32 @sqlite3_free(i8* %245)
  %247 = load i8*, i8** %17, align 8
  %248 = call i32 @sqlite3_free(i8* %247)
  br label %499

249:                                              ; preds = %66
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @RBU_PK_VTAB, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %273, label %255

255:                                              ; preds = %249
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @RBU_PK_NONE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %273, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %269 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %268)
  %270 = icmp ne i64 %269, 0
  br label %271

271:                                              ; preds = %267, %261
  %272 = phi i1 [ false, %261 ], [ %270, %267 ]
  br label %273

273:                                              ; preds = %271, %255, %249
  %274 = phi i1 [ true, %255 ], [ true, %249 ], [ %272, %271 ]
  %275 = zext i1 %274 to i32
  store i32 %275, i32* %20, align 4
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 4
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %21, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 10
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %282, %283
  %285 = call i8* @rbuObjIterGetBindlist(%struct.TYPE_26__* %279, i32 %284)
  store i8* %285, i8** %23, align 8
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %288 = call i8* @rbuObjIterGetWhere(%struct.TYPE_26__* %286, %struct.TYPE_27__* %287)
  store i8* %288, i8** %24, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %291 = call i8* @rbuObjIterGetOldlist(%struct.TYPE_26__* %289, %struct.TYPE_27__* %290, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i8* %291, i8** %25, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %294 = call i8* @rbuObjIterGetOldlist(%struct.TYPE_26__* %292, %struct.TYPE_27__* %293, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i8* %294, i8** %26, align 8
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %297 = call i8* @rbuObjIterGetCollist(%struct.TYPE_26__* %295, %struct.TYPE_27__* %296)
  store i8* %297, i8** %8, align 8
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 10
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %305 = call i32 @rbuCreateImposterTable(%struct.TYPE_26__* %303, %struct.TYPE_27__* %304)
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %308 = call i32 @rbuCreateImposterTable2(%struct.TYPE_26__* %306, %struct.TYPE_27__* %307)
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @RBU_PK_VTAB, align 8
  %313 = icmp eq i64 %311, %312
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  store i8* %315, i8** %22, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @SQLITE_OK, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %341

321:                                              ; preds = %273
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 7
  %327 = load i8**, i8*** %9, align 8
  %328 = load i8*, i8** %22, align 8
  %329 = load i8*, i8** %21, align 8
  %330 = load i8*, i8** %8, align 8
  %331 = load i32, i32* %20, align 4
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %335 = load i8*, i8** %23, align 8
  %336 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %328, i8* %329, i8* %330, i8* %334, i8* %335)
  %337 = call i8* @prepareFreeAndCollectError(i32 %324, i64* %326, i8** %327, i8* %336)
  %338 = ptrtoint i8* %337 to i64
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 1
  store i64 %338, i64* %340, align 8
  br label %341

341:                                              ; preds = %321, %273
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %343 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %342)
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %366

345:                                              ; preds = %341
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @SQLITE_OK, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %345
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 8
  %357 = load i8**, i8*** %9, align 8
  %358 = load i8*, i8** %22, align 8
  %359 = load i8*, i8** %21, align 8
  %360 = load i8*, i8** %24, align 8
  %361 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* %358, i8* %359, i8* %360)
  %362 = call i8* @prepareFreeAndCollectError(i32 %354, i64* %356, i8** %357, i8* %361)
  %363 = ptrtoint i8* %362 to i64
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i32 0, i32 1
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %351, %345, %341
  %367 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %368 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %367)
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %452

370:                                              ; preds = %366
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %371, i32 0, i32 11
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %452

375:                                              ; preds = %370
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %27, align 8
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 5
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @RBU_PK_NONE, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %381, %375
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %27, align 8
  br label %388

388:                                              ; preds = %387, %381
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = sext i32 %395 to i64
  %397 = inttoptr i64 %396 to i8*
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 9
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %405 = icmp eq i64 %403, %404
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 9
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 (%struct.TYPE_26__*, i32, i8*, i8*, i8*, i8*, ...) @rbuMPrintfExec(%struct.TYPE_26__* %389, i32 %392, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i64 0, i64 0), i8* %397, i8* %400, i8* %407, i8* %410)
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load i8*, i8** %22, align 8
  %417 = load i8*, i8** %21, align 8
  %418 = load i8*, i8** %25, align 8
  %419 = load i8*, i8** %22, align 8
  %420 = load i8*, i8** %21, align 8
  %421 = load i8*, i8** %25, align 8
  %422 = load i8*, i8** %22, align 8
  %423 = load i8*, i8** %21, align 8
  %424 = load i8*, i8** %26, align 8
  %425 = call i32 (%struct.TYPE_26__*, i32, i8*, i8*, i8*, i8*, ...) @rbuMPrintfExec(%struct.TYPE_26__* %412, i32 %415, i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.20, i64 0, i64 0), i8* %416, i8* %417, i8* %418, i8* %419, i8* %420, i8* %421, i8* %422, i8* %423, i8* %424)
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 5
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %437, label %431

431:                                              ; preds = %388
  %432 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %432, i32 0, i32 5
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @RBU_PK_NONE, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %446

437:                                              ; preds = %431, %388
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %439 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = load i8*, i8** %22, align 8
  %443 = load i8*, i8** %21, align 8
  %444 = load i8*, i8** %26, align 8
  %445 = call i32 (%struct.TYPE_26__*, i32, i8*, i8*, i8*, i8*, ...) @rbuMPrintfExec(%struct.TYPE_26__* %438, i32 %441, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.21, i64 0, i64 0), i8* %442, i8* %443, i8* %444)
  br label %446

446:                                              ; preds = %437, %431
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %448 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %449 = load i8*, i8** %8, align 8
  %450 = load i8*, i8** %27, align 8
  %451 = call i32 @rbuObjIterPrepareTmpInsert(%struct.TYPE_26__* %447, %struct.TYPE_27__* %448, i8* %449, i8* %450)
  br label %452

452:                                              ; preds = %446, %370, %366
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @SQLITE_OK, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %490

458:                                              ; preds = %452
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %28, align 8
  %459 = load i32, i32* %20, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %458
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %463 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %462)
  %464 = icmp ne i64 %463, 0
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)
  store i8* %466, i8** %28, align 8
  br label %467

467:                                              ; preds = %461, %458
  %468 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 1
  %473 = load i8**, i8*** %9, align 8
  %474 = load i8*, i8** %8, align 8
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %476 = call i64 @rbuIsVacuum(%struct.TYPE_26__* %475)
  %477 = icmp ne i64 %476, 0
  %478 = zext i1 %477 to i64
  %479 = select i1 %477, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %480 = load i8*, i8** %28, align 8
  %481 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %481, i32 0, i32 9
  %483 = load i8*, i8** %482, align 8
  %484 = load i8*, i8** %11, align 8
  %485 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %474, i8* %479, i8* %480, i8* %483, i8* %484)
  %486 = call i8* @prepareFreeAndCollectError(i32 %470, i64* %472, i8** %473, i8* %485)
  %487 = ptrtoint i8* %486 to i64
  %488 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %488, i32 0, i32 1
  store i64 %487, i64* %489, align 8
  br label %490

490:                                              ; preds = %467, %452
  %491 = load i8*, i8** %24, align 8
  %492 = call i32 @sqlite3_free(i8* %491)
  %493 = load i8*, i8** %25, align 8
  %494 = call i32 @sqlite3_free(i8* %493)
  %495 = load i8*, i8** %26, align 8
  %496 = call i32 @sqlite3_free(i8* %495)
  %497 = load i8*, i8** %23, align 8
  %498 = call i32 @sqlite3_free(i8* %497)
  br label %499

499:                                              ; preds = %490, %238
  %500 = load i8*, i8** %8, align 8
  %501 = call i32 @sqlite3_free(i8* %500)
  %502 = load i8*, i8** %11, align 8
  %503 = call i32 @sqlite3_free(i8* %502)
  br label %504

504:                                              ; preds = %499, %39, %3
  %505 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = trunc i64 %507 to i32
  ret i32 %508
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rbuObjIterCacheTableInfo(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i8* @rbuObjIterGetIndexCols(%struct.TYPE_26__*, %struct.TYPE_27__*, i8**, i8**, i8**, i32*) #1

declare dso_local i8* @rbuObjIterGetBindlist(%struct.TYPE_26__*, i32) #1

declare dso_local i8* @rbuObjIterGetIndexWhere(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3_test_control(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rbuMPrintfExec(%struct.TYPE_26__*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @prepareFreeAndCollectError(i32, i64*, i8**, i8*) #1

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @rbuObjIterGetWhere(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i8* @rbuObjIterGetOldlist(%struct.TYPE_26__*, %struct.TYPE_27__*, i8*) #1

declare dso_local i8* @rbuObjIterGetCollist(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @rbuCreateImposterTable(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @rbuCreateImposterTable2(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @rbuObjIterPrepareTmpInsert(%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
