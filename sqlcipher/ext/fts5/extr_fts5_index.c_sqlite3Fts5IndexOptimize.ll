; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexOptimize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexOptimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_OPT_WORK_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5IndexOptimize(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SQLITE_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = call i32 @fts5IndexFlush(%struct.TYPE_20__* %14)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = call %struct.TYPE_19__* @fts5StructureRead(%struct.TYPE_20__* %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %3, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = call i32 @fts5StructureInvalidate(%struct.TYPE_20__* %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = call %struct.TYPE_19__* @fts5IndexOptimizeStruct(%struct.TYPE_20__* %23, %struct.TYPE_19__* %24)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %4, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = call i32 @fts5StructureRelease(%struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = icmp eq %struct.TYPE_19__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %42, label %87

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %76, %57
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SQLITE_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %64, %58
  %75 = phi i1 [ false, %58 ], [ %73, %64 ]
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = load i32, i32* @FTS5_OPT_WORK_UNIT, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @fts5IndexMergeLevel(%struct.TYPE_20__* %78, %struct.TYPE_19__** %4, i32 %79, i32* %6)
  br label %58

81:                                               ; preds = %74
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = call i32 @fts5StructureWrite(%struct.TYPE_20__* %82, %struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = call i32 @fts5StructureRelease(%struct.TYPE_19__* %85)
  br label %87

87:                                               ; preds = %81, %36
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = call i32 @fts5IndexReturn(%struct.TYPE_20__* %88)
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5IndexFlush(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @fts5StructureRead(%struct.TYPE_20__*) #1

declare dso_local i32 @fts5StructureInvalidate(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @fts5IndexOptimizeStruct(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @fts5StructureRelease(%struct.TYPE_19__*) #1

declare dso_local i32 @fts5IndexMergeLevel(%struct.TYPE_20__*, %struct.TYPE_19__**, i32, i32*) #1

declare dso_local i32 @fts5StructureWrite(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @fts5IndexReturn(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
