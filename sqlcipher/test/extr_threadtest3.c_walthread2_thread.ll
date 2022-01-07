; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread2_thread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread2_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"PRAGMA journal_mode = WAL\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"PRAGMA journal_mode = DELETE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@SQLITE_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"INSERT INTO t1 VALUES(NULL, randomblob(100))\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"test.db-journal\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"test.db-wal\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"File system looks incorrect (%d, %d)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"W %d R %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @walthread2_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @walthread2_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = bitcast %struct.TYPE_17__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @PTR2INT(i8* %15)
  store i32 %16, i32* %8, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %20

20:                                               ; preds = %19, %2
  br label %21

21:                                               ; preds = %47, %20
  %22 = call i32 @timetostop(%struct.TYPE_17__* %5)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = call i32 @opendb(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @sql_script(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6, i8* %27)
  %29 = load i32, i32* @SQLITE_BUSY, align 4
  %30 = call i32 @clear_error(%struct.TYPE_17__* %5, i32 %29)
  %31 = call i32 @sql_script(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @sql_script(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i64 @filesize(%struct.TYPE_17__* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = call i64 @filesize(%struct.TYPE_17__* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @test_error(%struct.TYPE_17__* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = call i32 @sql_script(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %54 = call i32 @integrity_check(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6)
  %55 = call i32 @closedb(%struct.TYPE_17__* %5, %struct.TYPE_16__* %6)
  br label %21

56:                                               ; preds = %21
  %57 = call i32 @print_and_free_err(%struct.TYPE_17__* %5)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 %61)
  ret i8* %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PTR2INT(i8*) #2

declare dso_local i32 @timetostop(%struct.TYPE_17__*) #2

declare dso_local i32 @opendb(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*) #2

declare dso_local i32 @clear_error(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @filesize(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @test_error(%struct.TYPE_17__*, i8*, i32, i32) #2

declare dso_local i32 @integrity_check(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @closedb(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_17__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
