; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncFileSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncFileSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@ASYNC_MUTEX_QUEUE = common dso_local global i32 0, align 4
@async = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ASYNC_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asyncFileSize(%struct.TYPE_10__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = bitcast %struct.TYPE_10__* %10 to %struct.TYPE_13__*
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %16 = call i32 @async_mutex_enter(i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.TYPE_10__*, i64*)**
  %30 = load i32 (%struct.TYPE_10__*, i64*)*, i32 (%struct.TYPE_10__*, i64*)** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = call i32 %30(%struct.TYPE_10__* %31, i64* %7)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %24, %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %120

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @async, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %9, align 8
  br label %39

39:                                               ; preds = %113, %37
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %117

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ASYNC_DELETE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strcmp(i64 %56, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i64 0, i64* %7, align 8
  br label %112

63:                                               ; preds = %53, %48, %42
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %111

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = icmp eq %struct.TYPE_12__* %71, %72
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %79, %68
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %110 [
    i32 128, label %93
    i32 129, label %104
  ]

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %96, %100
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @MAX(i64 %101, i64 %102)
  store i64 %103, i64* %7, align 8
  br label %110

104:                                              ; preds = %89
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @MIN(i64 %105, i64 %108)
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %89, %104, %93
  br label %111

111:                                              ; preds = %110, %79, %74, %63
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %9, align 8
  br label %39

117:                                              ; preds = %39
  %118 = load i64, i64* %7, align 8
  %119 = load i64*, i64** %4, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %33
  %121 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %122 = call i32 @async_mutex_leave(i32 %121)
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @async_mutex_enter(i32) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @async_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
