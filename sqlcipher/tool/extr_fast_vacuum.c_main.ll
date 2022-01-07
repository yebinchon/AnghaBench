; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_fast_vacuum.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_fast_vacuum.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s DATABASE\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"-- open database file \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s-vacuum-%016llx\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s-backup-%016llx\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ATTACH '%q' AS vacuum_db;\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"PRAGMA writable_schema=ON\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.8 = private unnamed_addr constant [136 x i8] c"SELECT 'CREATE TABLE vacuum_db.' || substr(sql,14)   FROM sqlite_master WHERE type='table' AND name!='sqlite_sequence'   AND rootpage>0\00", align 1
@.str.9 = private unnamed_addr constant [103 x i8] c"SELECT 'CREATE INDEX vacuum_db.' || substr(sql,14)  FROM sqlite_master WHERE sql LIKE 'CREATE INDEX %'\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"SELECT 'CREATE UNIQUE INDEX vacuum_db.' || substr(sql,21)   FROM sqlite_master WHERE sql LIKE 'CREATE UNIQUE INDEX %'\00", align 1
@.str.11 = private unnamed_addr constant [178 x i8] c"SELECT 'INSERT INTO vacuum_db.' || quote(name) || ' SELECT * FROM main.' || quote(name) FROM main.sqlite_master WHERE type = 'table' AND name!='sqlite_sequence'   AND rootpage>0\00", align 1
@.str.12 = private unnamed_addr constant [105 x i8] c"SELECT 'DELETE FROM vacuum_db.' || quote(name) FROM vacuum_db.sqlite_master WHERE name='sqlite_sequence'\00", align 1
@.str.13 = private unnamed_addr constant [147 x i8] c"SELECT 'INSERT INTO vacuum_db.' || quote(name) || ' SELECT * FROM main.' || quote(name) FROM vacuum_db.sqlite_master WHERE name=='sqlite_sequence'\00", align 1
@.str.14 = private unnamed_addr constant [184 x i8] c"INSERT INTO vacuum_db.sqlite_master   SELECT type, name, tbl_name, rootpage, sql    FROM main.sqlite_master   WHERE type='view' OR type='trigger'      OR (type='table' AND rootpage=0)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"-- close database\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"-- rename \22%s\22 to \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @sqlite3_open(i8* %27, i32** %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @sqlite3_errstr(i32 %34)
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %35)
  store i32 1, i32* %3, align 4
  br label %91

37:                                               ; preds = %21
  %38 = call i32 @sqlite3_randomness(i32 4, i32* %8)
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  store i8* %46, i8** %12, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @execSql(i32* %47, i8* %48)
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @sqlite3_free(i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @execSql(i32* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @execSql(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @execExecSql(i32* %56, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0))
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @execExecSql(i32* %58, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @execExecSql(i32* %60, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.10, i64 0, i64 0))
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @execExecSql(i32* %62, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @execExecSql(i32* %64, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.12, i64 0, i64 0))
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @execExecSql(i32* %66, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.13, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @execSql(i32* %68, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.14, i64 0, i64 0))
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @execSql(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @sqlite3_close(i32* %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @rename(i8* %78, i8* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @rename(i8* %84, i8* %85)
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @sqlite3_free(i8* %87)
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @sqlite3_free(i8* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %37, %31, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i8* @sqlite3_errstr(i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @execSql(i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @execExecSql(i32*, i8*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
