; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNew2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNew2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }

@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@FTS5_SEGITER_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*, i32, %struct.TYPE_16__**)* @fts5MultiIterNew2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MultiIterNew2(i32* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.TYPE_16__* @fts5MultiIterAlloc(i32* %11, i32 2)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %77

15:                                               ; preds = %4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 1
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %15
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = call i32 @fts5GetVarint(i32 %33, i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %27
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* @FTS5_SEGITER_REVERSE, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = call i32 @fts5SegIterReverseInitPage(i32* %59, %struct.TYPE_15__* %60)
  br label %66

62:                                               ; preds = %27
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = call i32 @fts5SegIterLoadNPos(i32* %63, %struct.TYPE_15__* %64)
  br label %66

66:                                               ; preds = %62, %51
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %71

67:                                               ; preds = %15
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = call i32 @fts5SegIterSetNext(i32* %72, %struct.TYPE_15__* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** %76, align 8
  br label %77

77:                                               ; preds = %71, %4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = call i32 @fts5DataRelease(%struct.TYPE_17__* %78)
  ret void
}

declare dso_local %struct.TYPE_16__* @fts5MultiIterAlloc(i32*, i32) #1

declare dso_local i32 @fts5GetVarint(i32, i32*) #1

declare dso_local i32 @fts5SegIterReverseInitPage(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @fts5SegIterLoadNPos(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @fts5SegIterSetNext(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
