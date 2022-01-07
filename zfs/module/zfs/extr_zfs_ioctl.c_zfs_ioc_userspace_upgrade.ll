; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_userspace_upgrade.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_userspace_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @zfs_ioc_userspace_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_userspace_upgrade(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @getzfsvfs(i32 %11, %struct.TYPE_8__** %6)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @dmu_objset_userused_enabled(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32* @dmu_objset_ds(i32* %23)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32 @zfs_suspend_fs(%struct.TYPE_8__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @B_TRUE, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = call i32 @dmu_objset_refresh_ownership(i32* %30, i32** %8, i32 %31, %struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @zfs_resume_fs(%struct.TYPE_8__* %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %20
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dmu_objset_userspace_upgrade(i32* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @deactivate_super(i32 %49)
  br label %69

51:                                               ; preds = %1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @B_TRUE, align 4
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @dmu_objset_hold_flags(i32 %54, i32 %55, i32 %56, i32** %4)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %51
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @dmu_objset_userspace_upgrade(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @B_TRUE, align 4
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dmu_objset_rele_flags(i32* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %46
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @getzfsvfs(i32, %struct.TYPE_8__**) #1

declare dso_local i32 @dmu_objset_userused_enabled(i32*) #1

declare dso_local i32* @dmu_objset_ds(i32*) #1

declare dso_local i32 @zfs_suspend_fs(%struct.TYPE_8__*) #1

declare dso_local i32 @dmu_objset_refresh_ownership(i32*, i32**, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @zfs_resume_fs(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dmu_objset_userspace_upgrade(i32*) #1

declare dso_local i32 @deactivate_super(i32) #1

declare dso_local i32 @dmu_objset_hold_flags(i32, i32, i32, i32**) #1

declare dso_local i32 @dmu_objset_rele_flags(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
