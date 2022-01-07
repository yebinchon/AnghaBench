; ModuleID = '/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_explain.c_show_sort_group_keys.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_explain.c_show_sort_group_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_23__ = type { i64, i32*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@CustomScan = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no tlist entry for key %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32*, %struct.TYPE_23__*)* @show_sort_group_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_sort_group_keys(%struct.TYPE_24__* %0, i32* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** @NIL, align 8
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @linitial(i32 %30)
  %32 = call i32 @list_length(i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @linitial(i32 %35)
  store i32* %36, i32** %14, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @lsecond(i32 %39)
  store i32* %40, i32** %15, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @lthird(i32 %43)
  store i32* %44, i32** %16, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @lfourth(i32 %47)
  store i32* %48, i32** %17, align 8
  %49 = load i32, i32* %13, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %3
  br label %137

52:                                               ; preds = %3
  %53 = call i32 @initStringInfo(%struct.TYPE_22__* %10)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = bitcast %struct.TYPE_24__* %57 to i32*
  %59 = load i32*, i32** %5, align 8
  %60 = call i32* @set_deparse_context_planstate(i32 %56, i32* %58, i32* %59)
  store i32* %60, i32** %8, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @list_length(i32* %63)
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %71, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %66, %52
  %72 = phi i1 [ true, %52 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %130, %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @list_nth_oid(i32* %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* @CustomScan, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call %struct.TYPE_17__* @castNode(i32 %82, i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call %struct.TYPE_21__* @get_tle_by_resno(i32 %86, i32 %87)
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %19, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %90 = icmp ne %struct.TYPE_21__* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @elog(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %78
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i8* @deparse_expression(i32* %99, i32* %100, i32 %101, i32 1)
  store i8* %102, i8** %20, align 8
  %103 = call i32 @resetStringInfo(%struct.TYPE_22__* %10)
  %104 = load i8*, i8** %20, align 8
  %105 = call i32 @appendStringInfoString(%struct.TYPE_22__* %10, i8* %104)
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** @NIL, align 8
  %108 = icmp ne i32* %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %95
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @list_nth_oid(i32* %114, i32 %115)
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @list_nth_oid(i32* %117, i32 %118)
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @list_nth_oid(i32* %120, i32 %121)
  %123 = call i32 @show_sortorder_options(%struct.TYPE_22__* %10, i32* %113, i32 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %109, %95
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pstrdup(i32 %127)
  %129 = call i32* @lappend(i32* %125, i32 %128)
  store i32* %129, i32** %9, align 8
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %74

133:                                              ; preds = %74
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = call i32 @ExplainPropertyList(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %134, %struct.TYPE_23__* %135)
  br label %137

137:                                              ; preds = %133, %51
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @linitial(i32) #1

declare dso_local i32* @lsecond(i32) #1

declare dso_local i32* @lthird(i32) #1

declare dso_local i32* @lfourth(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_22__*) #1

declare dso_local i32* @set_deparse_context_planstate(i32, i32*, i32*) #1

declare dso_local i32 @list_nth_oid(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @get_tle_by_resno(i32, i32) #1

declare dso_local %struct.TYPE_17__* @castNode(i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @deparse_expression(i32*, i32*, i32, i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_22__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @show_sortorder_options(%struct.TYPE_22__*, i32*, i32, i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @ExplainPropertyList(i8*, i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
