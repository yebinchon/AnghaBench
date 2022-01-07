; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_ids_overquota.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_ids_overquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@DMU_USERUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_GROUPUSED_OBJECT = common dso_local global i32 0, align 4
@ZFS_DEFAULT_PROJID = common dso_local global i64 0, align 8
@ZFS_INVALID_PROJID = common dso_local global i64 0, align 8
@DMU_PROJECTUSED_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_acl_ids_overquota(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @DMU_USERUSED_OBJECT, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @zfs_id_overquota(i32* %7, i32 %8, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @DMU_GROUPUSED_OBJECT, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @zfs_id_overquota(i32* %15, i32 %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ZFS_DEFAULT_PROJID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ZFS_INVALID_PROJID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @DMU_PROJECTUSED_OBJECT, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @zfs_id_overquota(i32* %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %26, %22
  %37 = phi i1 [ false, %26 ], [ false, %22 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %14, %3
  %39 = phi i1 [ true, %14 ], [ true, %3 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i64 @zfs_id_overquota(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
