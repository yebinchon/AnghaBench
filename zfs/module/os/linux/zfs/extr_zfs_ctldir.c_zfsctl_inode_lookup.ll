; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_inode_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_inode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode_operations = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.TYPE_4__*, i64, %struct.file_operations*, %struct.inode_operations*)* @zfsctl_inode_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @zfsctl_inode_lookup(%struct.TYPE_4__* %0, i64 %1, %struct.file_operations* %2, %struct.inode_operations* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca %struct.inode_operations*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file_operations* %2, %struct.file_operations** %7, align 8
  store %struct.inode_operations* %3, %struct.inode_operations** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  br label %10

10:                                               ; preds = %22, %4
  %11 = load %struct.inode*, %struct.inode** %9, align 8
  %12 = icmp eq %struct.inode* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.inode* @ilookup(i32 %16, i64 %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %28

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %26 = load %struct.inode_operations*, %struct.inode_operations** %8, align 8
  %27 = call %struct.inode* @zfsctl_inode_alloc(%struct.TYPE_4__* %23, i64 %24, %struct.file_operations* %25, %struct.inode_operations* %26)
  store %struct.inode* %27, %struct.inode** %9, align 8
  br label %10

28:                                               ; preds = %21, %10
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  ret %struct.inode* %29
}

declare dso_local %struct.inode* @ilookup(i32, i64) #1

declare dso_local %struct.inode* @zfsctl_inode_alloc(%struct.TYPE_4__*, i64, %struct.file_operations*, %struct.inode_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
