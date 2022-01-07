; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_memvfs.c_memOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_memvfs.c_memOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i8*, i64, i64, i32 }

@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"freeonclose\00", align 1
@mem_io_methods = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_5__*, i32, i32*)* @memOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memOpen(i32* %0, i8* %1, %struct.TYPE_5__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 32)
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %22, i32* %6, align 4
  br label %72

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @sqlite3_uri_int64(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 0)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %33, i32* %6, align 4
  br label %72

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @sqlite3_uri_int64(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %45, i32* %6, align 4
  br label %72

46:                                               ; preds = %34
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @sqlite3_uri_int64(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %63, i32* %6, align 4
  br label %72

64:                                               ; preds = %46
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @sqlite3_uri_boolean(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* @mem_io_methods, i32** %70, align 8
  %71 = load i32, i32* @SQLITE_OK, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %64, %62, %44, %32, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @sqlite3_uri_int64(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3_uri_boolean(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
