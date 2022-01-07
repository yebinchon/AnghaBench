; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DlidxIterInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DlidxIterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_15__*, i32, i32, i32)* @fts5DlidxIterInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @fts5DlidxIterInit(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %83, %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SQLITE_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  br i1 %26, label %27, label %86

27:                                               ; preds = %25
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @sqlite3_realloc64(%struct.TYPE_17__* %33, i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %13, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %38 = icmp eq %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i64, i64* @SQLITE_NOMEM, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %82

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @FTS5_DLIDX_ROWID(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %52
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %15, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %9, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %56 = call i32 @memset(%struct.TYPE_16__* %55, i32 0, i32 8)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call %struct.TYPE_14__* @fts5DataRead(%struct.TYPE_15__* %57, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %43
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %66, %43
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %39
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %16

86:                                               ; preds = %25
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SQLITE_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = call i32 @fts5DlidxIterFirst(%struct.TYPE_17__* %99)
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = call i32 @fts5DlidxIterLast(%struct.TYPE_15__* %102, %struct.TYPE_17__* %103)
  br label %105

105:                                              ; preds = %101, %98
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SQLITE_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = call i32 @fts5DlidxIterFree(%struct.TYPE_17__* %113)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  ret %struct.TYPE_17__* %116
}

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @FTS5_DLIDX_ROWID(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @fts5DataRead(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @fts5DlidxIterFirst(%struct.TYPE_17__*) #1

declare dso_local i32 @fts5DlidxIterLast(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @fts5DlidxIterFree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
