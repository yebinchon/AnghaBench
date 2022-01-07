; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3InitHashTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3InitHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ANY = common dso_local global i32 0, align 4
@fts3TokenizerFunc = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@intTestFunc = common dso_local global i32 0, align 4
@testFunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3InitHashTable(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @SQLITE_ANY, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @fts3TokenizerFunc, align 4
  %23 = call i32 @sqlite3_create_function(i32* %18, i8* %19, i32 1, i32 %20, i8* %21, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @SQLITE_OK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @fts3TokenizerFunc, align 4
  %34 = call i32 @sqlite3_create_function(i32* %29, i8* %30, i32 2, i32 %31, i8* %32, i32 %33, i32 0, i32 0)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
