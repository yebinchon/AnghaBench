; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_sqlite3_db_dump.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_sqlite3_db_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i8*, i8*)*, i64, i64, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"PRAGMA foreign_keys=OFF;\0ABEGIN TRANSACTION;\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_master WHERE sql NOT NULL AND type=='table' AND name!='sqlite_sequence'\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_master WHERE name=='sqlite_sequence'\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"SELECT sql FROM sqlite_master WHERE sql NOT NULL AND type IN ('index','trigger','view')\00", align 1
@.str.5 = private unnamed_addr constant [116 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_master WHERE tbl_name=%Q COLLATE nocase AND type=='table'  AND sql NOT NULL\00", align 1
@.str.6 = private unnamed_addr constant [126 x i8] c"SELECT sql FROM \22%w\22.sqlite_master WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name=%Q COLLATE nocase\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"PRAGMA writable_schema=OFF;\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ROLLBACK; -- due to errors\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"COMMIT;\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_db_dump(i32* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call i32 @memset(%struct.TYPE_5__* %12, i32 0, i32 48)
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @sqlite3_exec(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %69

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32* %24, i32** %25, align 8
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 (i8*, i8*)* %26, i32 (i8*, i8*)** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 %30(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (%struct.TYPE_5__*, i8*, i8*, ...) @run_schema_dump_query(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (%struct.TYPE_5__*, i8*, i8*, ...) @run_schema_dump_query(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = call i32 (%struct.TYPE_5__*, i8*, i8*, ...) @output_sql_from_query(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %48

41:                                               ; preds = %23
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (%struct.TYPE_5__*, i8*, i8*, ...) @run_schema_dump_query(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.5, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (%struct.TYPE_5__*, i8*, i8*, ...) @output_sql_from_query(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 %53(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 %57(i8* %62, i8* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @sqlite3_exec(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 0)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %56, %20
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @run_schema_dump_query(%struct.TYPE_5__*, i8*, i8*, ...) #1

declare dso_local i32 @output_sql_from_query(%struct.TYPE_5__*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
