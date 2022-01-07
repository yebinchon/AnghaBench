; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_drop_constraint.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_drop_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@Anum_chunk_constraint_constraint_name = common dso_local global i32 0, align 4
@Anum_chunk_constraint_chunk_id = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @chunk_constraint_drop_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_constraint_drop_constraint(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @Anum_chunk_constraint_constraint_name, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @heap_getattr(i32 %10, i32 %11, i32 %14, i32* %3)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @Anum_chunk_constraint_chunk_id, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @heap_getattr(i32 %18, i32 %19, i32 %22, i32* %3)
  %24 = call i32 @DatumGetInt32(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_9__* @ts_chunk_get_by_id(i32 %25, i32 0, i32 1)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32* @DatumGetName(i32 %31)
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NameStr(i32 %33)
  %35 = call i32 @get_relation_constraint_oid(i32 %30, i32 %34, i32 1)
  store i32 %35, i32* %27, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %37 = load i32, i32* @ConstraintRelationId, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @OidIsValid(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @DROP_RESTRICT, align 4
  %44 = call i32 @performDeletion(%struct.TYPE_8__* %7, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local %struct.TYPE_9__* @ts_chunk_get_by_id(i32, i32, i32) #1

declare dso_local i32 @get_relation_constraint_oid(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @DatumGetName(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @performDeletion(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
