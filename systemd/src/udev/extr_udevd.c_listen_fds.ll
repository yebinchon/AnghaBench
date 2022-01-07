; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_listen_fds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_listen_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @listen_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_fds(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = call i32 @sd_listen_fds(i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %58, %19
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AF_LOCAL, align 4
  %30 = load i32, i32* @SOCK_SEQPACKET, align 4
  %31 = call i64 @sd_is_socket(i32 %28, i32 %29, i32 %30, i32 -1)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AF_NETLINK, align 4
  %44 = load i32, i32* @SOCK_RAW, align 4
  %45 = call i64 @sd_is_socket(i32 %42, i32 %43, i32 %44, i32 -1)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %53, %39
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %55, %50, %36, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_listen_fds(i32) #1

declare dso_local i64 @sd_is_socket(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
