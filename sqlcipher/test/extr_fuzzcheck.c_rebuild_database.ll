; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_rebuild_database.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_rebuild_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [385 x i8] c"BEGIN;\0ACREATE TEMP TABLE dbx AS SELECT DISTINCT dbcontent FROM db;\0ADELETE FROM db;\0AINSERT INTO db(dbid, dbcontent)  SELECT NULL, dbcontent FROM dbx ORDER BY 2;\0ADROP TABLE dbx;\0ACREATE TEMP TABLE sx AS SELECT DISTINCT sqltext FROM xsql %s;\0ADELETE FROM xsql;\0AINSERT INTO xsql(sqlid,sqltext)  SELECT NULL, sqltext FROM sx ORDER BY 2;\0ADROP TABLE sx;\0ACOMMIT;\0APRAGMA page_size=1024;\0AVACUUM;\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" WHERE isdbsql(sqltext)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot rebuild: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @rebuild_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebuild_database(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([385 x i8], [385 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @sqlite3_exec(i32* %12, i8* %13, i32 0, i32 0, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sqlite3_free(i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @sqlite3_errmsg(i32* %20)
  %22 = call i32 @fatalError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fatalError(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
