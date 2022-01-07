; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@zfs_snapshot_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @zfsctl_snapshot_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsctl_snapshot_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @RW_WRITE_HELD(i32* @zfs_snapshot_lock)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.TYPE_6__* @zfsctl_snapshot_find_by_name(i8* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = call i32 @SET_ERROR(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = call i32 @zfsctl_snapshot_remove(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kmem_strfree(i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @kmem_strdup(i8* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @zfsctl_snapshot_add(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = call i32 @zfsctl_snapshot_rele(%struct.TYPE_6__* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_6__* @zfsctl_snapshot_find_by_name(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfsctl_snapshot_remove(%struct.TYPE_6__*) #1

declare dso_local i32 @kmem_strfree(i32) #1

declare dso_local i32 @kmem_strdup(i8*) #1

declare dso_local i32 @zfsctl_snapshot_add(%struct.TYPE_6__*) #1

declare dso_local i32 @zfsctl_snapshot_rele(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
