; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_sa_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_sa_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32 }

@DMU_NEW_OBJECT = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@SA_LAYOUTS = common dso_local global i32* null, align 8
@SA_REGISTRY = common dso_local global i32* null, align 8
@DN_OLD_MAX_BONUSLEN = common dso_local global i32 0, align 4
@THT_SPILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_hold_sa_create(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %13 = call i32 @dmu_tx_hold_bonus(%struct.TYPE_11__* %11, i64 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @B_TRUE, align 4
  %38 = call i32 @dmu_tx_hold_zap(%struct.TYPE_11__* %33, i64 %36, i32 %37, i32* null)
  br label %62

39:                                               ; preds = %23
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @B_TRUE, align 4
  %45 = load i32*, i32** @SA_LAYOUTS, align 8
  %46 = call i32 @dmu_tx_hold_zap(%struct.TYPE_11__* %40, i64 %43, i32 %44, i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @B_TRUE, align 4
  %52 = load i32*, i32** @SA_REGISTRY, align 8
  %53 = call i32 @dmu_tx_hold_zap(%struct.TYPE_11__* %47, i64 %50, i32 %51, i32* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %56 = load i32, i32* @B_TRUE, align 4
  %57 = call i32 @dmu_tx_hold_zap(%struct.TYPE_11__* %54, i64 %55, i32 %56, i32* null)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %60 = load i32, i32* @B_TRUE, align 4
  %61 = call i32 @dmu_tx_hold_zap(%struct.TYPE_11__* %58, i64 %59, i32 %60, i32* null)
  br label %62

62:                                               ; preds = %39, %32
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = call i32 @dmu_tx_sa_registration_hold(%struct.TYPE_10__* %63, %struct.TYPE_11__* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @DN_OLD_MAX_BONUSLEN, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %83

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %81 = load i32, i32* @THT_SPILL, align 4
  %82 = call i32 @dmu_tx_hold_object_impl(%struct.TYPE_11__* %76, %struct.TYPE_12__* %79, i64 %80, i32 %81, i32 0, i32 0)
  br label %83

83:                                               ; preds = %75, %74, %22
  ret void
}

declare dso_local i32 @dmu_tx_hold_bonus(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @dmu_tx_hold_zap(%struct.TYPE_11__*, i64, i32, i32*) #1

declare dso_local i32 @dmu_tx_sa_registration_hold(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @dmu_tx_hold_object_impl(%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
