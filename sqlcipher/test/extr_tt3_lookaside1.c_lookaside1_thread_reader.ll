; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_lookaside1.c_lookaside1_thread_reader.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_lookaside1.c_lookaside1_thread_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SELECT 1 FROM t1\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"SELECT length(x||y||z) FROM t2\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"finalize\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @lookaside1_thread_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookaside1_thread_reader(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = call i32 @opendb(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %40, %2
  %13 = call i32 @timetostop(%struct.TYPE_14__* %5)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  store i32* null, i32** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sqlite3_prepare_v2(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  br label %20

20:                                               ; preds = %25, %16
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @sqlite3_step(i32* %21)
  %23 = load i64, i64* @SQLITE_ROW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @execsql(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %20

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @sqlite3_finalize(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @sqlite_error(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34, %27
  br label %12

41:                                               ; preds = %12
  %42 = call i32 @closedb(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6)
  %43 = call i32 @print_and_free_err(%struct.TYPE_14__* %5)
  %44 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret i8* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_14__*) #2

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @execsql(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @sqlite3_finalize(i32*) #2

declare dso_local i32 @sqlite_error(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_14__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
