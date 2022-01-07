; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_debug.c_zfs_dbgmsg_purge.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_debug.c_zfs_dbgmsg_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@zfs_dbgmsg_size = common dso_local global i32 0, align 4
@zfs_dbgmsgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zfs_dbgmsg_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_dbgmsg_purge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* @zfs_dbgmsg_size, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = call %struct.TYPE_5__* @list_remove_head(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfs_dbgmsgs, i32 0, i32 0))
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %24

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @kmem_free(%struct.TYPE_5__* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @zfs_dbgmsg_size, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* @zfs_dbgmsg_size, align 4
  br label %5

24:                                               ; preds = %13, %5
  ret void
}

declare dso_local %struct.TYPE_5__* @list_remove_head(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
