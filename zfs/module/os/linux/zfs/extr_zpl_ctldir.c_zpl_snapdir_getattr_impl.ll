; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_getattr_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_getattr_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @zpl_snapdir_getattr_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_snapdir_getattr_impl(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call %struct.TYPE_7__* @ITOZSB(%struct.inode* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = call i32 @ZFS_ENTER(%struct.TYPE_7__* %18)
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = load %struct.kstat*, %struct.kstat** %6, align 8
  %22 = call i32 @generic_fillattr(%struct.inode* %20, %struct.kstat* %21)
  %23 = load %struct.kstat*, %struct.kstat** %6, align 8
  %24 = getelementptr inbounds %struct.kstat, %struct.kstat* %23, i32 0, i32 1
  store i32 2, i32* %24, align 4
  %25 = load %struct.kstat*, %struct.kstat** %6, align 8
  %26 = getelementptr inbounds %struct.kstat, %struct.kstat* %25, i32 0, i32 0
  store i32 2, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dmu_objset_snap_cmtime(i32 %29)
  %31 = load %struct.kstat*, %struct.kstat** %6, align 8
  %32 = getelementptr inbounds %struct.kstat, %struct.kstat* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kstat*, %struct.kstat** %6, align 8
  %34 = getelementptr inbounds %struct.kstat, %struct.kstat* %33, i32 0, i32 4
  store i32 %30, i32* %34, align 4
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @current_time(%struct.inode* %35)
  %37 = load %struct.kstat*, %struct.kstat** %6, align 8
  %38 = getelementptr inbounds %struct.kstat, %struct.kstat* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = call i32 @ZFS_EXIT(%struct.TYPE_7__* %39)
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_7__*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @dmu_objset_snap_cmtime(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
