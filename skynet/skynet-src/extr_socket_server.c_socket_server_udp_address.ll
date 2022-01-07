; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_address.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_udp_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_udp_address = type { i32 }
%struct.socket_server = type { i32 }
%struct.socket_message = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket_udp_address* @socket_server_udp_address(%struct.socket_server* %0, %struct.socket_message* %1, i32* %2) #0 {
  %4 = alloca %struct.socket_udp_address*, align 8
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket_message*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket_message* %1, %struct.socket_message** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %11 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %14 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 7, i32* %23, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  store i32 19, i32* %25, align 4
  br label %27

26:                                               ; preds = %3
  store %struct.socket_udp_address* null, %struct.socket_udp_address** %4, align 8
  br label %30

27:                                               ; preds = %24, %22
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast i32* %28 to %struct.socket_udp_address*
  store %struct.socket_udp_address* %29, %struct.socket_udp_address** %4, align 8
  br label %30

30:                                               ; preds = %27, %26
  %31 = load %struct.socket_udp_address*, %struct.socket_udp_address** %4, align 8
  ret %struct.socket_udp_address* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
