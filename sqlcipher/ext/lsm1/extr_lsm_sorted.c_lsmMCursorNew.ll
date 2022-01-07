; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64*, %struct.TYPE_15__* }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_IGNORE_SYSTEM = common dso_local global i32 0, align 4
@CURSOR_IGNORE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmMCursorNew(%struct.TYPE_14__* %0, %struct.TYPE_15__** %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__**, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  %8 = load i32, i32* @LSM_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = call i64 @lsmTreeHasOld(%struct.TYPE_14__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %13
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br label %44

44:                                               ; preds = %33, %13
  %45 = phi i1 [ false, %13 ], [ %43, %33 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @lsmTreeCursorDestroy(i64 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 0, i64* %66, align 8
  br label %85

67:                                               ; preds = %49, %44
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = call i32 @lsmTreeCursorNew(%struct.TYPE_14__* %78, i32 1, i64* %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %77, %70, %67
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32, i32* @CURSOR_IGNORE_SYSTEM, align 4
  %87 = load i32, i32* @CURSOR_IGNORE_DELETE, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %104

91:                                               ; preds = %2
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = call %struct.TYPE_15__* @multiCursorNew(%struct.TYPE_14__* %92, i32* %6)
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @LSM_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i32 @multiCursorInit(%struct.TYPE_15__* %98, %struct.TYPE_16__* %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @LSM_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = call i32 @lsmMCursorClose(%struct.TYPE_15__* %109, i32 0)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @LSM_OK, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = icmp ne %struct.TYPE_15__* %116, null
  %118 = zext i1 %117 to i32
  %119 = icmp eq i32 %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %123, align 8
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i64 @lsmTreeHasOld(%struct.TYPE_14__*) #1

declare dso_local i32 @lsmTreeCursorDestroy(i64) #1

declare dso_local i32 @lsmTreeCursorNew(%struct.TYPE_14__*, i32, i64*) #1

declare dso_local %struct.TYPE_15__* @multiCursorNew(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @multiCursorInit(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @lsmMCursorClose(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
