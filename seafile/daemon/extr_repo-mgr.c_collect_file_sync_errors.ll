; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_collect_file_sync_errors.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_collect_file_sync_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAFILE_TYPE_FILE_SYNC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"repo_name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"err_id\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @collect_file_sync_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_file_sync_errors(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32**
  store i32** %14, i32*** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @sqlite3_column_int(i32* %15, i32 0)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @sqlite3_column_text(i32* %17, i32 1)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @sqlite3_column_text(i32* %20, i32 2)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @sqlite3_column_text(i32* %23, i32 3)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @sqlite3_column_int(i32* %26, i32 4)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @sqlite3_column_int64(i32* %28, i32 5)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @SEAFILE_TYPE_FILE_SYNC_ERROR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32* @g_object_new(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32* null)
  store i32* %37, i32** %12, align 8
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32* @g_list_prepend(i32* %39, i32* %40)
  %42 = load i32**, i32*** %5, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* @TRUE, align 4
  ret i32 %43
}

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32* @g_object_new(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
