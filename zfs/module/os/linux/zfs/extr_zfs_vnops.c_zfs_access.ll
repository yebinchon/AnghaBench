; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_access.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@V_ACE_MASK = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_access(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32* @ITOZ(%struct.inode* %12)
  store i32* %13, i32** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32* @ITOZSB(%struct.inode* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @ZFS_ENTER(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @ZFS_VERIFY_ZP(i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @V_ACE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @zfs_zaccess(i32* %25, i32 %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %11, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @zfs_zaccess_rwx(i32* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @ZFS_EXIT(i32* %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(i32*) #1

declare dso_local i32 @zfs_zaccess(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_zaccess_rwx(i32*, i32, i32, i32*) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
