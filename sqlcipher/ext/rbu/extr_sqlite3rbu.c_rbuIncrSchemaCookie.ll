; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuIncrSchemaCookie.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuIncrSchemaCookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"PRAGMA schema_version\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"PRAGMA schema_version = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @rbuIncrSchemaCookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuIncrSchemaCookie(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SQLITE_OK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i64 @rbuIsVacuum(%struct.TYPE_6__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32* [ %18, %15 ], [ %22, %19 ]
  store i32* %24, i32** %3, align 8
  store i32 1000000, i32* %4, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = call i64 @prepareAndCollectError(i32* %25, i32** %5, i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SQLITE_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = load i64, i64* @SQLITE_ROW, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @sqlite3_step(i32* %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @sqlite3_column_int(i32* %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @rbuFinalize(%struct.TYPE_6__* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %23
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SQLITE_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @rbuMPrintfExec(%struct.TYPE_6__* %55, i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %48
  br label %63

63:                                               ; preds = %62, %1
  ret void
}

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_6__*) #1

declare dso_local i64 @prepareAndCollectError(i32*, i32**, i32*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @rbuFinalize(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @rbuMPrintfExec(%struct.TYPE_6__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
