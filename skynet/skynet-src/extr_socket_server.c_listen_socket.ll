; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_listen_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_listen_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request_listen = type { i32, i32, i32 }
%struct.socket_message = type { i32, i8*, i64, i32 }
%struct.socket = type { i32 }

@PROTOCOL_TCP = common dso_local global i32 0, align 4
@SOCKET_TYPE_PLISTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reach skynet socket number limit\00", align 1
@SOCKET_TYPE_INVALID = common dso_local global i32 0, align 4
@SOCKET_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_listen*, %struct.socket_message*)* @listen_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_socket(%struct.socket_server* %0, %struct.request_listen* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_listen*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_listen* %1, %struct.request_listen** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  %11 = load %struct.request_listen*, %struct.request_listen** %6, align 8
  %12 = getelementptr inbounds %struct.request_listen, %struct.request_listen* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.request_listen*, %struct.request_listen** %6, align 8
  %15 = getelementptr inbounds %struct.request_listen, %struct.request_listen* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PROTOCOL_TCP, align 4
  %21 = load %struct.request_listen*, %struct.request_listen** %6, align 8
  %22 = getelementptr inbounds %struct.request_listen, %struct.request_listen* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.socket* @new_fd(%struct.socket_server* %17, i32 %18, i32 %19, i32 %20, i32 %23, i32 0)
  store %struct.socket* %24, %struct.socket** %10, align 8
  %25 = load %struct.socket*, %struct.socket** %10, align 8
  %26 = icmp eq %struct.socket* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @SOCKET_TYPE_PLISTEN, align 4
  %30 = load %struct.socket*, %struct.socket** %10, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 -1, i32* %4, align 4
  br label %56

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load %struct.request_listen*, %struct.request_listen** %6, align 8
  %36 = getelementptr inbounds %struct.request_listen, %struct.request_listen* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %39 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %42 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %44 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %46 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @SOCKET_TYPE_INVALID, align 4
  %48 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %49 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @HASH_ID(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %32, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.socket* @new_fd(%struct.socket_server*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @HASH_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
