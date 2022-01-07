; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_get_xattrdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_get_xattrdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZXATTR = common dso_local global i32 0, align 4
@CREATE_XATTR_DIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_xattrdir(i32* %0, %struct.inode** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode** %1, %struct.inode*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @ZTOZSB(i32* %15)
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %80, %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @ZXATTR, align 4
  %20 = call i32 @zfs_dirent_lock(i32** %12, i32* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32** %11, i32 %19, i32* null, i32* null)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %83

25:                                               ; preds = %17
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = call %struct.inode* @ZTOI(i32* %29)
  %31 = load %struct.inode**, %struct.inode*** %7, align 8
  store %struct.inode* %30, %struct.inode** %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @zfs_dirent_unlock(i32* %32)
  store i32 0, i32* %5, align 4
  br label %83

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @CREATE_XATTR_DIR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @zfs_dirent_unlock(i32* %40)
  %42 = load i32, i32* @ENOENT, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %83

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @zfs_is_readonly(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @zfs_dirent_unlock(i32* %49)
  %51 = load i32, i32* @EROFS, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %83

53:                                               ; preds = %44
  %54 = load i32, i32* @ATTR_MODE, align 4
  %55 = load i32, i32* @ATTR_UID, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ATTR_GID, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @S_IFDIR, align 4
  %61 = load i32, i32* @S_ISVTX, align 4
  %62 = or i32 %60, %61
  %63 = or i32 %62, 511
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %69 = call i32 @zfs_fuid_map_ids(i32* %65, i32* %66, i32* %67, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.inode**, %struct.inode*** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @zfs_make_xattrdir(i32* %71, %struct.TYPE_3__* %13, %struct.inode** %72, i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @zfs_dirent_unlock(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ERESTART, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %53
  br label %17

81:                                               ; preds = %53
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %48, %39, %28, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @ZTOZSB(i32*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, i32*, i8*, i32**, i32, i32*, i32*) #1

declare dso_local %struct.inode* @ZTOI(i32*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_is_readonly(i32*) #1

declare dso_local i32 @zfs_fuid_map_ids(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_make_xattrdir(i32*, %struct.TYPE_3__*, %struct.inode**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
