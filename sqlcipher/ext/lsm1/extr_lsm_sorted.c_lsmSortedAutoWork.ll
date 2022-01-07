; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedAutoWork.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedAutoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmSortedAutoWork(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @LSM_OK, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.TYPE_14__* @lsmDbSnapshotLevel(i64 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %8, align 8
  br label %28

28:                                               ; preds = %34, %2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = call i64 @lsmTreeHasOld(%struct.TYPE_13__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @lsmSaveCursors(%struct.TYPE_13__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LSM_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %124

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %122

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @doLsmWork(%struct.TYPE_13__* %64, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @LSM_BUSY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @LSM_OK, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %56
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %121

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = call i32 @lsmMCursorFreeCache(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @lsmFreeSnapshot(i32 %88, i64 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @LSM_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = call i32 @lsmCheckpointLoad(%struct.TYPE_13__* %99, i32 0)
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %83
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @LSM_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = call i32 @lsmCheckpointDeserialize(%struct.TYPE_13__* %106, i32 0, i32 %109, i64* %111)
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @LSM_OK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = call i32 @lsmRestoreCursors(%struct.TYPE_13__* %118)
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %78, %75
  br label %122

122:                                              ; preds = %121, %53
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %50
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @lsmDbSnapshotLevel(i64) #1

declare dso_local i64 @lsmTreeHasOld(%struct.TYPE_13__*) #1

declare dso_local i32 @lsmSaveCursors(%struct.TYPE_13__*) #1

declare dso_local i32 @doLsmWork(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @lsmMCursorFreeCache(%struct.TYPE_13__*) #1

declare dso_local i32 @lsmFreeSnapshot(i32, i64) #1

declare dso_local i32 @lsmCheckpointLoad(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmCheckpointDeserialize(%struct.TYPE_13__*, i32, i32, i64*) #1

declare dso_local i32 @lsmRestoreCursors(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
