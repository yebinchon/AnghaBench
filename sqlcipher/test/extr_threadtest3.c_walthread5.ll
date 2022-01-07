; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread5.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [1160 x i8] c"PRAGMA wal_autocheckpoint = 0;PRAGMA page_size = 1024;PRAGMA journal_mode = WAL;CREATE TABLE t1(x);BEGIN;INSERT INTO t1 VALUES(randomblob(900));INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*     2 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*     4 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*     8 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*    16 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*    32 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*    64 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*   128 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*   256 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*   512 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*  1024 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*  2048 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*  4096 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /*  8192 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /* 16384 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /* 32768 */INSERT INTO t1 SELECT randomblob(900) FROM t1;      /* 65536 */COMMIT;\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"test_sv.db\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"test.db-wal\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"test_sv.db-wal\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"  WAL file is %d bytes,\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" DB file is %d.\0A\00", align 1
@walthread5_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @walthread5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walthread5(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__, align 8
  %4 = alloca %struct.TYPE_19__, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.TYPE_20__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast %struct.TYPE_19__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = call i32 @opendb(%struct.TYPE_20__* %3, %struct.TYPE_19__* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = call i32 @sql_script(%struct.TYPE_20__* %3, %struct.TYPE_19__* %4, i8* getelementptr inbounds ([1160 x i8], [1160 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @filecopy(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @filecopy(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @closedb(%struct.TYPE_20__* %3, %struct.TYPE_19__* %4)
  %14 = call i32 @filecopy(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @filecopy(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SQLITE_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = call i64 @filesize(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %22 = trunc i64 %21 to i32
  %23 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = call i64 @filesize(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = trunc i64 %24 to i32
  %26 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @setstoptime(%struct.TYPE_20__* %3, i32 %28)
  %30 = load i32, i32* @walthread5_thread, align 4
  %31 = call i32 @launch_thread(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5, i32 %30, i32 0)
  %32 = load i32, i32* @walthread5_thread, align 4
  %33 = call i32 @launch_thread(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5, i32 %32, i32 0)
  %34 = load i32, i32* @walthread5_thread, align 4
  %35 = call i32 @launch_thread(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5, i32 %34, i32 0)
  %36 = load i32, i32* @walthread5_thread, align 4
  %37 = call i32 @launch_thread(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5, i32 %36, i32 0)
  %38 = load i32, i32* @walthread5_thread, align 4
  %39 = call i32 @launch_thread(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5, i32 %38, i32 0)
  %40 = call i32 @join_all_threads(%struct.TYPE_20__* %3, %struct.TYPE_18__* %5)
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = call i64 @filesize(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %47 = trunc i64 %46 to i32
  %48 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = call i64 @filesize(%struct.TYPE_20__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = trunc i64 %49 to i32
  %51 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %27
  %53 = call i32 @print_and_free_err(%struct.TYPE_20__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*) #2

declare dso_local i32 @filecopy(%struct.TYPE_20__*, i8*, i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i64 @filesize(%struct.TYPE_20__*, i8*) #2

declare dso_local i32 @setstoptime(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @launch_thread(%struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @join_all_threads(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
