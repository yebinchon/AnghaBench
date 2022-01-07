; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_all_tables_sql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_all_tables_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [420 x i8] c"CREATE TEMP TABLE tblmap(module COLLATE nocase, postfix);INSERT INTO temp.tblmap VALUES('fts3', '_content'), ('fts3', '_segments'), ('fts3', '_segdir'),('fts4', '_content'), ('fts4', '_segments'), ('fts4', '_segdir'),('fts4', '_docsize'), ('fts4', '_stat'),('fts5', '_data'), ('fts5', '_idx'), ('fts5', '_content'),('fts5', '_docsize'), ('fts5', '_config'),('rtree', '_node'), ('rtree', '_rowid'), ('rtree', '_parent');\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"module_name\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@module_name_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [600 x i8] c"SELECT name FROM main.sqlite_master\0A WHERE type='table' AND (\0A    module_name(sql) IS NULL OR \0A    module_name(sql) IN (SELECT module FROM temp.tblmap)\0A ) AND name NOT IN (\0A  SELECT a.name || b.postfix \0AFROM main.sqlite_master AS a, temp.tblmap AS b \0AWHERE module_name(a.sql) = b.module\0A )\0AUNION \0ASELECT name FROM aux.sqlite_master\0A WHERE type='table' AND (\0A    module_name(sql) IS NULL OR \0A    module_name(sql) IN (SELECT module FROM temp.tblmap)\0A ) AND name NOT IN (\0A  SELECT a.name || b.postfix \0AFROM aux.sqlite_master AS a, temp.tblmap AS b \0AWHERE module_name(a.sql) = b.module\0A )\0A ORDER BY name\00", align 1
@.str.3 = private unnamed_addr constant [205 x i8] c"SELECT name FROM main.sqlite_master\0A WHERE type='table' AND sql NOT LIKE 'CREATE VIRTUAL%%'\0A UNION\0ASELECT name FROM aux.sqlite_master\0A WHERE type='table' AND sql NOT LIKE 'CREATE VIRTUAL%%'\0A ORDER BY name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @all_tables_sql() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %7 = call i32 @sqlite3_exec(i32 %6, i8* getelementptr inbounds ([420 x i8], [420 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %14 = load i32, i32* @SQLITE_UTF8, align 4
  %15 = load i32, i32* @module_name_func, align 4
  %16 = call i32 @sqlite3_create_function(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %14, i32 0, i32 %15, i32 0, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i8* getelementptr inbounds ([600 x i8], [600 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %23

22:                                               ; preds = %0
  store i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_create_function(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
