; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread3_thread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread3_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"PRAGMA wal_autocheckpoint = 10\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SELECT max(cnt) FROM t1\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SELECT sum(cnt) FROM t1\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"SELECT sum(sum1) FROM t1\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"INSERT INTO t1 VALUES(:iNextWrite, :iSum1, :iSum2)\00", align 1
@WALTHREAD3_NTHREAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @walthread3_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @walthread3_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @PTR2INT(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = call i32 @opendb(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = call i32 @sql_script(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %2, %37
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = call i32 @timetostop(%struct.TYPE_16__* %5)
  store i32 %23, i32* %11, align 4
  %24 = icmp eq i32 0, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @execsql_i64(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %33

32:                                               ; preds = %25
  br label %22

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %47

37:                                               ; preds = %33
  %38 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @execsql_i64(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %9, align 4
  %39 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @execsql_i64(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  %40 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @execsql_i64(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32* %9, i32* %10)
  %41 = call i32 @integrity_check(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6)
  %42 = load i64, i64* @WALTHREAD3_NTHREAD, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %36
  %48 = call i32 @closedb(%struct.TYPE_16__* %5, %struct.TYPE_15__* %6)
  %49 = call i32 @print_and_free_err(%struct.TYPE_16__* %5)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PTR2INT(i8*) #2

declare dso_local i32 @opendb(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*) #2

declare dso_local i32 @timetostop(%struct.TYPE_16__*) #2

declare dso_local i32 @execsql_i64(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) #2

declare dso_local i32 @integrity_check(%struct.TYPE_16__*, %struct.TYPE_15__*) #2

declare dso_local i32 @closedb(%struct.TYPE_16__*, %struct.TYPE_15__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
