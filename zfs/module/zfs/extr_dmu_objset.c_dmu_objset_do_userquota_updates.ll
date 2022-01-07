; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_do_userquota_updates.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_do_userquota_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }

@DMU_OT_NONE = common dso_local global i64 0, align 8
@DMU_USERUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_OT_USERGROUP_USED = common dso_local global i32 0, align 4
@DMU_GROUPUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_PROJECTUSED_OBJECT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@userquota_updates_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_objset_do_userquota_updates(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %9 = call i32 @dmu_objset_userused_enabled(%struct.TYPE_25__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %113

12:                                               ; preds = %2
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = call i64 @dmu_objset_is_receiving(%struct.TYPE_25__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %113

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %113

33:                                               ; preds = %22
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = call %struct.TYPE_21__* @DMU_USERUSED_DNODE(%struct.TYPE_25__* %34)
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMU_OT_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %42 = load i32, i32* @DMU_USERUSED_OBJECT, align 4
  %43 = load i32, i32* @DMU_OT_USERGROUP_USED, align 4
  %44 = load i64, i64* @DMU_OT_NONE, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = call i32 @zap_create_claim(%struct.TYPE_25__* %41, i32 %42, i32 %43, i64 %44, i32 0, %struct.TYPE_26__* %45)
  %47 = call i32 @VERIFY0(i32 %46)
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = load i32, i32* @DMU_GROUPUSED_OBJECT, align 4
  %50 = load i32, i32* @DMU_OT_USERGROUP_USED, align 4
  %51 = load i64, i64* @DMU_OT_NONE, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = call i32 @zap_create_claim(%struct.TYPE_25__* %48, i32 %49, i32 %50, i64 %51, i32 0, %struct.TYPE_26__* %52)
  %54 = call i32 @VERIFY0(i32 %53)
  br label %55

55:                                               ; preds = %40, %33
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %57 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_25__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %61 = call %struct.TYPE_22__* @DMU_PROJECTUSED_DNODE(%struct.TYPE_25__* %60)
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DMU_OT_NONE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = load i32, i32* @DMU_PROJECTUSED_OBJECT, align 4
  %69 = load i32, i32* @DMU_OT_USERGROUP_USED, align 4
  %70 = load i64, i64* @DMU_OT_NONE, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %72 = call i32 @zap_create_claim(%struct.TYPE_25__* %67, i32 %68, i32 %69, i64 %70, i32 0, %struct.TYPE_26__* %71)
  %73 = call i32 @VERIFY0(i32 %72)
  br label %74

74:                                               ; preds = %66, %59, %55
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @multilist_get_num_sublists(i32 %77)
  store i32 %78, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %110, %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @multilist_sublist_is_empty_idx(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %110

91:                                               ; preds = %83
  %92 = load i32, i32* @KM_SLEEP, align 4
  %93 = call %struct.TYPE_24__* @kmem_alloc(i32 24, i32 %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %7, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  store %struct.TYPE_25__* %94, %struct.TYPE_25__** %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  store %struct.TYPE_26__* %100, %struct.TYPE_26__** %102, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %104 = call %struct.TYPE_20__* @dmu_objset_pool(%struct.TYPE_25__* %103)
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @userquota_updates_task, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = call i32 @taskq_dispatch(i32 %106, i32 %107, %struct.TYPE_24__* %108, i32 0)
  br label %110

110:                                              ; preds = %91, %90
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %79

113:                                              ; preds = %11, %21, %32, %79
  ret void
}

declare dso_local i32 @dmu_objset_userused_enabled(%struct.TYPE_25__*) #1

declare dso_local i64 @dmu_objset_is_receiving(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_21__* @DMU_USERUSED_DNODE(%struct.TYPE_25__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_create_claim(%struct.TYPE_25__*, i32, i32, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @dmu_objset_projectquota_enabled(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @DMU_PROJECTUSED_DNODE(%struct.TYPE_25__*) #1

declare dso_local i32 @multilist_get_num_sublists(i32) #1

declare dso_local i64 @multilist_sublist_is_empty_idx(i32, i32) #1

declare dso_local %struct.TYPE_24__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @taskq_dispatch(i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_20__* @dmu_objset_pool(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
