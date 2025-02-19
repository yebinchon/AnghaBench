; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_id_overblockquota.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_id_overblockquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i64 }

@DMU_PROJECTUSED_OBJECT = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DMU_USERUSED_OBJECT = common dso_local global i64 0, align 8
@DMU_GROUPUSED_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_id_overblockquota(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @DMU_PROJECTUSED_OBJECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dmu_objset_projectquota_present(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @dmu_objset_projectquota_upgradable(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dmu_objset_pool(i32 %31)
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_pool_config_enter(i32 %32, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dmu_objset_id_quota_upgrade(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dmu_objset_pool(i32 %41)
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dsl_pool_config_exit(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %22
  %46 = load i32, i32* @B_FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %112

47:                                               ; preds = %16
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  br label %71

51:                                               ; preds = %3
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @DMU_USERUSED_OBJECT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  br label %70

59:                                               ; preds = %51
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @DMU_GROUPUSED_OBJECT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @B_FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %112

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i64, i64* %11, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %71
  %80 = load i32, i32* @B_FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %112

81:                                               ; preds = %74
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %91 = call i32 @zap_lookup(i32 %88, i64 %89, i8* %90, i32 8, i32 1, i64* %10)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* @B_FALSE, align 4
  store i32 %95, i32* %4, align 4
  br label %112

96:                                               ; preds = %81
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %102 = call i32 @zap_lookup(i32 %99, i64 %100, i8* %101, i32 8, i32 1, i64* %9)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @B_FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %112

107:                                              ; preds = %96
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp sge i64 %108, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %105, %94, %79, %67, %45
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dmu_objset_projectquota_present(i32) #1

declare dso_local i64 @dmu_objset_projectquota_upgradable(i32) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32) #1

declare dso_local i32 @dmu_objset_id_quota_upgrade(i32) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @zap_lookup(i32, i64, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
