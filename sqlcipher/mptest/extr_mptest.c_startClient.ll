; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_startClient.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_startClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"INSERT OR IGNORE INTO client VALUES(%d,0)\00", align 1
@g = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s \22%s\22 --client %d --trace %d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%z --sqltrace\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%z --sync\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%z --vfs \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"system('%q')\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%z &\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"system() fails with error code %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @startClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @startClient(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @runSql(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 6), align 8
  %8 = call i64 @sqlite3_changes(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 5), align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 4), align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 8
  %17 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %14, i32 %15, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 3), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %10
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 1), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 1), align 8
  %35 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %33, i64 %34)
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 8
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @logMessage(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @system(i8* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @sqlite3_free(i8* %53)
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

declare dso_local i32 @runSql(i8*, i32) #1

declare dso_local i64 @sqlite3_changes(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @logMessage(i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @errorMessage(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
