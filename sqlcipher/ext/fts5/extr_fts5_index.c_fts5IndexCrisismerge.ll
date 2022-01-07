; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexCrisismerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexCrisismerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__**)* @fts5IndexCrisismerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5IndexCrisismerge(%struct.TYPE_14__* %0, %struct.TYPE_13__** %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SQLITE_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ true, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %64, %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SQLITE_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %43, %44
  br label %46

46:                                               ; preds = %35, %29
  %47 = phi i1 [ false, %29 ], [ %45, %35 ]
  br i1 %47, label %48, label %75

48:                                               ; preds = %46
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @fts5IndexMergeLevel(%struct.TYPE_14__* %49, %struct.TYPE_13__** %6, i32 %50, i32 0)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SQLITE_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp sgt i32 %60, %62
  br label %64

64:                                               ; preds = %57, %48
  %65 = phi i1 [ true, %48 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = call i32 @fts5StructurePromote(%struct.TYPE_14__* %68, i32 %70, %struct.TYPE_13__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %29

75:                                               ; preds = %46
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %77, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5IndexMergeLevel(%struct.TYPE_14__*, %struct.TYPE_13__**, i32, i32) #1

declare dso_local i32 @fts5StructurePromote(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
