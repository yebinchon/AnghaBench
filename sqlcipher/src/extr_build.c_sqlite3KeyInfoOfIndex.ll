; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3KeyInfoOfIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3KeyInfoOfIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i8**, i32, i32*, i64 }

@sqlite3StrBINARY = common dso_local global i8* null, align 8
@SQLITE_ERROR_MISSING_COLLSEQ = common dso_local global i64 0, align 8
@SQLITE_ERROR_RETRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @sqlite3KeyInfoOfIndex(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %122

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call %struct.TYPE_12__* @sqlite3KeyInfoAlloc(i32 %30, i32 %31, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %9, align 8
  br label %42

36:                                               ; preds = %22
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.TYPE_12__* @sqlite3KeyInfoAlloc(i32 %39, i32 %40, i32 0)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %9, align 8
  br label %42

42:                                               ; preds = %36, %27
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %120

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = call i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_12__* %46)
  %48 = call i32 @assert(i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %90, %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** @sqlite3StrBINARY, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %69

65:                                               ; preds = %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @sqlite3LocateCollSeq(%struct.TYPE_11__* %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %64
  %70 = phi i32 [ 0, %64 ], [ %68, %65 ]
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %69
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SQLITE_ERROR_MISSING_COLLSEQ, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 8
  %113 = load i64, i64* @SQLITE_ERROR_RETRY, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %98
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = call i32 @sqlite3KeyInfoUnref(%struct.TYPE_12__* %117)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  br label %119

119:                                              ; preds = %116, %93
  br label %120

120:                                              ; preds = %119, %42
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %3, align 8
  br label %122

122:                                              ; preds = %120, %21
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %123
}

declare dso_local %struct.TYPE_12__* @sqlite3KeyInfoAlloc(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3LocateCollSeq(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @sqlite3KeyInfoUnref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
