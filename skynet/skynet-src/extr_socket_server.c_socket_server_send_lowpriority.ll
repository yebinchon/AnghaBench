; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_send_lowpriority.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_send_lowpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i32, i64 }
%struct.socket_sendbuffer = type { i32 }
%struct.request_package = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_send_lowpriority(%struct.socket_server* %0, %struct.socket_sendbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_server*, align 8
  %5 = alloca %struct.socket_sendbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.request_package, align 4
  store %struct.socket_server* %0, %struct.socket_server** %4, align 8
  store %struct.socket_sendbuffer* %1, %struct.socket_sendbuffer** %5, align 8
  %9 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %10 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %13 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %12, i32 0, i32 0
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @HASH_ID(i32 %15)
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %14, i64 %16
  store %struct.socket* %17, %struct.socket** %7, align 8
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %2
  %30 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %31 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %32 = call i32 @free_buffer(%struct.socket_server* %30, %struct.socket_sendbuffer* %31)
  store i32 -1, i32* %3, align 4
  br label %51

33:                                               ; preds = %23
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @inc_sending_ref(%struct.socket* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.request_package, %struct.request_package* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %42 = getelementptr inbounds %struct.request_package, %struct.request_package* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = call i32 @clone_buffer(%struct.socket_sendbuffer* %41, i32* %44)
  %46 = getelementptr inbounds %struct.request_package, %struct.request_package* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %50 = call i32 @send_request(%struct.socket_server* %49, %struct.request_package* %8, i8 signext 80, i32 12)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %33, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @free_buffer(%struct.socket_server*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @inc_sending_ref(%struct.socket*, i32) #1

declare dso_local i32 @clone_buffer(%struct.socket_sendbuffer*, i32*) #1

declare dso_local i32 @send_request(%struct.socket_server*, %struct.request_package*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
