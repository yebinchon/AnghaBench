; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32 }

@BINFO_COLUMN_SZPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @binfoColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binfoColumn(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = bitcast %struct.TYPE_7__* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 136
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BINFO_COLUMN_SZPAGE, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sqlite3_column_int(i32 %28, i32 133)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @sqlite3_context_db_handle(i32* %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = call i32 @binfoCompute(i32* %32, i32 %33, %struct.TYPE_8__* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @sqlite3_errmsg(i32* %39)
  %41 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %92

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %20, %16, %3
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %90 [
    i32 135, label %50
    i32 128, label %50
    i32 129, label %50
    i32 132, label %50
    i32 130, label %50
    i32 136, label %59
    i32 134, label %65
    i32 133, label %71
    i32 137, label %77
    i32 131, label %83
  ]

50:                                               ; preds = %48, %48, %48, %48, %48
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @sqlite3_column_value(i32 %54, i32 %56)
  %58 = call i32 @sqlite3_result_value(i32* %51, i32 %57)
  br label %90

59:                                               ; preds = %48
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @sqlite3_result_int(i32* %60, i64 %63)
  br label %90

65:                                               ; preds = %48
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3_result_int64(i32* %66, i32 %69)
  br label %90

71:                                               ; preds = %48
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sqlite3_result_int(i32* %72, i64 %75)
  br label %90

77:                                               ; preds = %48
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @sqlite3_result_int(i32* %78, i64 %81)
  br label %90

83:                                               ; preds = %48
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SQLITE_STATIC, align 4
  %89 = call i32 @sqlite3_result_text(i32* %84, i32 %87, i32 -1, i32 %88)
  br label %90

90:                                               ; preds = %48, %83, %77, %71, %65, %59, %50
  %91 = load i32, i32* @SQLITE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %38
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @sqlite3_column_int(i32, i32) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @binfoCompute(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i64) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
