; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest2.c_worker.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest2.c_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Starting worker %d\0A\00", align 1
@all_stop = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@DB_FILE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"PRAGMA synchronous=OFF\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"INSERT INTO t1 VALUES('bogus data')\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Worker %d finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i64, i64* @all_stop, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %16, 10000
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %50

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 100
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i32, i32* @DB_FILE, align 4
  %32 = call i64 @sqlite3_open(i32 %31, i32** %3)
  %33 = load i64, i64* @SQLITE_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (...) @sched_yield()
  br label %30

37:                                               ; preds = %30
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @sqlite3_exec(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %40 = load i64, i64* @all_stop, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @sqlite3_close(i32* %43)
  br label %50

45:                                               ; preds = %37
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @sqlite3_exec(i32* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @sqlite3_close(i32* %48)
  br label %12

50:                                               ; preds = %42, %19
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  ret i8* null
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @sqlite3_open(i32, i32**) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
