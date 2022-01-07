; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_expert.c_readSqlFromFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_expert.c_readSqlFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to open file %s\0A\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to read file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @readSqlFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readSqlFromFile(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8**, i8*** %7, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i32 @fseek(i32* %23, i32 0, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @ftell(i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @rewind(i32* %28)
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i8* @sqlite3_malloc64(i64 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @fread(i8* %33, i64 %34, i32 1, i32* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @sqlite3_free(i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %22
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = call i32 @sqlite3_expert_sql(i32* %52, i8* %53, i8** %54)
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @sqlite3_free(i8* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %41, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i64 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_expert_sql(i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
