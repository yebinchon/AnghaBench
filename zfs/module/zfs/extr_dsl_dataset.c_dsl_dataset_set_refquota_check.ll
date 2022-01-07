; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_set_refquota_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_set_refquota_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_13__ = type { i64 }

@SPA_VERSION_REFQUOTA = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_REFQUOTA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_set_refquota_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_set_refquota_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_10__* @dmu_tx_pool(i32* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @spa_version(i32 %17)
  %19 = load i64, i64* @SPA_VERSION_REFQUOTA, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOTSUP, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %96

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @dsl_dataset_hold(%struct.TYPE_10__* %25, i32 %28, i32 %29, %struct.TYPE_11__** %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %96

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %96

46:                                               ; preds = %35
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ZFS_PROP_REFQUOTA, align 4
  %51 = call i32 @zfs_prop_to_name(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dsl_prop_predict(i32 %49, i32 %51, i32 %54, i32 %57, i64* %10)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %96

66:                                               ; preds = %46
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = load i32, i32* @FTAG, align 4
  %72 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %96

73:                                               ; preds = %66
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = call %struct.TYPE_13__* @dsl_dataset_phys(%struct.TYPE_11__* %75)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80, %73
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %87, i32 %88)
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = call i32 @SET_ERROR(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %80
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = load i32, i32* @FTAG, align 4
  %95 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %93, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %86, %69, %61, %40, %33, %21
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_10__* @dmu_tx_pool(i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_10__*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dsl_prop_predict(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local %struct.TYPE_13__* @dsl_dataset_phys(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
