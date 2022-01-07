; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_remount.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@SB_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_remount(%struct.super_block* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @dmu_objset_is_snapshot(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dmu_objset_spa(i32 %24)
  %26 = call i32 @spa_writeable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21, %3
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SB_RDONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @SB_RDONLY, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @EROFS, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %28, %21
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zfsvfs_parse_options(i32 %43, %struct.TYPE_12__** %9)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %85

49:                                               ; preds = %40
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = call i32 @zfs_is_readonly(%struct.TYPE_10__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SB_RDONLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dmu_objset_pool(i32 %62)
  %64 = call i32 @txg_wait_synced(i32 %63, i32 0)
  br label %65

65:                                               ; preds = %59, %53, %49
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = call i32 @zfs_unregister_callbacks(%struct.TYPE_10__* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @zfsvfs_vfs_free(%struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = call i32 @zfs_register_callbacks(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %80, %65
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %47, %34
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @dmu_objset_is_snapshot(i32) #1

declare dso_local i32 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32) #1

declare dso_local i32 @zfsvfs_parse_options(i32, %struct.TYPE_12__**) #1

declare dso_local i32 @zfs_is_readonly(%struct.TYPE_10__*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32) #1

declare dso_local i32 @zfs_unregister_callbacks(%struct.TYPE_10__*) #1

declare dso_local i32 @zfsvfs_vfs_free(%struct.TYPE_12__*) #1

declare dso_local i32 @zfs_register_callbacks(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
