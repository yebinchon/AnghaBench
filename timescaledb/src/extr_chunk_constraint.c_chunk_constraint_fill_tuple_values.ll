; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_fill_tuple_values.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_fill_tuple_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@Natts_chunk_constraint = common dso_local global i32 0, align 4
@Anum_chunk_constraint_chunk_id = common dso_local global i32 0, align 4
@Anum_chunk_constraint_dimension_slice_id = common dso_local global i32 0, align 4
@Anum_chunk_constraint_constraint_name = common dso_local global i32 0, align 4
@Anum_chunk_constraint_hypertable_constraint_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*)* @chunk_constraint_fill_tuple_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_constraint_fill_tuple_values(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @Natts_chunk_constraint, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @Natts_chunk_constraint, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @Natts_chunk_constraint, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32* %11, i32 0, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @Int32GetDatum(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @Anum_chunk_constraint_chunk_id, align 4
  %24 = call i64 @AttrNumberGetAttrOffset(i32 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Int32GetDatum(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @Anum_chunk_constraint_dimension_slice_id, align 4
  %33 = call i64 @AttrNumberGetAttrOffset(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @NameGetDatum(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @Anum_chunk_constraint_constraint_name, align 4
  %41 = call i64 @AttrNumberGetAttrOffset(i32 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @NameGetDatum(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @Anum_chunk_constraint_hypertable_constraint_name, align 4
  %49 = call i64 @AttrNumberGetAttrOffset(i32 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i64 @is_dimension_constraint(%struct.TYPE_6__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %3
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @Anum_chunk_constraint_hypertable_constraint_name, align 4
  %57 = call i64 @AttrNumberGetAttrOffset(i32 %56)
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 1, i32* %58, align 4
  br label %64

59:                                               ; preds = %3
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @Anum_chunk_constraint_dimension_slice_id, align 4
  %62 = call i64 @AttrNumberGetAttrOffset(i32 %61)
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i64 @is_dimension_constraint(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
