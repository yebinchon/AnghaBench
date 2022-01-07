; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest_TERM.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest_TERM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64 }

@FTS5_TERM = common dso_local global i64 0, align 8
@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @fts5ExprNodeTest_TERM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeTest_TERM(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %11, i64 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTS5_TERM, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i1 [ false, %2 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %38
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i32* %68, i32** %71, align 8
  br label %72

72:                                               ; preds = %64, %38
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
