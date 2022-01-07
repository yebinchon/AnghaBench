; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_sqliteext.c_sqlite3_mmftsext_init.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_sqliteext.c_sqlite3_mmftsext_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"failed to load ICU library.\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@g_default_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to register SQLite functions: %s, ErrCode: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_mmftsext_init(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @SQLITE_EXTENSION_INIT2(i32* %10)
  %12 = call i64 (...) @init_icucompat()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i8**, i8*** %6, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sqlite3_register_mm_tokenizer(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %43

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @g_default_key, align 4
  %28 = call i32 @sqlite3_register_mm_cipher(i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sqlite3_register_mm_utils(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %43

40:                                               ; preds = %33
  %41 = load i8**, i8*** %6, align 8
  store i8* null, i8** %41, align 8
  %42 = load i32, i32* @SQLITE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %39, %32, %24
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @sqlite3_errmsg(i32* %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  %53 = load i8**, i8*** %6, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %40, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @SQLITE_EXTENSION_INIT2(i32*) #1

declare dso_local i64 @init_icucompat(...) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_register_mm_tokenizer(i32*) #1

declare dso_local i32 @sqlite3_register_mm_cipher(i32*, i32) #1

declare dso_local i32 @sqlite3_register_mm_utils(i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
