; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_opendb_x.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_opendb_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_URI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@md5step = common dso_local global i32 0, align 4
@md5finalize = common dso_local global i32 0, align 4
@busyhandler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"PRAGMA synchronous=OFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32)* @opendb_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opendb_x(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SQLITE_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %4
  %17 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %18 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @unlink(i8* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @sqlite3_open_v2(i8* %28, i64* %30, i32 %31, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = call i32 @sqlite_error(%struct.TYPE_8__* %36, %struct.TYPE_7__* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @sqlite3_close(i64 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %62

45:                                               ; preds = %27
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SQLITE_UTF8, align 4
  %50 = load i32, i32* @md5step, align 4
  %51 = load i32, i32* @md5finalize, align 4
  %52 = call i32 @sqlite3_create_function(i64 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 %49, i32 0, i32 0, i32 %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @busyhandler, align 4
  %57 = call i32 @sqlite3_busy_handler(i64 %55, i32 %56, i32 0)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sqlite3_exec(i64 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %62

62:                                               ; preds = %45, %35
  br label %63

63:                                               ; preds = %62, %4
  ret void
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i64*, i32, i32) #1

declare dso_local i32 @sqlite_error(%struct.TYPE_8__*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sqlite3_close(i64) #1

declare dso_local i32 @sqlite3_create_function(i64, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_busy_handler(i64, i32, i32) #1

declare dso_local i32 @sqlite3_exec(i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
