; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_udp_sendbuffer.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_udp_sendbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.socket_sendbuffer = type { i32 }
%struct.socket_udp_address = type { i32 }

@SOCKET_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_socket_udp_sendbuffer(%struct.skynet_context* %0, i8* %1, %struct.socket_sendbuffer* %2) #0 {
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.socket_sendbuffer*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.socket_sendbuffer* %2, %struct.socket_sendbuffer** %6, align 8
  %7 = load i32, i32* @SOCKET_SERVER, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.socket_udp_address*
  %10 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %11 = call i32 @socket_server_udp_send(i32 %7, %struct.socket_udp_address* %9, %struct.socket_sendbuffer* %10)
  ret i32 %11
}

declare dso_local i32 @socket_server_udp_send(i32, %struct.socket_udp_address*, %struct.socket_sendbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
