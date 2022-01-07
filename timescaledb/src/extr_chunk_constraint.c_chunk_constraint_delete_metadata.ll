; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_delete_metadata.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_delete_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@Anum_chunk_constraint_constraint_name = common dso_local global i32 0, align 4
@Anum_chunk_constraint_chunk_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @chunk_constraint_delete_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_constraint_delete_metadata(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @Anum_chunk_constraint_constraint_name, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @heap_getattr(i32 %10, i32 %11, i32 %14, i32* %3)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @Anum_chunk_constraint_chunk_id, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @heap_getattr(i32 %18, i32 %19, i32 %22, i32* %3)
  %24 = call i32 @DatumGetInt32(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_7__* @ts_chunk_get_by_id(i32 %25, i32 0, i32 1)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @DatumGetName(i32 %30)
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NameStr(i32 %32)
  %34 = call i32 @get_relation_constraint_oid(i32 %29, i32 %33, i32 1)
  %35 = call i32 @get_constraint_index(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @OidIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ts_chunk_index_delete(%struct.TYPE_7__* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ts_catalog_delete(i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local %struct.TYPE_7__* @ts_chunk_get_by_id(i32, i32, i32) #1

declare dso_local i32 @get_constraint_index(i32) #1

declare dso_local i32 @get_relation_constraint_oid(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @DatumGetName(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ts_chunk_index_delete(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ts_catalog_delete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
