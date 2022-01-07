; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_id_quota_upgrade_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_id_quota_upgrade_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@SPA_FEATURE_USEROBJ_ACCOUNTING = common dso_local global i64 0, align 8
@SPA_FEATURE_PROJECT_QUOTA = common dso_local global i64 0, align 8
@OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE = common dso_local global i32 0, align 4
@OBJSET_FLAG_PROJECTQUOTA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @dmu_objset_id_quota_upgrade_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_id_quota_upgrade_cb(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i64 @dmu_objset_userobjspace_present(%struct.TYPE_13__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call i64 @dmu_objset_projectquota_present(%struct.TYPE_13__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %85

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = call i64 @dmu_objset_is_snapshot(%struct.TYPE_13__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @SET_ERROR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %13
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @dmu_objset_userobjused_enabled(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOTSUP, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %85

27:                                               ; preds = %20
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_13__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = call i64 @dmu_objset_userobjspace_present(%struct.TYPE_13__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOTSUP, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %31, %27
  %39 = load i64, i64* @B_TRUE, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = call %struct.TYPE_12__* @dmu_objset_ds(%struct.TYPE_13__* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* @SPA_FEATURE_USEROBJ_ACCOUNTING, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  store i8* %40, i8** %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_13__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load i64, i64* @B_TRUE, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = call %struct.TYPE_12__* @dmu_objset_ds(%struct.TYPE_13__* %53)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @SPA_FEATURE_PROJECT_QUOTA, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %52, i8** %58, align 8
  br label %59

59:                                               ; preds = %50, %38
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = call i32 @dmu_objset_space_upgrade(%struct.TYPE_13__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %59
  %67 = load i32, i32* @OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_13__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @OBJSET_FLAG_PROJECTQUOTA_COMPLETE, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %66
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = call i32 @dmu_objset_pool(%struct.TYPE_13__* %82)
  %84 = call i32 @txg_wait_synced(i32 %83, i32 0)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %64, %35, %24, %17, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @dmu_objset_userobjspace_present(%struct.TYPE_13__*) #1

declare dso_local i64 @dmu_objset_projectquota_present(%struct.TYPE_13__*) #1

declare dso_local i64 @dmu_objset_is_snapshot(%struct.TYPE_13__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_objset_userobjused_enabled(%struct.TYPE_13__*) #1

declare dso_local i64 @dmu_objset_projectquota_enabled(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @dmu_objset_ds(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_objset_space_upgrade(%struct.TYPE_13__*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
