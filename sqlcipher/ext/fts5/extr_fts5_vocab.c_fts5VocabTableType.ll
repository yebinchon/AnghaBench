; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabTableType.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabTableType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"col\00", align 1
@FTS5_VOCAB_COL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@FTS5_VOCAB_ROW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@FTS5_VOCAB_INSTANCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"fts5vocab: unknown table type: %Q\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @fts5VocabTableType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabTableType(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @sqlite3Fts5Strndup(i32* %7, i8* %10, i32 -1)
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sqlite3Fts5Dequote(i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @sqlite3_stricmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @FTS5_VOCAB_COL, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @sqlite3_stricmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @FTS5_VOCAB_ROW, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %44

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @sqlite3_stricmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %43

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @sqlite3_free(i8* %46)
  br label %48

48:                                               ; preds = %45, %3
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i8* @sqlite3Fts5Strndup(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts5Dequote(i8*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
