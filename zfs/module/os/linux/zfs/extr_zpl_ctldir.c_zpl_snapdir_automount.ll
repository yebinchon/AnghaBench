; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_automount.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.path*)* @zpl_snapdir_automount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @zpl_snapdir_automount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %5 = load %struct.path*, %struct.path** %3, align 8
  %6 = call i32 @zfsctl_snapshot_mount(%struct.path* %5, i32 0)
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.vfsmount* @ERR_PTR(i32 %11)
  store %struct.vfsmount* %12, %struct.vfsmount** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %15
}

declare dso_local i32 @zfsctl_snapshot_mount(%struct.path*, i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
