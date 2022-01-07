; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_trigger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [328 x i8] c"BEGIN;CREATE TABLE t1(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TABLE t2(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TABLE t3(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE VIEW v1 AS SELECT rowid, i, t FROM t1;CREATE VIEW v2 AS SELECT rowid, i, t FROM t2;CREATE VIEW v3 AS SELECT rowid, i, t FROM t3;\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"INSERT INTO t%d VALUES(NULL,?1,?2)\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"CREATE INDEX i1 ON t1(t);CREATE INDEX i2 ON t2(t);CREATE INDEX i3 ON t3(t);COMMIT;\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"speed4p-join1\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"SELECT * FROM t1, t2, t3 WHERE t1.oid = t2.oid AND t2.oid = t3.oid\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"speed4p-join2\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"SELECT * FROM t1, t2, t3 WHERE t1.t = t2.t AND t2.t = t3.t\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"speed4p-view1\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"SELECT * FROM v%d WHERE rowid = ?\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"speed4p-table1\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"SELECT * FROM t%d WHERE rowid = ?\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"speed4p-subselect1\00", align 1
@.str.12 = private unnamed_addr constant [115 x i8] c"SELECT (SELECT t FROM t1 WHERE rowid = ?1),(SELECT t FROM t2 WHERE rowid = ?1),(SELECT t FROM t3 WHERE rowid = ?1)\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"speed4p-rowid-update\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"UPDATE t1 SET i=i+1 WHERE rowid=?1\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"CREATE TABLE t5(t TEXT PRIMARY KEY, i INTEGER);\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"speed4p-insert-ignore\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"INSERT OR IGNORE INTO t5 SELECT t, i FROM t1\00", align 1
@.str.20 = private unnamed_addr constant [490 x i8] c"CREATE TABLE log(op TEXT, r INTEGER, i INTEGER, t TEXT);CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TRIGGER t4_trigger1 AFTER INSERT ON t4 BEGIN  INSERT INTO log VALUES('INSERT INTO t4', new.rowid, new.i, new.t);END;CREATE TRIGGER t4_trigger2 AFTER UPDATE ON t4 BEGIN  INSERT INTO log VALUES('UPDATE OF t4', new.rowid, new.i, new.t);END;CREATE TRIGGER t4_trigger3 AFTER DELETE ON t4 BEGIN  INSERT INTO log VALUES('DELETE OF t4', old.rowid, old.i, old.t);END;BEGIN;\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"speed4p-trigger1\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"INSERT INTO t4 VALUES(NULL, ?1, ?2)\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"speed4p-trigger2\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"UPDATE t4 SET i = ?1, t = ?2 WHERE rowid = ?3\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"speed4p-trigger3\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"DELETE FROM t4 WHERE rowid = ?1\00", align 1
@.str.27 = private unnamed_addr constant [105 x i8] c"DROP TABLE t4;DROP TABLE log;VACUUM;CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);BEGIN;\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger1\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger2\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testset_trigger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2000 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %8 = mul nsw i32 500, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %10 = mul nsw i32 100, %9
  store i32 %10, i32* %5, align 4
  %11 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %41, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp sle i32 %13, 3
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %37, %15
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = call i32 (...) @speedtest1_random()
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %28 = call i32 @speedtest1_numbername(i32 %26, i8* %27, i32 2000)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sqlite3_bind_int(i32 %29, i32 1, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %33 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %34 = load i32, i32* @SQLITE_STATIC, align 4
  %35 = call i32 @sqlite3_bind_text(i32 %32, i32 2, i8* %33, i32 -1, i32 %34)
  %36 = call i32 (...) @speedtest1_run()
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %18

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %12

44:                                               ; preds = %12
  %45 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @speedtest1_begin_test(i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (...) @speedtest1_run()
  %49 = call i32 (...) @speedtest1_end_test()
  %50 = call i32 @speedtest1_begin_test(i32 110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 (...) @speedtest1_run()
  %53 = call i32 (...) @speedtest1_end_test()
  %54 = call i32 @speedtest1_begin_test(i32 120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %55

55:                                               ; preds = %75, %44
  %56 = load i32, i32* %1, align 4
  %57 = icmp sle i32 %56, 3
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* %1, align 4
  %60 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %71, %58
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %67 = load i32, i32* %2, align 4
  %68 = mul nsw i32 %67, 3
  %69 = call i32 @sqlite3_bind_int(i32 %66, i32 1, i32 %68)
  %70 = call i32 (...) @speedtest1_run()
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 3
  store i32 %73, i32* %2, align 4
  br label %61

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %55

78:                                               ; preds = %55
  %79 = call i32 (...) @speedtest1_end_test()
  %80 = call i32 @speedtest1_begin_test(i32 130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %81

81:                                               ; preds = %101, %78
  %82 = load i32, i32* %1, align 4
  %83 = icmp sle i32 %82, 3
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* %1, align 4
  %86 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %97, %84
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %93 = load i32, i32* %2, align 4
  %94 = mul nsw i32 %93, 3
  %95 = call i32 @sqlite3_bind_int(i32 %92, i32 1, i32 %94)
  %96 = call i32 (...) @speedtest1_run()
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 3
  store i32 %99, i32* %2, align 4
  br label %87

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %81

104:                                              ; preds = %81
  %105 = call i32 (...) @speedtest1_end_test()
  %106 = call i32 @speedtest1_begin_test(i32 140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %107

107:                                              ; preds = %127, %104
  %108 = load i32, i32* %1, align 4
  %109 = icmp sle i32 %108, 3
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i32, i32* %1, align 4
  %112 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %123, %110
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %119 = load i32, i32* %2, align 4
  %120 = mul nsw i32 %119, 3
  %121 = call i32 @sqlite3_bind_int(i32 %118, i32 1, i32 %120)
  %122 = call i32 (...) @speedtest1_run()
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 3
  store i32 %125, i32* %2, align 4
  br label %113

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %107

130:                                              ; preds = %107
  %131 = call i32 (...) @speedtest1_end_test()
  %132 = call i32 @speedtest1_begin_test(i32 150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %133 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %134

134:                                              ; preds = %144, %130
  %135 = load i32, i32* %1, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %140 = load i32, i32* %1, align 4
  %141 = mul nsw i32 %140, 3
  %142 = call i32 @sqlite3_bind_int(i32 %139, i32 1, i32 %141)
  %143 = call i32 (...) @speedtest1_run()
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %134

147:                                              ; preds = %134
  %148 = call i32 (...) @speedtest1_end_test()
  %149 = call i32 @speedtest1_begin_test(i32 160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %150 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %152

152:                                              ; preds = %161, %147
  %153 = load i32, i32* %1, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %158 = load i32, i32* %1, align 4
  %159 = call i32 @sqlite3_bind_int(i32 %157, i32 1, i32 %158)
  %160 = call i32 (...) @speedtest1_run()
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %1, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %1, align 4
  br label %152

164:                                              ; preds = %152
  %165 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %166 = call i32 (...) @speedtest1_end_test()
  %167 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  %168 = call i32 @speedtest1_begin_test(i32 170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %169 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %170 = call i32 (...) @speedtest1_end_test()
  %171 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([490 x i8], [490 x i8]* @.str.20, i64 0, i64 0))
  %172 = call i32 @speedtest1_begin_test(i32 180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %173 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %174

174:                                              ; preds = %190, %164
  %175 = load i32, i32* %1, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %174
  %179 = load i32, i32* %1, align 4
  %180 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %181 = call i32 @speedtest1_numbername(i32 %179, i8* %180, i32 2000)
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %183 = load i32, i32* %1, align 4
  %184 = call i32 @sqlite3_bind_int(i32 %182, i32 1, i32 %183)
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %186 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %187 = load i32, i32* @SQLITE_STATIC, align 4
  %188 = call i32 @sqlite3_bind_text(i32 %185, i32 2, i8* %186, i32 -1, i32 %187)
  %189 = call i32 (...) @speedtest1_run()
  br label %190

190:                                              ; preds = %178
  %191 = load i32, i32* %1, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %1, align 4
  br label %174

193:                                              ; preds = %174
  %194 = call i32 (...) @speedtest1_end_test()
  %195 = call i32 @speedtest1_begin_test(i32 190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %197

197:                                              ; preds = %219, %193
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 %199, 2
  %201 = icmp sle i32 %198, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %197
  %203 = load i32, i32* %1, align 4
  %204 = mul nsw i32 %203, 2
  %205 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %206 = call i32 @speedtest1_numbername(i32 %204, i8* %205, i32 2000)
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %208 = load i32, i32* %1, align 4
  %209 = mul nsw i32 %208, 2
  %210 = call i32 @sqlite3_bind_int(i32 %207, i32 1, i32 %209)
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %212 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %213 = load i32, i32* @SQLITE_STATIC, align 4
  %214 = call i32 @sqlite3_bind_text(i32 %211, i32 2, i8* %212, i32 -1, i32 %213)
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %216 = load i32, i32* %1, align 4
  %217 = call i32 @sqlite3_bind_int(i32 %215, i32 3, i32 %216)
  %218 = call i32 (...) @speedtest1_run()
  br label %219

219:                                              ; preds = %202
  %220 = load i32, i32* %1, align 4
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %1, align 4
  br label %197

222:                                              ; preds = %197
  %223 = call i32 (...) @speedtest1_end_test()
  %224 = call i32 @speedtest1_begin_test(i32 200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %225 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %226

226:                                              ; preds = %237, %222
  %227 = load i32, i32* %1, align 4
  %228 = load i32, i32* %5, align 4
  %229 = mul nsw i32 %228, 2
  %230 = icmp sle i32 %227, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %233 = load i32, i32* %1, align 4
  %234 = mul nsw i32 %233, 2
  %235 = call i32 @sqlite3_bind_int(i32 %232, i32 1, i32 %234)
  %236 = call i32 (...) @speedtest1_run()
  br label %237

237:                                              ; preds = %231
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %1, align 4
  br label %226

240:                                              ; preds = %226
  %241 = call i32 (...) @speedtest1_end_test()
  %242 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %243 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  %244 = call i32 @speedtest1_begin_test(i32 210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %245 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %246

246:                                              ; preds = %262, %240
  %247 = load i32, i32* %1, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %265

250:                                              ; preds = %246
  %251 = load i32, i32* %1, align 4
  %252 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %253 = call i32 @speedtest1_numbername(i32 %251, i8* %252, i32 2000)
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %255 = load i32, i32* %1, align 4
  %256 = call i32 @sqlite3_bind_int(i32 %254, i32 1, i32 %255)
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %258 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %259 = load i32, i32* @SQLITE_STATIC, align 4
  %260 = call i32 @sqlite3_bind_text(i32 %257, i32 2, i8* %258, i32 -1, i32 %259)
  %261 = call i32 (...) @speedtest1_run()
  br label %262

262:                                              ; preds = %250
  %263 = load i32, i32* %1, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %1, align 4
  br label %246

265:                                              ; preds = %246
  %266 = call i32 (...) @speedtest1_end_test()
  %267 = call i32 @speedtest1_begin_test(i32 210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %268 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %269

269:                                              ; preds = %291, %265
  %270 = load i32, i32* %1, align 4
  %271 = load i32, i32* %5, align 4
  %272 = mul nsw i32 %271, 2
  %273 = icmp sle i32 %270, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %269
  %275 = load i32, i32* %1, align 4
  %276 = mul nsw i32 %275, 2
  %277 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %278 = call i32 @speedtest1_numbername(i32 %276, i8* %277, i32 2000)
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %280 = load i32, i32* %1, align 4
  %281 = mul nsw i32 %280, 2
  %282 = call i32 @sqlite3_bind_int(i32 %279, i32 1, i32 %281)
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %284 = getelementptr inbounds [2000 x i8], [2000 x i8]* %3, i64 0, i64 0
  %285 = load i32, i32* @SQLITE_STATIC, align 4
  %286 = call i32 @sqlite3_bind_text(i32 %283, i32 2, i8* %284, i32 -1, i32 %285)
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %288 = load i32, i32* %1, align 4
  %289 = call i32 @sqlite3_bind_int(i32 %287, i32 3, i32 %288)
  %290 = call i32 (...) @speedtest1_run()
  br label %291

291:                                              ; preds = %274
  %292 = load i32, i32* %1, align 4
  %293 = add nsw i32 %292, 2
  store i32 %293, i32* %1, align 4
  br label %269

294:                                              ; preds = %269
  %295 = call i32 (...) @speedtest1_end_test()
  %296 = call i32 @speedtest1_begin_test(i32 220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %297 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %298

298:                                              ; preds = %309, %294
  %299 = load i32, i32* %1, align 4
  %300 = load i32, i32* %5, align 4
  %301 = mul nsw i32 %300, 2
  %302 = icmp sle i32 %299, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %298
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %305 = load i32, i32* %1, align 4
  %306 = mul nsw i32 %305, 2
  %307 = call i32 @sqlite3_bind_int(i32 %304, i32 1, i32 %306)
  %308 = call i32 (...) @speedtest1_run()
  br label %309

309:                                              ; preds = %303
  %310 = load i32, i32* %1, align 4
  %311 = add nsw i32 %310, 2
  store i32 %311, i32* %1, align 4
  br label %298

312:                                              ; preds = %298
  %313 = call i32 (...) @speedtest1_end_test()
  %314 = call i32 @speedtest1_exec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @speedtest1_exec(i8*) #1

declare dso_local i32 @speedtest1_prepare(i8*, ...) #1

declare dso_local i32 @speedtest1_random(...) #1

declare dso_local i32 @speedtest1_numbername(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32, i32, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @speedtest1_run(...) #1

declare dso_local i32 @speedtest1_begin_test(i32, i8*) #1

declare dso_local i32 @speedtest1_end_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
