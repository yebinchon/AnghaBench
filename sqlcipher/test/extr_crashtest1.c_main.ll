; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_crashtest1.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_crashtest1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test.db-journal\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot initialize: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CREATE TABLE t1(a,b)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"test %d, pid=%d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (...) @getpid()
  store i32 %12, i32* %10, align 4
  %13 = call i32 @unlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @unlink(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32* @sqlite_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i8** %8)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @sqlite_exec(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @sqlite_close(i32* %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %50, %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 10000
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = call i32 (...) @fork()
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 (...) @sched_yield()
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @do_some_sql(i32 %35)
  store i32 0, i32* %3, align 4
  br label %54

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39)
  %41 = call i32 (...) @rand()
  %42 = srem i32 %41, 10000
  %43 = add nsw i32 %42, 1000
  %44 = call i32 @usleep(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SIGKILL, align 4
  %47 = call i32 @kill(i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @waitpid(i32 %48, i32* %9, i32 0)
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %26

53:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %33, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32* @sqlite_open(i8*, i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite_close(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @do_some_sql(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
