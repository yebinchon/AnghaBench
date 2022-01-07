; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_WaitConnect.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_WaitConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlc_tls_WaitConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_tls_WaitConnect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_tls_GetFD(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @POLLOUT, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %20, %1
  %15 = call i64 (...) @vlc_killed()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINTR, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %36

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = call i64 @vlc_poll_i11e(%struct.pollfd* %5, i32 1, i32 -1)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %14, label %23

23:                                               ; preds = %20
  store i32 4, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_ERROR, align 4
  %27 = call i64 @getsockopt(i32 %24, i32 %25, i32 %26, i32* %6, i32* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %29, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @vlc_tls_GetFD(i32*) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i64 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
