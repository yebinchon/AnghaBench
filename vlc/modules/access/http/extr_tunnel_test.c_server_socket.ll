; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel_test.c_server_socket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel_test.c_server_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @server_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_socket(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @PF_INET6, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = load i32, i32* @SOCK_CLOEXEC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IPPROTO_TCP, align 4
  %12 = call i32 @socket(i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  %20 = load i32, i32* @in6addr_loopback, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 3
  %22 = load i32, i32* @AF_INET6, align 4
  store i32 %22, i32* %21, align 4
  store i32 16, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @bind(i32 %23, %struct.sockaddr* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %31 = call i64 @getsockname(i32 %29, %struct.sockaddr* %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @vlc_close(i32 %34)
  store i32 -1, i32* %2, align 4
  br label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohs(i32 %38)
  %40 = load i32*, i32** %3, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %33, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
