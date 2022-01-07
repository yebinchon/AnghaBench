; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@SQLITE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"row data mismatch\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"row missing\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@sqlite3_free = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @cidxColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 130
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 128
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %77 [
    i32 130, label %22
    i32 131, label %43
    i32 129, label %50
    i32 132, label %57
    i32 128, label %64
  ]

22:                                               ; preds = %17
  store i8* null, i8** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sqlite3_column_type(i32 %25, i32 0)
  %27 = load i32, i32* @SQLITE_INTEGER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sqlite3_column_int(i32 %32, i32 0)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %36

36:                                               ; preds = %35, %29
  br label %38

37:                                               ; preds = %22
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @SQLITE_STATIC, align 4
  %42 = call i32 @sqlite3_result_text(i32* %39, i8* %40, i32 -1, i32 %41)
  br label %77

43:                                               ; preds = %17
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3_column_value(i32 %47, i32 1)
  %49 = call i32 @sqlite3_result_value(i32* %44, i32 %48)
  br label %77

50:                                               ; preds = %17
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %56 = call i32 @sqlite3_result_text(i32* %51, i8* %54, i32 -1, i32 %55)
  br label %77

57:                                               ; preds = %17
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %63 = call i32 @sqlite3_result_text(i32* %58, i8* %61, i32 -1, i32 %62)
  br label %77

64:                                               ; preds = %17
  store i8* null, i8** %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cidxGenerateScanSql(%struct.TYPE_3__* %65, i8* %68, i8* %71, i8** %9)
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @sqlite3_free, align 4
  %76 = call i32 @sqlite3_result_text(i32* %73, i8* %74, i32 -1, i32 %75)
  br label %77

77:                                               ; preds = %17, %64, %57, %50, %43, %38
  %78 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_column_type(i32, i32) #1

declare dso_local i32 @sqlite3_column_int(i32, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

declare dso_local i32 @cidxGenerateScanSql(%struct.TYPE_3__*, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
