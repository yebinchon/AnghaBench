; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c_zpl_mount.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c_zpl_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @zpl_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @zpl_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.super_block*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %14, align 8
  %16 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.super_block* @zpl_mount_impl(%struct.file_system_type* %16, i32 %17, %struct.TYPE_3__* %10)
  store %struct.super_block* %18, %struct.super_block** %11, align 8
  %19 = load %struct.super_block*, %struct.super_block** %11, align 8
  %20 = call i64 @IS_ERR(%struct.super_block* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %11, align 8
  %24 = call %struct.dentry* @ERR_CAST(%struct.super_block* %23)
  store %struct.dentry* %24, %struct.dentry** %5, align 8
  br label %30

25:                                               ; preds = %4
  %26 = load %struct.super_block*, %struct.super_block** %11, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.dentry* @dget(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %31
}

declare dso_local %struct.super_block* @zpl_mount_impl(%struct.file_system_type*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.super_block*) #1

declare dso_local %struct.dentry* @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
