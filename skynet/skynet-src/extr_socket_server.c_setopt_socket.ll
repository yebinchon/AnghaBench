; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_setopt_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_setopt_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i64, i32, i32 }
%struct.request_setopt = type { i32, i32, i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.request_setopt*)* @setopt_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setopt_socket(%struct.socket_server* %0, %struct.request_setopt* %1) #0 {
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca %struct.request_setopt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store %struct.request_setopt* %1, %struct.request_setopt** %4, align 8
  %8 = load %struct.request_setopt*, %struct.request_setopt** %4, align 8
  %9 = getelementptr inbounds %struct.request_setopt, %struct.request_setopt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %12 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @HASH_ID(i32 %14)
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %13, i64 %15
  store %struct.socket* %16, %struct.socket** %6, align 8
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %2
  br label %41

29:                                               ; preds = %22
  %30 = load %struct.request_setopt*, %struct.request_setopt** %4, align 8
  %31 = getelementptr inbounds %struct.request_setopt, %struct.request_setopt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.socket*, %struct.socket** %6, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPPROTO_TCP, align 4
  %37 = load %struct.request_setopt*, %struct.request_setopt** %4, align 8
  %38 = getelementptr inbounds %struct.request_setopt, %struct.request_setopt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @setsockopt(i32 %35, i32 %36, i32 %39, i32* %7, i32 4)
  br label %41

41:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
