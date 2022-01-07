; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_vdbeSorterSetupMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_vdbeSorterSetupMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_23__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@INCRINIT_NORMAL = common dso_local global i32 0, align 4
@INCRINIT_ROOT = common dso_local global i32 0, align 4
@INCRINIT_TASK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @vdbeSorterSetupMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterSetupMerge(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i64 0
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = call i32 @vdbeSorterMergeTreeBuild(%struct.TYPE_22__* %10, %struct.TYPE_25__** %5)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = load i32, i32* @INCRINIT_NORMAL, align 4
  %19 = call i32 @vdbeMergeEngineInit(%struct.TYPE_23__* %16, %struct.TYPE_25__* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SQLITE_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = call i32 @vdbeMergeEngineFree(%struct.TYPE_25__* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @vdbeSorterMergeTreeBuild(%struct.TYPE_22__*, %struct.TYPE_25__**) #1

declare dso_local i32 @vdbeMergeEngineInit(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @vdbeMergeEngineFree(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
