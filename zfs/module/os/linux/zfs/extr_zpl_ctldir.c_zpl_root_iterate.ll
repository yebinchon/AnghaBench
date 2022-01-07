; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_root_iterate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_root_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ZFS_SNAPDIR_NAME = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@ZFS_SHAREDIR_NAME = common dso_local global i32 0, align 4
@ZFSCTL_INO_SHARES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.TYPE_5__*)* @zpl_root_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_root_iterate(%struct.file* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call i32 @file_inode(%struct.file* %7)
  %9 = call i32* @ITOZSB(i32 %8)
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ZFS_ENTER(i32* %10)
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @zpl_dir_emit_dots(%struct.file* %12, %struct.TYPE_5__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i32, i32* @ZFS_SNAPDIR_NAME, align 4
  %25 = load i32, i32* @ZFS_SNAPDIR_NAME, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %28 = load i32, i32* @DT_DIR, align 4
  %29 = call i32 @zpl_dir_emit(%struct.TYPE_5__* %23, i32 %24, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %58

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = load i32, i32* @ZFS_SHAREDIR_NAME, align 4
  %45 = load i32, i32* @ZFS_SHAREDIR_NAME, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = load i32, i32* @ZFSCTL_INO_SHARES, align 4
  %48 = load i32, i32* @DT_DIR, align 4
  %49 = call i32 @zpl_dir_emit(%struct.TYPE_5__* %43, i32 %44, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %58

52:                                               ; preds = %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %37
  br label %58

58:                                               ; preds = %57, %51, %31, %16
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ZFS_EXIT(i32* %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32* @ITOZSB(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @zpl_dir_emit_dots(%struct.file*, %struct.TYPE_5__*) #1

declare dso_local i32 @zpl_dir_emit(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
