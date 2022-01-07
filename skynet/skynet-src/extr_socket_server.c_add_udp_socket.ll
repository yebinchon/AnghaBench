; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_add_udp_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_add_udp_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.request_udp = type { i32, i64, i32, i32 }
%struct.socket = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@PROTOCOL_UDPv6 = common dso_local global i32 0, align 4
@PROTOCOL_UDP = common dso_local global i32 0, align 4
@SOCKET_TYPE_INVALID = common dso_local global i32 0, align 4
@SOCKET_TYPE_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.request_udp*)* @add_udp_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_udp_socket(%struct.socket_server* %0, %struct.request_udp* %1) #0 {
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca %struct.request_udp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store %struct.request_udp* %1, %struct.request_udp** %4, align 8
  %8 = load %struct.request_udp*, %struct.request_udp** %4, align 8
  %9 = getelementptr inbounds %struct.request_udp, %struct.request_udp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.request_udp*, %struct.request_udp** %4, align 8
  %12 = getelementptr inbounds %struct.request_udp, %struct.request_udp* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PROTOCOL_UDPv6, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @PROTOCOL_UDP, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.request_udp*, %struct.request_udp** %4, align 8
  %24 = getelementptr inbounds %struct.request_udp, %struct.request_udp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.request_udp*, %struct.request_udp** %4, align 8
  %28 = getelementptr inbounds %struct.request_udp, %struct.request_udp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.socket* @new_fd(%struct.socket_server* %21, i32 %22, i32 %25, i32 %26, i32 %29, i32 1)
  store %struct.socket* %30, %struct.socket** %7, align 8
  %31 = load %struct.socket*, %struct.socket** %7, align 8
  %32 = icmp eq %struct.socket* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load %struct.request_udp*, %struct.request_udp** %4, align 8
  %35 = getelementptr inbounds %struct.request_udp, %struct.request_udp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* @SOCKET_TYPE_INVALID, align 4
  %39 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %40 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @HASH_ID(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %55

46:                                               ; preds = %20
  %47 = load i32, i32* @SOCKET_TYPE_CONNECTED, align 4
  %48 = load %struct.socket*, %struct.socket** %7, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memset(i32 %53, i32 0, i32 4)
  br label %55

55:                                               ; preds = %46, %33
  ret void
}

declare dso_local %struct.socket* @new_fd(%struct.socket_server*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
