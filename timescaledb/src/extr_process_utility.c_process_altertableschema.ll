; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertableschema.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertableschema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32* }

@OBJECT_TABLE = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @process_altertableschema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_altertableschema(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJECT_TABLE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* null, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @NoLock, align 4
  %29 = call i32 @RangeVarGetRelid(i32* %27, i32 %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @OidIsValid(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %65

34:                                               ; preds = %24
  %35 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32* @ts_hypertable_cache_get_entry(i32* %36, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i32* @ts_chunk_get_by_relid(i32 %42, i32 0, i32 0)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* null, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ts_chunk_set_schema(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %62

53:                                               ; preds = %34
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ts_hypertable_set_schema(i32* %54, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @process_add_hypertable(%struct.TYPE_5__* %59, i32* %60)
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @ts_cache_release(i32* %63)
  br label %65

65:                                               ; preds = %62, %33, %23
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i32 @ts_chunk_set_schema(i32*, i32) #1

declare dso_local i32 @ts_hypertable_set_schema(i32*, i32) #1

declare dso_local i32 @process_add_hypertable(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
