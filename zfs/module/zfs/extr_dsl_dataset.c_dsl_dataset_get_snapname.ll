; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_get_snapname.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_get_snapname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@zfs_recover = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SNAPOBJ=%llu-ERR=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_get_snapname(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = call %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_13__* %25)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %82

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = call %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_17__* %35)
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @dmu_bonus_hold(i32* %32, i32 %38, i32 %39, %struct.TYPE_15__** %6)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %31
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = call i32 @zap_value_search(i32* %51, i32 %54, i64 %57, i32 0, i64* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %45
  %65 = load i64, i64* @zfs_recover, align 8
  %66 = load i64, i64* @B_TRUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @snprintf(i64* %71, i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %64, %45
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %43, %30, %23
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_18__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_17__*) #1

declare dso_local i32 @zap_value_search(i32*, i32, i64, i32, i64*) #1

declare dso_local i32 @snprintf(i64*, i32, i8*, i64, i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
