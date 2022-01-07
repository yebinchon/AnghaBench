; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteAppendPoslistData.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteAppendPoslistData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)* @fts5WriteAppendPoslistData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5WriteAppendPoslistData(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %85, %4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SQLITE_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %45, %50
  br label %52

52:                                               ; preds = %33, %27
  %53 = phi i1 [ false, %27 ], [ %51, %33 ]
  br i1 %53, label %54, label %103

54:                                               ; preds = %52
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %64, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %75, %54
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @fts5GetVarint(i32* %79, i32* %14)
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  br label %71

85:                                               ; preds = %71
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @fts5BufferAppendBlob(i64* %87, %struct.TYPE_11__* %89, i32 %90, i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = call i32 @fts5WriteFlushLeaf(%struct.TYPE_16__* %100, %struct.TYPE_14__* %101)
  br label %27

103:                                              ; preds = %52
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @fts5BufferAppendBlob(i64* %108, %struct.TYPE_11__* %110, i32 %111, i32* %112)
  br label %114

114:                                              ; preds = %106, %103
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5BufferAppendBlob(i64*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @fts5WriteFlushLeaf(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
