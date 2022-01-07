; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest4.c_worker_open_connection.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest4.c_worker_open_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@worker_open_connection.aOrder = internal constant [6 x [3 x i8]] [[3 x i8] c"\01\02\03", [3 x i8] c"\01\03\02", [3 x i8] c"\02\01\03", [3 x i8] c"\02\03\01", [3 x i8] c"\03\01\02", [3 x i8] c"\03\02\01"], align 16
@.str = private unnamed_addr constant [14 x i8] c"tt4-test%d.db\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_SHAREDCACHE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"sqlite_open_v2(%s) failed on thread %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"PRAGMA read_uncommitted=ON;\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PRAGMA synchronous=OFF;\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ATTACH 'tt4-test%d.db' AS aux1\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ATTACH 'tt4-test%d.db' AS aux2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @worker_open_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_open_connection(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %10, %11
  %13 = srem i32 %12, 6
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @worker_open_connection.aOrder, i64 0, i64 %15
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @check_oom(i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @worker_trace(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %29 = load i32, i32* @SQLITE_OPEN_SHAREDCACHE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @sqlite3_open_v2(i8* %25, i32* %27, i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %2
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @sqlite3_free(i8* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = call i32 (%struct.TYPE_5__*, i8*, ...) @run_sql(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sqlite3_busy_timeout(i32 %50, i32 10000)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = call i32 (%struct.TYPE_5__*, i8*, ...) @run_sql(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @worker_open_connection.aOrder, i64 0, i64 %56
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %57, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (%struct.TYPE_5__*, i8*, ...) @run_sql(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @worker_open_connection.aOrder, i64 0, i64 %64
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %65, i64 0, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = call i32 (%struct.TYPE_5__*, i8*, ...) @run_sql(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8 zeroext) #1

declare dso_local i32 @check_oom(i8*) #1

declare dso_local i32 @worker_trace(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @run_sql(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @sqlite3_busy_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
