; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_mkdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32 }

@zfs_admin_snapshot = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapdir_mkdir(%struct.inode* %0, i8* %1, i32* %2, %struct.inode** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.inode** %3, %struct.inode*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.TYPE_3__* @ITOZSB(%struct.inode* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %14, align 8
  %19 = load i32, i32* @zfs_admin_snapshot, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EACCES, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %68

24:                                               ; preds = %6
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call i8* @kmem_alloc(i32 %25, i32 %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @zfs_component_namecheck(i8* %28, i32* null, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EILSEQ, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %16, align 4
  br label %63

34:                                               ; preds = %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @dmu_objset_name(i32 %37, i8* %38)
  %40 = load i8*, i8** %15, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @zfs_secpolicy_snapshot_perms(i8* %40, i32* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %63

46:                                               ; preds = %34
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i8*, i8** %15, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @dmu_objset_snapshot_one(i8* %50, i8* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.inode**, %struct.inode*** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @zfsctl_snapdir_lookup(%struct.inode* %57, i8* %58, %struct.inode** %59, i32 0, i32* %60, i32* null, i32* null)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %56, %46
  br label %63

63:                                               ; preds = %62, %55, %45, %31
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %66 = call i32 @kmem_free(i8* %64, i32 %65)
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %21
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_3__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i64 @zfs_component_namecheck(i8*, i32*, i32*) #1

declare dso_local i32 @dmu_objset_name(i32, i8*) #1

declare dso_local i32 @zfs_secpolicy_snapshot_perms(i8*, i32*) #1

declare dso_local i32 @dmu_objset_snapshot_one(i8*, i8*) #1

declare dso_local i32 @zfsctl_snapdir_lookup(%struct.inode*, i8*, %struct.inode**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
