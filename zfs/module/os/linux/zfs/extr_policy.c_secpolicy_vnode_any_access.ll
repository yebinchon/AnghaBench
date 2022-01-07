; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_policy.c_secpolicy_vnode_any_access.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_policy.c_secpolicy_vnode_any_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }

@CAP_DAC_OVERRIDE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_DAC_READ_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_vnode_any_access(%struct.TYPE_5__* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i64 @crgetfsuid(%struct.TYPE_5__* %8)
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i64 @inode_owner_or_capable(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %36

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %21 = load i32, i32* @B_FALSE, align 4
  %22 = load i32, i32* @EPERM, align 4
  %23 = call i64 @priv_policy_user(%struct.TYPE_5__* %19, i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i32, i32* @CAP_DAC_READ_SEARCH, align 4
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = load i32, i32* @EPERM, align 4
  %31 = call i64 @priv_policy_user(%struct.TYPE_5__* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %33, %25, %17, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @crgetfsuid(%struct.TYPE_5__*) #1

declare dso_local i64 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i64 @priv_policy_user(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
