; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_create_log_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_create_log_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SNDBUF_SIZE = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_log_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_log_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @AF_UNIX, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SOCK_CLOEXEC, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @socket(i32 %6, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @fd_move_above_stdio(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SNDBUF_SIZE, align 4
  %21 = call i32 @fd_inc_sndbuf(i32 %19, i32 %20)
  %22 = call i32 (...) @getpid_cached()
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @USEC_PER_MSEC, align 4
  %26 = mul nsw i32 10, %25
  %27 = call i32 @timeval_store(%struct.timeval* %4, i32 %26)
  br label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @USEC_PER_SEC, align 4
  %30 = mul nsw i32 10, %29
  %31 = call i32 @timeval_store(%struct.timeval* %4, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_SNDTIMEO, align 4
  %36 = call i32 @setsockopt(i32 %33, i32 %34, i32 %35, %struct.timeval* %4, i32 4)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fd_move_above_stdio(i32) #1

declare dso_local i32 @fd_inc_sndbuf(i32, i32) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @timeval_store(%struct.timeval*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
