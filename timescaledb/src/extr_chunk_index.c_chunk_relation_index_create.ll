; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_relation_index_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_relation_index_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32)* @chunk_relation_index_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_relation_index_create(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = call %struct.TYPE_18__* @BuildIndexInfo(%struct.TYPE_17__* %13)
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = call i32 @RelationGetDescr(%struct.TYPE_17__* %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = call i32 @RelationGetDescr(%struct.TYPE_17__* %17)
  %19 = call i64 @chunk_index_need_attnos_adjustment(i32 %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @list_length(i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = call i32 @chunk_adjust_colref_attnos(%struct.TYPE_18__* %28, %struct.TYPE_17__* %29, %struct.TYPE_17__* %30)
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = call i32 @adjust_expr_attnos(i32 %35, %struct.TYPE_18__* %36, %struct.TYPE_17__* %37)
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %5
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ts_hypertable_relid_to_id(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ts_chunk_index_create_post_adjustment(i32 %45, %struct.TYPE_17__* %46, %struct.TYPE_17__* %47, %struct.TYPE_18__* %48, i32 %49, i32 %50)
  ret i32 %51
}

declare dso_local %struct.TYPE_18__* @BuildIndexInfo(%struct.TYPE_17__*) #1

declare dso_local i64 @chunk_index_need_attnos_adjustment(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_17__*) #1

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @chunk_adjust_colref_attnos(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @adjust_expr_attnos(i32, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ts_hypertable_relid_to_id(i32) #1

declare dso_local i32 @ts_chunk_index_create_post_adjustment(i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
