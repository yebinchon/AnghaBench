; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_vacuum.c_vacuum1_thread_writer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_vacuum.c_vacuum1_thread_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [135 x i8] c"WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop WHERE i<100) INSERT INTO t1 SELECT randomblob(50), randomblob(2500) FROM loop\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DELETE FROM t1 WHERE rowid = :i\00", align 1
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SELECT * FROM t1 ORDER BY x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @vacuum1_thread_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vacuum1_thread_writer(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = call i32 @opendb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %15, %2
  %12 = call i32 @timetostop(%struct.TYPE_13__* %5)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %7, align 8
  %18 = call i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, ...) @execsql(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, ...) @execsql(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64* %7)
  %20 = load i32, i32* @SQLITE_LOCKED, align 4
  %21 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %20)
  %22 = call i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, ...) @execsql(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32, i32* @SQLITE_LOCKED, align 4
  %24 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %23)
  br label %11

25:                                               ; preds = %11
  %26 = call i32 @closedb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6)
  %27 = call i32 @print_and_free_err(%struct.TYPE_13__* %5)
  %28 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret i8* %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_13__*) #2

declare dso_local i32 @execsql(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, ...) #2

declare dso_local i32 @clear_error(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @closedb(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_13__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
