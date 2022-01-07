; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_ts_hypertable_restrict_info_get_chunk_oids_ordered.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_ts_hypertable_restrict_info_get_chunk_oids_ordered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32** }

@NIL = common dso_local global i32* null, align 8
@chunk_cmp_reverse = common dso_local global i32 0, align 4
@chunk_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_hypertable_restrict_info_get_chunk_oids_ordered(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.TYPE_12__** @hypertable_restrict_info_get_chunks(i32* %19, %struct.TYPE_11__* %20, i32 %21, i32* %12)
  store %struct.TYPE_12__** %22, %struct.TYPE_12__*** %13, align 8
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32*, i32** @NIL, align 8
  store i32* %28, i32** %6, align 8
  br label %130

29:                                               ; preds = %5
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @IS_OPEN_DIMENSION(i32* %43)
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @chunk_cmp_reverse, align 4
  %52 = call i32 @qsort(%struct.TYPE_12__** %49, i32 %50, i32 8, i32 %51)
  br label %58

53:                                               ; preds = %29
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @chunk_cmp, align 4
  %57 = call i32 @qsort(%struct.TYPE_12__** %54, i32 %55, i32 8, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %115, %58
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %64, i64 %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %18, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* null, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load i32*, i32** %16, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @ts_dimension_slice_cmp(i32* %72, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %71
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** @NIL, align 8
  %85 = icmp ne i32* %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32**, i32*** %10, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32* @lappend(i32* %88, i32* %89)
  %91 = load i32**, i32*** %10, align 8
  store i32* %90, i32** %91, align 8
  %92 = load i32*, i32** @NIL, align 8
  store i32* %92, i32** %15, align 8
  br label %93

93:                                               ; preds = %86, %82, %71, %63
  %94 = load i32**, i32*** %10, align 8
  %95 = icmp ne i32** null, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32*, i32** %15, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32* @lappend_oid(i32* %97, i32 %100)
  store i32* %101, i32** %15, align 8
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32*, i32** %14, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32* @lappend_oid(i32* %103, i32 %106)
  store i32* %107, i32** %14, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %16, align 8
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %17, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %59

118:                                              ; preds = %59
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** @NIL, align 8
  %121 = icmp ne i32* %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32**, i32*** %10, align 8
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = call i32* @lappend(i32* %124, i32* %125)
  %127 = load i32**, i32*** %10, align 8
  store i32* %126, i32** %127, align 8
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i32*, i32** %14, align 8
  store i32* %129, i32** %6, align 8
  br label %130

130:                                              ; preds = %128, %27
  %131 = load i32*, i32** %6, align 8
  ret i32* %131
}

declare dso_local %struct.TYPE_12__** @hypertable_restrict_info_get_chunks(i32*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IS_OPEN_DIMENSION(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_12__**, i32, i32, i32) #1

declare dso_local i64 @ts_dimension_slice_cmp(i32*, i32*) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
