; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_block_troublesome_sql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_block_troublesome_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_PRAGMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vdbe_\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"parser_trace\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"temp_store_directory\00", align 1
@SQLITE_DENY = common dso_local global i32 0, align 4
@SQLITE_ATTACH = common dso_local global i32 0, align 4
@SQLITE_DETACH = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @block_troublesome_sql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_troublesome_sql(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SQLITE_PRAGMA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %6
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @sqlite3_strnicmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i32 5)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25, %21
  %34 = load i32, i32* @SQLITE_DENY, align 4
  store i32 %34, i32* %7, align 4
  br label %58

35:                                               ; preds = %29
  br label %56

36:                                               ; preds = %6
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SQLITE_ATTACH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SQLITE_DETACH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SQLITE_DENY, align 4
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %47, %44, %40
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* @SQLITE_OK, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %53, %33
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
