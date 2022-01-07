; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_promote.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ZFS_DELEG_PERM_PROMOTE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*)* @zfs_secpolicy_promote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_promote(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @ZFS_DELEG_PERM_PROMOTE, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @zfs_secpolicy_write_perms(i8* %18, i32 %19, i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %105

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_pool_hold(i8* %29, i32 %30, i32** %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %26
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i32 @dsl_dataset_hold(i32* %37, i8* %40, i32 %41, %struct.TYPE_14__** %9)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %36
  %46 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %11, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %14, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %57 = call %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_13__* %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @dsl_dataset_hold_obj(i32 %55, i32 %59, i32 %60, %struct.TYPE_14__** %13)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %45
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dsl_pool_rele(i32* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

72:                                               ; preds = %45
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @zfs_secpolicy_write_perms_ds(i8* %75, %struct.TYPE_14__* %76, i32 %77, i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = call i32 @dsl_dataset_name(%struct.TYPE_14__* %80, i8* %49)
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %86 = load i32, i32* @ZFS_DELEG_PERM_PROMOTE, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @zfs_secpolicy_write_perms_ds(i8* %49, %struct.TYPE_14__* %85, i32 %86, i32* %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %72
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = load i32, i32* @FTAG, align 4
  %92 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %90, i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %94 = load i32, i32* @FTAG, align 4
  %95 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %93, i32 %94)
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %89, %64
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %15, align 4
  switch i32 %98, label %107 [
    i32 0, label %99
    i32 1, label %105
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %36
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* @FTAG, align 4
  %103 = call i32 @dsl_pool_rele(i32* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %96, %34, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106

107:                                              ; preds = %96
  unreachable
}

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_14__**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_dataset_hold_obj(i32, i32, i32, %struct.TYPE_14__**) #1

declare dso_local %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @zfs_secpolicy_write_perms_ds(i8*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_14__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
