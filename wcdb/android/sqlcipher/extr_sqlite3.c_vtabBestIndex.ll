; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vtabBestIndex.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vtabBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*)* @vtabBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtabBestIndex(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_11__* @sqlite3GetVTable(i32 %11, i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @TRACE_IDX_INPUTS(i32* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 %22(%struct.TYPE_9__* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @TRACE_IDX_OUTPUTS(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SQLITE_NOMEM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sqlite3OomFault(i32 %42)
  br label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @sqlite3ErrStr(i32 %51)
  %53 = call i32 @sqlite3ErrorMsg(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sqlite3ErrorMsg(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %31, %3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @sqlite3_free(i64 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_11__* @sqlite3GetVTable(i32, i32*) #1

declare dso_local i32 @TRACE_IDX_INPUTS(i32*) #1

declare dso_local i32 @TRACE_IDX_OUTPUTS(i32*) #1

declare dso_local i32 @sqlite3OomFault(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @sqlite3ErrStr(i32) #1

declare dso_local i32 @sqlite3_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
