; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeRepairPtrs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeRepairPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, i64, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @treeRepairPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treeRepairPtrs(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load i32, i32* @LSM_OK, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = call i32 @treeCursorInit(%struct.TYPE_14__* %26, i32 0, %struct.TYPE_16__* %4)
  %28 = call i32 @lsmTreeCursorEnd(%struct.TYPE_16__* %4, i32 0)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %57, %14
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @LSM_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i64 @lsmTreeCursorValid(%struct.TYPE_16__* %4)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  br i1 %37, label %38, label %59

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %40, i64 %42
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %38
  %58 = call i32 @lsmTreeCursorNext(%struct.TYPE_16__* %4)
  store i32 %58, i32* %3, align 4
  br label %29

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  %63 = call i32 @tblobFree(i32 %61, i32* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %59, %1
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @treeCursorInit(%struct.TYPE_14__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @lsmTreeCursorEnd(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @lsmTreeCursorValid(%struct.TYPE_16__*) #1

declare dso_local i32 @lsmTreeCursorNext(%struct.TYPE_16__*) #1

declare dso_local i32 @tblobFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
