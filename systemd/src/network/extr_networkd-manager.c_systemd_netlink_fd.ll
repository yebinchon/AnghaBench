; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_systemd_netlink_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_systemd_netlink_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @systemd_netlink_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @systemd_netlink_fd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 @sd_listen_fds(i32 1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %41

13:                                               ; preds = %0
  %14 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %36, %13
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AF_NETLINK, align 4
  %24 = load i32, i32* @SOCK_RAW, align 4
  %25 = call i64 @sd_is_socket(i32 %22, i32 %23, i32 %24, i32 -1)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %30, %10
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @sd_listen_fds(i32) #1

declare dso_local i64 @sd_is_socket(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
