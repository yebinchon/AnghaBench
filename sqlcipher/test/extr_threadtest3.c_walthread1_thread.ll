; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread1_thread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread1_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"SELECT md5sum(x) FROM t1 WHERE rowid != (SELECT max(rowid) FROM t1)\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"SELECT x FROM t1 WHERE rowid = (SELECT max(rowid) FROM t1)\00", align 1
@__const.walthread1_thread.azSql = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed read: %s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [132 x i8] c"BEGIN;INSERT INTO t1 VALUES(randomblob(100));INSERT INTO t1 VALUES(randomblob(100));INSERT INTO t1 SELECT md5sum(x) FROM t1;COMMIT;\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%d iterations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @walthread1_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @walthread1_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  %14 = call i32 @opendb(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

15:                                               ; preds = %47, %2
  %16 = call i32 @timetostop(%struct.TYPE_19__* %5)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.walthread1_thread.azSql to i8*), i64 16, i1 false)
  %21 = call i32 @execsql(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @integrity_check(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6)
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %24 = load i8*, i8** %23, align 16
  %25 = call i8* @execsql_text(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i32 1, i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @execsql_text(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i32 2, i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  %31 = call i8* @execsql_text(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i32 3, i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = call i32 @execsql(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %19
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %19
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @test_error(%struct.TYPE_19__* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = call i32 @sql_script(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %15

51:                                               ; preds = %15
  %52 = call i32 @closedb(%struct.TYPE_19__* %5, %struct.TYPE_18__* %6)
  %53 = call i32 @print_and_free_err(%struct.TYPE_19__* %5)
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  ret i8* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_19__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @execsql(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*) #2

declare dso_local i32 @integrity_check(%struct.TYPE_19__*, %struct.TYPE_18__*) #2

declare dso_local i8* @execsql_text(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @test_error(%struct.TYPE_19__*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @sql_script(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_19__*, %struct.TYPE_18__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_19__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
