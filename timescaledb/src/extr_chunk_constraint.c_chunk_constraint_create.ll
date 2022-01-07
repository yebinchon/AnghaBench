; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraint_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@CONSTROID = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* @chunk_constraint_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_constraint_create(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = call i32 @ts_process_utility_set_expect_chunk_modification(i32 1)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @chunk_constraint_create_on_table(%struct.TYPE_9__* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = call i32 @ts_process_utility_set_expect_chunk_modification(i32 0)
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @OidIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @InvalidOid, align 4
  store i32 %25, i32* %6, align 4
  br label %71

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @is_dimension_constraint(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NameStr(i32 %35)
  %37 = call i32 @get_relation_constraint_oid(i32 %31, i32 %36, i32 0)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @CONSTROID, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @SearchSysCache1(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i64 @HeapTupleIsValid(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @GETSTRUCT(i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %15, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @OidIsValid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ts_chunk_index_create_from_constraint(i32 %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %53, %44
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @ReleaseSysCache(i32 %66)
  br label %68

68:                                               ; preds = %65, %30
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @ts_process_utility_set_expect_chunk_modification(i32) #1

declare dso_local i32 @chunk_constraint_create_on_table(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @is_dimension_constraint(%struct.TYPE_9__*) #1

declare dso_local i32 @get_relation_constraint_oid(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ts_chunk_index_create_from_constraint(i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
