; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"fts5_decode\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@fts5DecodeFunction = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"fts5_decode_none\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fts5_rowid\00", align 1
@fts5RowidFunction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5IndexInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @SQLITE_UTF8, align 4
  %6 = load i32, i32* @fts5DecodeFunction, align 4
  %7 = call i32 @sqlite3_create_function(i32* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 2, i32 %5, i8* null, i32 %6, i32 0, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SQLITE_UTF8, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* @fts5DecodeFunction, align 4
  %17 = call i32 @sqlite3_create_function(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %13, i8* %15, i32 %16, i32 0, i32 0)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @SQLITE_UTF8, align 4
  %25 = load i32, i32* @fts5RowidFunction, align 4
  %26 = call i32 @sqlite3_create_function(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %24, i8* null, i32 %25, i32 0, i32 0)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
