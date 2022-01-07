; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner.c_timescaledb_set_rel_pathlist.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner.c_timescaledb_set_rel_pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { i32 }

@ts_guc_optimize_non_hypertables = common dso_local global i32 0, align 4
@ts_cm_functions = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_11__*)* @timescaledb_set_rel_pathlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timescaledb_set_rel_pathlist(i32* %0, i32* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = call i32 @prev_set_rel_pathlist_hook(i32* %16, i32* %17, i32 %18, %struct.TYPE_11__* %19)
  %21 = call i32 (...) @ts_extension_is_loaded()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @IS_DUMMY_REL(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OidIsValid(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %23, %4
  br label %101

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = call i32 @is_hypertable_chunk_dml(i32* %35, i32* %36, i32 %37, %struct.TYPE_11__* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @ts_guc_optimize_non_hypertables, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = call i64 @is_append_parent(i32* %43, %struct.TYPE_11__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = call i64 @is_append_child(i32* %48, %struct.TYPE_11__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %101

56:                                               ; preds = %52, %47, %42, %34
  %57 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = call i64 @is_append_child(i32* %58, %struct.TYPE_11__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %56
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @get_parentoid(i32* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32* @ts_hypertable_cache_get_entry(i32* %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @timescaledb_set_rel_pathlist_query(i32* %76, i32* %77, i32 %78, %struct.TYPE_11__* %79, i32* %80)
  br label %98

82:                                               ; preds = %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ts_cm_functions, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)** %84, align 8
  %86 = icmp ne i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ts_cm_functions, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32*, i32, %struct.TYPE_11__*, i32*)** %89, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 %90(i32* %91, i32* %92, i32 %93, %struct.TYPE_11__* %94, i32* %95)
  br label %97

97:                                               ; preds = %87, %82
  br label %98

98:                                               ; preds = %97, %75
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @ts_cache_release(i32* %99)
  br label %101

101:                                              ; preds = %98, %55, %33
  ret void
}

declare dso_local i32 @prev_set_rel_pathlist_hook(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ts_extension_is_loaded(...) #1

declare dso_local i64 @IS_DUMMY_REL(i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @is_hypertable_chunk_dml(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @is_append_parent(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @is_append_child(i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32 @get_parentoid(i32*, i32) #1

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @timescaledb_set_rel_pathlist_query(i32*, i32*, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
