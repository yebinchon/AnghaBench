; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_socket_ioctl_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_socket_ioctl_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@NETLINK_GENERIC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_ioctl_fd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AF_INET, align 4
  %4 = load i32, i32* @SOCK_DGRAM, align 4
  %5 = load i32, i32* @SOCK_CLOEXEC, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @socket(i32 %3, i32 %6, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load i32, i32* @AF_NETLINK, align 4
  %12 = load i32, i32* @SOCK_RAW, align 4
  %13 = load i32, i32* @SOCK_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NETLINK_GENERIC, align 4
  %16 = call i32 @socket(i32 %11, i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %0
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @socket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
