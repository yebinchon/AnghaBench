; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkfreelist.c_sqlGetInteger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkfreelist.c_sqlGetInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64*)* @sqlGetInteger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlGetInteger(i32* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @sqlite3_mprintf(i8* %14, i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %20, i32* %9, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @sqlite3_prepare_v2(i32* %22, i8* %23, i32 -1, i32** %12, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @sqlite3_free(i8* %25)
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i64, i64* @SQLITE_ROW, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @sqlite3_step(i32* %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %12, align 8
  %38 = call i64 @sqlite3_column_int(i32* %37, i32 0)
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %31, %27
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @sqlite3_finalize(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %52, %48
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
