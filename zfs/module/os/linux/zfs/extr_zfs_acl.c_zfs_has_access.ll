; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_has_access.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_has_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ACE_ALL_PERMS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_has_access(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @ACE_ALL_PERMS, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @B_TRUE, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @zfs_zaccess_aces_check(i32* %9, i32* %6, i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ZTOZSB(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_3__* @ZTOI(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @KUID_TO_SUID(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ZFS_OWNER, align 4
  %24 = call i32 @zfs_fuid_map_id(i32 %16, i32 %21, i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.TYPE_3__* @ZTOI(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @secpolicy_vnode_any_access(i32* %25, %struct.TYPE_3__* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @B_TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @zfs_zaccess_aces_check(i32*, i32*, i32, i32*) #1

declare dso_local i32 @zfs_fuid_map_id(i32, i32, i32*, i32) #1

declare dso_local i32 @ZTOZSB(i32*) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local %struct.TYPE_3__* @ZTOI(i32*) #1

declare dso_local i64 @secpolicy_vnode_any_access(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
