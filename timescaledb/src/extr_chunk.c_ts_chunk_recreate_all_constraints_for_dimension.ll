; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_recreate_all_constraints_for_dimension.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_recreate_all_constraints_for_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@chunk_recreate_constraint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_chunk_recreate_all_constraints_for_dimension(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @ts_dimension_slice_scan_by_dimension(i32 %8, i32 0)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* null, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @chunk_scan_ctx_init(i32* %6, i32* %14, i32* null)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %32, %13
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CurrentMemoryContext, align 4
  %31 = call i32 @ts_chunk_constraint_scan_by_dimension_slice(i32 %29, i32* %6, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32, i32* @chunk_recreate_constraint, align 4
  %37 = call i32 @chunk_scan_ctx_foreach_chunk(i32* %6, i32 %36, i32 0)
  %38 = call i32 @chunk_scan_ctx_destroy(i32* %6)
  br label %39

39:                                               ; preds = %35, %12
  ret void
}

declare dso_local %struct.TYPE_3__* @ts_dimension_slice_scan_by_dimension(i32, i32) #1

declare dso_local i32 @chunk_scan_ctx_init(i32*, i32*, i32*) #1

declare dso_local i32 @ts_chunk_constraint_scan_by_dimension_slice(i32, i32*, i32) #1

declare dso_local i32 @chunk_scan_ctx_foreach_chunk(i32*, i32, i32) #1

declare dso_local i32 @chunk_scan_ctx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
