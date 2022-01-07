; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_plan_add_hashagg.c_ts_plan_add_hashagg.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_plan_add_hashagg.c_ts_plan_add_hashagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32**, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32*, i32, i64 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i64 }

@UPPERREL_GROUP_AGG = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@AGGSPLIT_SIMPLE = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4
@AGG_HASHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_plan_add_hashagg(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %7, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %8, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* @UPPERREL_GROUP_AGG, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NIL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31, %3
  br label %151

43:                                               ; preds = %36
  %44 = call i32 @MemSet(%struct.TYPE_28__* %9, i32 0, i32 24)
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %51 = call i32 @get_agg_clause_costs(%struct.TYPE_26__* %45, i32* %49, i32 %50, %struct.TYPE_28__* %9)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %57 = call i32 @get_agg_clause_costs(%struct.TYPE_26__* %52, i32* %55, i32 %56, %struct.TYPE_28__* %9)
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NIL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @grouping_is_hashable(i64 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %67, %63, %43
  %74 = phi i1 [ false, %63 ], [ false, %43 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %151

79:                                               ; preds = %73
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call double @ts_estimate_group(%struct.TYPE_26__* %80, i32 %83)
  store double %84, double* %11, align 8
  %85 = load double, double* %11, align 8
  %86 = call i32 @IS_VALID_ESTIMATE(double %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %151

89:                                               ; preds = %79
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %91 = load double, double* %11, align 8
  %92 = call i32 @ts_estimate_hashagg_tablesize(%struct.TYPE_27__* %90, %struct.TYPE_28__* %9, double %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @work_mem, align 4
  %95 = call i32 @UINT64CONST(i32 1024)
  %96 = mul nsw i32 %94, %95
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %151

99:                                               ; preds = %89
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 0, i32* %14, align 4
  br label %124

105:                                              ; preds = %99
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NIL, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %123

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %112
  store i32 0, i32* %14, align 4
  br label %122

121:                                              ; preds = %116
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %104
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %131 = load double, double* %11, align 8
  %132 = call i32 @plan_add_parallel_hashagg(%struct.TYPE_26__* %128, %struct.TYPE_24__* %129, %struct.TYPE_24__* %130, double %131)
  br label %133

133:                                              ; preds = %127, %124
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* @AGG_HASHED, align 4
  %140 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load double, double* %11, align 8
  %148 = call i64 @create_agg_path(%struct.TYPE_26__* %135, %struct.TYPE_24__* %136, %struct.TYPE_27__* %137, i32* %138, i32 %139, i32 %140, i64 %143, i32* %146, %struct.TYPE_28__* %9, double %147)
  %149 = inttoptr i64 %148 to %struct.TYPE_27__*
  %150 = call i32 @add_path(%struct.TYPE_24__* %134, %struct.TYPE_27__* %149)
  br label %151

151:                                              ; preds = %133, %98, %88, %78, %42
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @get_agg_clause_costs(%struct.TYPE_26__*, i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @grouping_is_hashable(i64) #1

declare dso_local double @ts_estimate_group(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @IS_VALID_ESTIMATE(double) #1

declare dso_local i32 @ts_estimate_hashagg_tablesize(%struct.TYPE_27__*, %struct.TYPE_28__*, double) #1

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32 @plan_add_parallel_hashagg(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_24__*, double) #1

declare dso_local i32 @add_path(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i64 @create_agg_path(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_27__*, i32*, i32, i32, i64, i32*, %struct.TYPE_28__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
