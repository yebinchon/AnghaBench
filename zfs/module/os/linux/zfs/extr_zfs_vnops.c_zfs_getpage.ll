; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getpage.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_getpage(%struct.inode* %0, %struct.page** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i32* @ITOZ(%struct.inode* %11)
  store i32* %12, i32** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32* @ITOZSB(%struct.inode* %13)
  store i32* %14, i32** %9, align 8
  %15 = load %struct.page**, %struct.page*** %6, align 8
  %16 = icmp eq %struct.page** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @ZFS_ENTER(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ZFS_VERIFY_ZP(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.page**, %struct.page*** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @zfs_fillpage(%struct.inode* %23, %struct.page** %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @ZFS_EXIT(i32* %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %18, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(i32*) #1

declare dso_local i32 @zfs_fillpage(%struct.inode*, %struct.page**, i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
