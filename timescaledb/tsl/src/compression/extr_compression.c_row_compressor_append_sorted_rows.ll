; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_row_compressor_append_sorted_rows.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_row_compressor_append_sorted_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@MAX_ROWS_PER_COMPRESSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @row_compressor_append_sorted_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @row_compressor_append_sorted_rows(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = call i32 @GetCurrentCommandId(i32 1)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @MakeTupleTableSlotCompat(i32 %15)
  store i32* %16, i32** %8, align 8
  store i32 1, i32* %10, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @tuplesort_gettupleslot(i32* %17, i32 1, i32 0, i32* %18, i32* null)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %77, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @slot_getallattrs(i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @row_compressor_update_group(%struct.TYPE_7__* %33, i32* %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @row_compressor_new_row_is_in_new_group(%struct.TYPE_7__* %37, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_ROWS_PER_COMPRESSION, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48, %36
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @row_compressor_flush(%struct.TYPE_7__* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @row_compressor_update_group(%struct.TYPE_7__* %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @row_compressor_append_row(%struct.TYPE_7__* %70, i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @MemoryContextSwitchTo(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @ExecClearTuple(i32* %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @tuplesort_gettupleslot(i32* %78, i32 1, i32 0, i32* %79, i32* null)
  store i32 %80, i32* %9, align 4
  br label %20

81:                                               ; preds = %20
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @row_compressor_flush(%struct.TYPE_7__* %87, i32 %88, i32 1)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @ExecDropSingleTupleTableSlot(i32* %91)
  ret void
}

declare dso_local i32 @GetCurrentCommandId(i32) #1

declare dso_local i32* @MakeTupleTableSlotCompat(i32) #1

declare dso_local i32 @tuplesort_gettupleslot(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @slot_getallattrs(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @row_compressor_update_group(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @row_compressor_new_row_is_in_new_group(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @row_compressor_flush(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @row_compressor_append_row(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
