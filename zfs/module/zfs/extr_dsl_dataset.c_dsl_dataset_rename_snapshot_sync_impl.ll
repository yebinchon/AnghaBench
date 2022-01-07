; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_sync_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-> @%s\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i8*)* @dsl_dataset_rename_snapshot_sync_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_rename_snapshot_sync_impl(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dsl_dataset_snap_lookup(%struct.TYPE_16__* %18, i32 %21, i32* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ true, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %99

37:                                               ; preds = %29
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_15__* %38, i32 %39, i32 %40, %struct.TYPE_16__** %9)
  %42 = call i32 @VERIFY0(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @spa_history_log_internal_ds(%struct.TYPE_16__* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = call i32 @dsl_dataset_snap_remove(%struct.TYPE_16__* %49, i32 %52, i32* %53, i32 %54)
  %56 = call i32 @VERIFY0(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = call i32 @mutex_enter(i32* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strlcpy(i32 %62, i32 %65, i32 4)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = call i32 @mutex_exit(i32* %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_16__* %73)
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @zap_add(i32 %72, i32 %76, i32 %79, i32 8, i32 1, i32* %81, i32* %82)
  %84 = call i32 @VERIFY0(i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @B_TRUE, align 4
  %95 = call i32 @zvol_rename_minors(i32 %87, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = load i32, i32* @FTAG, align 4
  %98 = call i32 @dsl_dataset_rele(%struct.TYPE_16__* %96, i32 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %37, %36
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @dsl_dataset_snap_lookup(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_16__*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @dsl_dataset_snap_remove(%struct.TYPE_16__*, i32, i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zap_add(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_16__*) #1

declare dso_local i32 @zvol_rename_minors(i32, i32, i32, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
