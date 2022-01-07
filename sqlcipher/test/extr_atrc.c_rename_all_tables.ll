; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_atrc.c_rename_all_tables.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_atrc.c_rename_all_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [80 x i8] c"SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"tx%d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ALTER TABLE \22%s\22 RENAME TO \22%w\22;\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ALTER TABLE \22%w\22 RENAME TO \22%s\22;\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_all_tables(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @sqlite3_prepare_v2(i32* %14, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %8, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @sqlite3_step(i32* %22)
  %24 = load i64, i64* @SQLITE_ROW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @sqlite3_column_text(i32* %27, i32 0)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = srem i32 %30, 26
  %32 = add nsw i32 %31, 97
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  store i8 0, i8* %35, align 1
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @sqlite3_str_appendf(i32* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %26
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @rename_all_columns_of_table(i32* %47, i8* %48, i8* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @sqlite3_str_appendf(i32* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @sqlite3_free(i8* %57)
  br label %21

59:                                               ; preds = %21
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @sqlite3_finalize(i32* %60)
  %62 = load i32, i32* @SQLITE_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @rename_all_columns_of_table(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
