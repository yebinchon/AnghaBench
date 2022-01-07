; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_crashtest1.c_do_some_sql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_crashtest1.c_do_some_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@do_some_sql.zBig = internal global [107 x i8] c"-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"./test.db-journal\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test.db-saved\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cp test.db test.db-saved\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"test.db-journal-saved\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cp test.db-journal test.db-journal-saved\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"./test.db\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"database disk image is malformed\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"INSERT INTO t1 VALUES(%d,'%d%s')\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ERROR #%d: %s\0A\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"pid %d: cnt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_some_sql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_some_sql(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = call i64 @access(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = call i32 @unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @system(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @unlink(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @system(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %15

15:                                               ; preds = %10, %1
  %16 = call i32* @sqlite_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 0, i8** %3)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SIGKILL, align 4
  %28 = call i32 @kill(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %15
  %32 = call i32 (...) @getpid()
  %33 = call i32 @srand(i32 %32)
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 (...) @rand()
  %43 = call i32 (...) @rand()
  %44 = call i32 @sqlite_exec_printf(i32* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0, i8** %3, i32 %42, i32 %43, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @do_some_sql.zBig, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SQLITE_CORRUPT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @SIGKILL, align 4
  %59 = call i32 @kill(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %45
  %62 = call i32 (...) @getpid()
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %62, i32 %63)
  ret void
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32* @sqlite_open(i8*, i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @sqlite_exec_printf(i32*, i8*, i32, i32, i8**, i32, i32, i8*) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
