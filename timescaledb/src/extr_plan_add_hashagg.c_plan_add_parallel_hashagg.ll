; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_plan_add_hashagg.c_plan_add_parallel_hashagg.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_plan_add_hashagg.c_plan_add_parallel_hashagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__**, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { i32*, i32, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { double, double }

@UPPERREL_GROUP_AGG = common dso_local global i64 0, align 8
@AGGSPLIT_INITIAL_SERIAL = common dso_local global i32 0, align 4
@AGGSPLIT_FINAL_DESERIAL = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4
@AGG_HASHED = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, double)* @plan_add_parallel_hashagg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plan_add_parallel_hashagg(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, double %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  store double %3, double* %8, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %9, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_32__* @linitial(i32 %24)
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %10, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %27, align 8
  %29 = load i64, i64* @UPPERREL_GROUP_AGG, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %28, i64 %29
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  store %struct.TYPE_31__* %31, %struct.TYPE_31__** %11, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %34 = call %struct.TYPE_31__* @ts_make_partial_grouping_target(%struct.TYPE_30__* %32, %struct.TYPE_31__* %33)
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %12, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = call double @ts_estimate_group(%struct.TYPE_30__* %35, double %38)
  store double %39, double* %18, align 8
  %40 = load double, double* %18, align 8
  %41 = call i32 @IS_VALID_ESTIMATE(double %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %4
  br label %138

44:                                               ; preds = %4
  %45 = call i32 @MemSet(i32* %13, i32 0, i32 4)
  %46 = call i32 @MemSet(i32* %14, i32 0, i32 4)
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* @AGGSPLIT_INITIAL_SERIAL, align 4
  %58 = call i32 @get_agg_clause_costs(%struct.TYPE_30__* %52, i32* %56, i32 %57, i32* %13)
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* @AGGSPLIT_FINAL_DESERIAL, align 4
  %65 = call i32 @get_agg_clause_costs(%struct.TYPE_30__* %59, i32* %63, i32 %64, i32* %14)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @AGGSPLIT_FINAL_DESERIAL, align 4
  %71 = call i32 @get_agg_clause_costs(%struct.TYPE_30__* %66, i32* %69, i32 %70, i32* %14)
  br label %72

72:                                               ; preds = %51, %44
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %74 = load double, double* %18, align 8
  %75 = call i32 @ts_estimate_hashagg_tablesize(%struct.TYPE_32__* %73, i32* %13, double %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @work_mem, align 4
  %78 = call i32 @UINT64CONST(i32 1024)
  %79 = mul nsw i32 %77, %78
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %138

82:                                               ; preds = %72
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %88 = load i32, i32* @AGG_HASHED, align 4
  %89 = load i32, i32* @AGGSPLIT_INITIAL_SERIAL, align 4
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** @NIL, align 8
  %94 = load double, double* %18, align 8
  %95 = call i64 @create_agg_path(%struct.TYPE_30__* %84, %struct.TYPE_28__* %85, %struct.TYPE_32__* %86, %struct.TYPE_31__* %87, i32 %88, i32 %89, i32 %92, i32* %93, i32* %13, double %94)
  %96 = inttoptr i64 %95 to %struct.TYPE_32__*
  %97 = call i32 @add_partial_path(%struct.TYPE_28__* %83, %struct.TYPE_32__* %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %82
  br label %138

103:                                              ; preds = %82
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_32__* @linitial(i32 %106)
  store %struct.TYPE_32__* %107, %struct.TYPE_32__** %17, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fmul double %110, %113
  store double %114, double* %16, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %119 = call i64 @create_gather_path(%struct.TYPE_30__* %115, %struct.TYPE_28__* %116, %struct.TYPE_32__* %117, %struct.TYPE_31__* %118, i32* null, double* %16)
  %120 = inttoptr i64 %119 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %120, %struct.TYPE_32__** %17, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %126 = load i32, i32* @AGG_HASHED, align 4
  %127 = load i32, i32* @AGGSPLIT_FINAL_DESERIAL, align 4
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load double, double* %8, align 8
  %135 = call i64 @create_agg_path(%struct.TYPE_30__* %122, %struct.TYPE_28__* %123, %struct.TYPE_32__* %124, %struct.TYPE_31__* %125, i32 %126, i32 %127, i32 %130, i32* %133, i32* %14, double %134)
  %136 = inttoptr i64 %135 to %struct.TYPE_32__*
  %137 = call i32 @add_path(%struct.TYPE_28__* %121, %struct.TYPE_32__* %136)
  br label %138

138:                                              ; preds = %103, %102, %81, %43
  ret void
}

declare dso_local %struct.TYPE_32__* @linitial(i32) #1

declare dso_local %struct.TYPE_31__* @ts_make_partial_grouping_target(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local double @ts_estimate_group(%struct.TYPE_30__*, double) #1

declare dso_local i32 @IS_VALID_ESTIMATE(double) #1

declare dso_local i32 @MemSet(i32*, i32, i32) #1

declare dso_local i32 @get_agg_clause_costs(%struct.TYPE_30__*, i32*, i32, i32*) #1

declare dso_local i32 @ts_estimate_hashagg_tablesize(%struct.TYPE_32__*, i32*, double) #1

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32 @add_partial_path(%struct.TYPE_28__*, %struct.TYPE_32__*) #1

declare dso_local i64 @create_agg_path(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32, i32, i32*, i32*, double) #1

declare dso_local i64 @create_gather_path(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_32__*, %struct.TYPE_31__*, i32*, double*) #1

declare dso_local i32 @add_path(%struct.TYPE_28__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
