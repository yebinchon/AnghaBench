; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp6-client.c_dhcp6_network_bind_udp_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp6-client.c_dhcp6_network_bind_udp_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@test_index = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@test_dhcp_fd = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_network_bind_udp_socket(i32 %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @test_index, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = load i32, i32* @AF_UNIX, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = load i32, i32* @SOCK_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SOCK_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = load i32*, i32** @test_dhcp_fd, align 8
  %18 = call i64 @socketpair(i32 %11, i32 %16, i32 0, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32*, i32** @test_dhcp_fd, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
