; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32* }

@InvalidOid = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @process_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rename(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* null, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @NoLock, align 4
  %20 = call i32 @RangeVarGetRelid(i32* %18, i32 %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @OidIsValid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %73

25:                                               ; preds = %15
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 131
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %73

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %25
  %34 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %34, i32** %5, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %69 [
    i32 129, label %38
    i32 133, label %44
    i32 132, label %50
    i32 130, label %56
    i32 128, label %62
    i32 131, label %66
  ]

38:                                               ; preds = %33
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = call i32 @process_rename_table(%struct.TYPE_15__* %39, i32* %40, i32 %41, %struct.TYPE_14__* %42)
  br label %70

44:                                               ; preds = %33
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i32 @process_rename_column(%struct.TYPE_15__* %45, i32* %46, i32 %47, %struct.TYPE_14__* %48)
  br label %70

50:                                               ; preds = %33
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i32 @process_rename_index(%struct.TYPE_15__* %51, i32* %52, i32 %53, %struct.TYPE_14__* %54)
  br label %70

56:                                               ; preds = %33
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = call i32 @process_rename_constraint(%struct.TYPE_15__* %57, i32* %58, i32 %59, %struct.TYPE_14__* %60)
  br label %70

62:                                               ; preds = %33
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = call i32 @process_rename_view(i32 %63, %struct.TYPE_14__* %64)
  br label %70

66:                                               ; preds = %33
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call i32 @process_rename_schema(%struct.TYPE_14__* %67)
  br label %70

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69, %66, %62, %56, %50, %44, %38
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ts_cache_release(i32* %71)
  br label %73

73:                                               ; preds = %70, %31, %24
  ret void
}

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32 @process_rename_table(%struct.TYPE_15__*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @process_rename_column(%struct.TYPE_15__*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @process_rename_index(%struct.TYPE_15__*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @process_rename_constraint(%struct.TYPE_15__*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @process_rename_view(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @process_rename_schema(%struct.TYPE_14__*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
