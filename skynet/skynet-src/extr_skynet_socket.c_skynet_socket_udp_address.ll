; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_udp_address.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_udp_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_socket_message = type { i64, i32, i32, i32 }
%struct.socket_message = type { i32, i32, i64, i32 }

@SKYNET_SOCKET_TYPE_UDP = common dso_local global i64 0, align 8
@SOCKET_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @skynet_socket_udp_address(%struct.skynet_socket_message* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_socket_message*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.socket_message, align 8
  store %struct.skynet_socket_message* %0, %struct.skynet_socket_message** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %8 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SKYNET_SOCKET_TYPE_UDP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %15 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %6, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %20 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %24 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @SOCKET_SERVER, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @socket_server_udp_address(i32 %27, %struct.socket_message* %6, i32* %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %13, %12
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @socket_server_udp_address(i32, %struct.socket_message*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
