; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_delete_final_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_delete_final_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZFS_OWNER = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @zfs_delete_final_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_delete_final_check(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @ZTOZSB(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_3__* @ZTOI(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @KUID_TO_SUID(i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @ZFS_OWNER, align 4
  %20 = call i32 @zfs_fuid_map_id(i32 %12, i32 %17, i32* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_3__* @ZTOI(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = load i32, i32* @S_IXUSR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @secpolicy_vnode_access2(i32* %21, %struct.TYPE_3__* %23, i32 %24, i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @zfs_sticky_remove_access(i32* %33, i32* %34, i32* %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @zfs_fuid_map_id(i32, i32, i32*, i32) #1

declare dso_local i32 @ZTOZSB(i32*) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local %struct.TYPE_3__* @ZTOI(i32*) #1

declare dso_local i32 @secpolicy_vnode_access2(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @zfs_sticky_remove_access(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
