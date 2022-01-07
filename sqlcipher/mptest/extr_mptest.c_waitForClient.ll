; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_waitForClient.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_waitForClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [96 x i8] c"SELECT 1 FROM task WHERE client=%d   AND client IN (SELECT id FROM client)  AND endtime IS NULL\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"SELECT 1 FROM task WHERE client IN (SELECT id FROM client)   AND endtime IS NULL\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%stimeout waiting for client %d\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%stimeout waiting for all clients\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @waitForClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitForClient(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = call i32* (i8*, ...) @prepareSql(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32* %13, i32** %7, align 8
  br label %16

14:                                               ; preds = %3
  %15 = call i32* (i8*, ...) @prepareSql(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %14, %11
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sqlite3_step(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @SQLITE_BUSY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SQLITE_ROW, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sqlite3_reset(i32* %32)
  %34 = call i32 @sqlite3_sleep(i32 50)
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 50
  store i32 %36, i32* %5, align 4
  br label %17

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @sqlite3_finalize(i32* %38)
  %40 = load i64, i64* @DEFAULT_TIMEOUT, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SQLITE_DONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, i8*, ...) @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (i8*, i8*, ...) @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %37
  ret void
}

declare dso_local i32* @prepareSql(i8*, ...) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_sleep(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @errorMessage(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
