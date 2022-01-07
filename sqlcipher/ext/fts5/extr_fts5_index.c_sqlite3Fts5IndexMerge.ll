; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5IndexMerge(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = call %struct.TYPE_18__* @fts5StructureRead(%struct.TYPE_19__* %8)
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = call i32 @fts5StructureInvalidate(%struct.TYPE_19__* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call %struct.TYPE_18__* @fts5IndexOptimizeStruct(%struct.TYPE_19__* %23, %struct.TYPE_18__* %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = call i32 @fts5StructureRelease(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %5, align 8
  store i32 2, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22, %12
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @fts5IndexMerge(%struct.TYPE_19__* %40, %struct.TYPE_18__** %5, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = call i32 @fts5StructureWrite(%struct.TYPE_19__* %46, %struct.TYPE_18__* %47)
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %34, %31
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = call i32 @fts5StructureRelease(%struct.TYPE_18__* %51)
  br label %53

53:                                               ; preds = %50, %2
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = call i32 @fts5IndexReturn(%struct.TYPE_19__* %54)
  ret i32 %55
}

declare dso_local %struct.TYPE_18__* @fts5StructureRead(%struct.TYPE_19__*) #1

declare dso_local i32 @fts5StructureInvalidate(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @fts5IndexOptimizeStruct(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fts5StructureRelease(%struct.TYPE_18__*) #1

declare dso_local i64 @fts5IndexMerge(%struct.TYPE_19__*, %struct.TYPE_18__**, i32, i32) #1

declare dso_local i32 @fts5StructureWrite(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fts5IndexReturn(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
