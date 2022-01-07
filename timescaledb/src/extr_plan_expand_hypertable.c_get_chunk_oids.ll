; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_plan_expand_hypertable.c_get_chunk_oids.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_plan_expand_hypertable.c_get_chunk_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }

@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_20__*)* @get_chunk_oids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_chunk_oids(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_19__* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32**, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = call i32* @ts_hypertable_restrict_info_create(%struct.TYPE_19__* %20, %struct.TYPE_20__* %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ts_hypertable_restrict_info_add(i32* %23, i32* %24, i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %68

33:                                               ; preds = %19
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @should_order_append(i32* %34, %struct.TYPE_19__* %35, %struct.TYPE_20__* %36, i32 %39, i32* %11, i32* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %33
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %13, align 8
  store i32** null, i32*** %14, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  store i32** %60, i32*** %14, align 8
  br label %61

61:                                               ; preds = %58, %42
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = load i32, i32* @AccessShareLock, align 4
  %65 = load i32**, i32*** %14, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32* @ts_hypertable_restrict_info_get_chunk_oids_ordered(i32* %62, %struct.TYPE_20__* %63, i32 %64, i32** %65, i32 %66)
  store i32* %67, i32** %5, align 8
  br label %77

68:                                               ; preds = %33, %19
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = load i32, i32* @AccessShareLock, align 4
  %72 = call i32* @find_children_oids(i32* %69, %struct.TYPE_20__* %70, i32 %71)
  store i32* %72, i32** %5, align 8
  br label %77

73:                                               ; preds = %4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = call i32* @get_explicit_chunk_oids(%struct.TYPE_21__* %74, %struct.TYPE_20__* %75)
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %73, %68, %61
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i32* @ts_hypertable_restrict_info_create(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ts_hypertable_restrict_info_add(i32*, i32*, i32) #1

declare dso_local i64 @should_order_append(i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32*, i32*) #1

declare dso_local i32* @ts_hypertable_restrict_info_get_chunk_oids_ordered(i32*, %struct.TYPE_20__*, i32, i32**, i32) #1

declare dso_local i32* @find_children_oids(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32* @get_explicit_chunk_oids(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
