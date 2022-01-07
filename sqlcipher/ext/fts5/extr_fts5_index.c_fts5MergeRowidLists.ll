; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MergeRowidLists.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MergeRowidLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @fts5MergeRowidLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MergeRowidLists(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = call i32 @memset(%struct.TYPE_14__* %12, i32 0, i32 8)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @sqlite3Fts5BufferSize(i64* %15, %struct.TYPE_14__* %12, i64 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %103

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = call i32 @fts5NextRowid(%struct.TYPE_14__* %30, i32* %7, i64* %9)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @fts5NextRowid(%struct.TYPE_14__* %32, i32* %8, i64* %10)
  br label %34

34:                                               ; preds = %98, %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %99

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48, %45
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp sgt i64 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ true, %52 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 @fts5BufferSafeAppendVarint(%struct.TYPE_14__* %12, i64 %65)
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = call i32 @fts5NextRowid(%struct.TYPE_14__* %68, i32* %7, i64* %9)
  br label %98

70:                                               ; preds = %48, %42
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp sgt i64 %74, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ true, %70 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i32 @fts5BufferSafeAppendVarint(%struct.TYPE_14__* %12, i64 %83)
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %11, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = call i32 @fts5NextRowid(%struct.TYPE_14__* %93, i32* %7, i64* %9)
  br label %95

95:                                               ; preds = %92, %88, %77
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = call i32 @fts5NextRowid(%struct.TYPE_14__* %96, i32* %8, i64* %10)
  br label %98

98:                                               ; preds = %95, %59
  br label %34

99:                                               ; preds = %40
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = call i32 @fts5BufferSwap(%struct.TYPE_14__* %12, %struct.TYPE_14__* %100)
  %102 = call i32 @fts5BufferFree(%struct.TYPE_14__* %12)
  br label %103

103:                                              ; preds = %99, %28
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5BufferSize(i64*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @fts5NextRowid(%struct.TYPE_14__*, i32*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5BufferSafeAppendVarint(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @fts5BufferSwap(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
