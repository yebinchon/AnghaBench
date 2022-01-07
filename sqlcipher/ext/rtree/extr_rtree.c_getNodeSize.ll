; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_getNodeSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_getNodeSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"PRAGMA %Q.page_size\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_MAXCELLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1\00", align 1
@SQLITE_CORRUPT_VTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"undersize RTree blobs in \22%q_node\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i8**)* @getNodeSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getNodeSize(i32* %0, %struct.TYPE_4__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @getIntFromStmt(i32* %19, i8* %20, i32* %11)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %14
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %26, 64
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RTREE_MAXCELLS, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 4, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RTREE_MAXCELLS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 4, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %25
  br label %55

50:                                               ; preds = %14
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @sqlite3_errmsg(i32* %51)
  %53 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %49
  br label %93

56:                                               ; preds = %4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @getIntFromStmt(i32* %64, i8* %65, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @sqlite3_errmsg(i32* %73)
  %75 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  br label %92

77:                                               ; preds = %56
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 448
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @SQLITE_CORRUPT_VTAB, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = call i32 @RTREE_IS_CORRUPT(%struct.TYPE_4__* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* (i8*, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i8**, i8*** %8, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %82, %77
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %55
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @sqlite3_free(i8* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i8* @sqlite3_mprintf(i8*, i32, ...) #1

declare dso_local i32 @getIntFromStmt(i32*, i8*, i32*) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @RTREE_IS_CORRUPT(%struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
