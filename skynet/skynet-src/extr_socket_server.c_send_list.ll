; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i64 }
%struct.wb_list = type { i32 }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i32 }

@PROTOCOL_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.socket_lock*, %struct.socket_message*)* @send_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_list(%struct.socket_server* %0, %struct.socket* %1, %struct.wb_list* %2, %struct.socket_lock* %3, %struct.socket_message* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_server*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.wb_list*, align 8
  %10 = alloca %struct.socket_lock*, align 8
  %11 = alloca %struct.socket_message*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.wb_list* %2, %struct.wb_list** %9, align 8
  store %struct.socket_lock* %3, %struct.socket_lock** %10, align 8
  store %struct.socket_message* %4, %struct.socket_message** %11, align 8
  %12 = load %struct.socket*, %struct.socket** %8, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PROTOCOL_TCP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %21 = load %struct.socket_lock*, %struct.socket_lock** %10, align 8
  %22 = load %struct.socket_message*, %struct.socket_message** %11, align 8
  %23 = call i32 @send_list_tcp(%struct.socket_server* %18, %struct.socket* %19, %struct.wb_list* %20, %struct.socket_lock* %21, %struct.socket_message* %22)
  store i32 %23, i32* %6, align 4
  br label %30

24:                                               ; preds = %5
  %25 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %26 = load %struct.socket*, %struct.socket** %8, align 8
  %27 = load %struct.wb_list*, %struct.wb_list** %9, align 8
  %28 = load %struct.socket_message*, %struct.socket_message** %11, align 8
  %29 = call i32 @send_list_udp(%struct.socket_server* %25, %struct.socket* %26, %struct.wb_list* %27, %struct.socket_message* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @send_list_tcp(%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @send_list_udp(%struct.socket_server*, %struct.socket*, %struct.wb_list*, %struct.socket_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
