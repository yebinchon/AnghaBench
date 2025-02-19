; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_policy.c_secpolicy_vnode_setids_setgids.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_policy.c_secpolicy_vnode_setids_setgids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CAP_FSETID = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secpolicy_vnode_setids_setgids(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i64 @crgetfsgid(%struct.TYPE_6__* %6)
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @groupmember(i64 %11, %struct.TYPE_6__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @CAP_FSETID, align 4
  %18 = load i32, i32* @B_FALSE, align 4
  %19 = load i32, i32* @EPERM, align 4
  %20 = call i32 @priv_policy_user(%struct.TYPE_6__* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @crgetfsgid(%struct.TYPE_6__*) #1

declare dso_local i32 @groupmember(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @priv_policy_user(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
