; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkOpen.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not enough memory, required: %zu bytes\00", align 1
@sqliterkNotify_onBeginParsePage = common dso_local global i32 0, align 4
@sqliterkNotify_onEndParsePage = common dso_local global i32 0, align 4
@sqliterkNotify_onBeginParseBtree = common dso_local global i32 0, align 4
@sqliterkNotify_onEndParseBtree = common dso_local global i32 0, align 4
@sqliterkNotify_onParseColumn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"RepairKit on '%s' opened, %s.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"plain-text\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkOpen(i8* %0, i32* %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %11 = icmp ne %struct.TYPE_7__** %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %13, i32* %4, align 4
  br label %75

14:                                               ; preds = %3
  %15 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = call %struct.TYPE_7__* @sqliterkOSMalloc(i32 28)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @sqliterkOSError(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 28)
  br label %66

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = call i32 @sqliterkPagerOpen(i8* %24, i32* %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SQLITERK_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %66

33:                                               ; preds = %23
  %34 = load i32, i32* @sqliterkNotify_onBeginParsePage, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @sqliterkNotify_onEndParsePage, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @sqliterkNotify_onBeginParseBtree, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @sqliterkNotify_onEndParseBtree, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @sqliterkNotify_onParseColumn, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %57, align 8
  %58 = load i32, i32* @SQLITERK_OK, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 @sqliterkOSInfo(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %63)
  %65 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %75

66:                                               ; preds = %32, %19
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = call i32 @sqliterkClose(%struct.TYPE_7__* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %73, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %33, %12
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_7__* @sqliterkOSMalloc(i32) #1

declare dso_local i32 @sqliterkOSError(i32, i8*, i32) #1

declare dso_local i32 @sqliterkPagerOpen(i8*, i32*, i32*) #1

declare dso_local i32 @sqliterkOSInfo(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sqliterkClose(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
