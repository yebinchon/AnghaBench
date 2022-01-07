; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c_zpl_mount_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c_zpl_mount_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32* }
%struct.file_system_type = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@zpl_test_super = common dso_local global i32 0, align 4
@set_anon_super = common dso_local global i32 0, align 4
@SB_SILENT = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.super_block* (%struct.file_system_type*, i32, %struct.TYPE_4__*)* @zpl_mount_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.super_block* @zpl_mount_impl(%struct.file_system_type* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FTAG, align 4
  %15 = call i32 @dmu_objset_hold(i32 %13, i32 %14, i32** %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.super_block* @ERR_PTR(i32 %20)
  store %struct.super_block* %21, %struct.super_block** %4, align 8
  br label %89

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @dmu_objset_pool(i32* %23)
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i32 @dsl_pool_rele(i32 %24, i32 %25)
  %27 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %28 = load i32, i32* @zpl_test_super, align 4
  %29 = load i32, i32* @set_anon_super, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call %struct.super_block* @sget(%struct.file_system_type* %27, i32 %28, i32 %29, i32 %30, i32* %31)
  store %struct.super_block* %32, %struct.super_block** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @dmu_objset_ds(i32* %33)
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @dsl_dataset_rele(i32 %34, i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %8, align 8
  %38 = call i64 @IS_ERR(%struct.super_block* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = call %struct.super_block* @ERR_CAST(%struct.super_block* %41)
  store %struct.super_block* %42, %struct.super_block** %4, align 8
  br label %89

43:                                               ; preds = %22
  %44 = load %struct.super_block*, %struct.super_block** %8, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.super_block*, %struct.super_block** %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SB_SILENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = call i32 @zpl_fill_super(%struct.super_block* %49, %struct.TYPE_4__* %50, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.super_block*, %struct.super_block** %8, align 8
  %62 = call i32 @deactivate_locked_super(%struct.super_block* %61)
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.super_block* @ERR_PTR(i32 %63)
  store %struct.super_block* %64, %struct.super_block** %4, align 8
  br label %89

65:                                               ; preds = %48
  %66 = load i32, i32* @SB_ACTIVE, align 4
  %67 = load %struct.super_block*, %struct.super_block** %8, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %87

71:                                               ; preds = %43
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.super_block*, %struct.super_block** %8, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = xor i32 %72, %75
  %77 = load i32, i32* @SB_RDONLY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.super_block*, %struct.super_block** %8, align 8
  %82 = call i32 @deactivate_locked_super(%struct.super_block* %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.super_block* @ERR_PTR(i32 %84)
  store %struct.super_block* %85, %struct.super_block** %4, align 8
  br label %89

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %88, %struct.super_block** %4, align 8
  br label %89

89:                                               ; preds = %87, %80, %60, %40, %18
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  ret %struct.super_block* %90
}

declare dso_local i32 @dmu_objset_hold(i32, i32, i32**) #1

declare dso_local %struct.super_block* @ERR_PTR(i32) #1

declare dso_local i32 @dsl_pool_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @ERR_CAST(%struct.super_block*) #1

declare dso_local i32 @zpl_fill_super(%struct.super_block*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
