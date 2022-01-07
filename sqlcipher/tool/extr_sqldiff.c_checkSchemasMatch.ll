; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_checkSchemasMatch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_checkSchemasMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [96 x i8] c"SELECT A.sql=B.sql FROM main.sqlite_master A, aux.sqlite_master B WHERE A.name=%Q AND B.name=%Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"schema changes for table %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"table %s missing from one or both databases\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @checkSchemasMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkSchemasMatch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32* @db_prepare(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %4, i8* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i64, i64* @SQLITE_ROW, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @sqlite3_step(i32* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @sqlite3_column_int(i32* %12, i32 0)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @safeId(i8* %16)
  %18 = call i32 @runtimeError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  br label %24

20:                                               ; preds = %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @safeId(i8* %21)
  %23 = call i32 @runtimeError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @sqlite3_finalize(i32* %25)
  ret void
}

declare dso_local i32* @db_prepare(i8*, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @runtimeError(i8*, i32) #1

declare dso_local i32 @safeId(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
