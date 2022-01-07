; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_poll.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.c_skynet_socket_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket_message = type { i32 }

@SOCKET_SERVER = common dso_local global %struct.socket_server* null, align 8
@SKYNET_SOCKET_TYPE_DATA = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_CLOSE = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_CONNECT = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_ERROR = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_ACCEPT = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_UDP = common dso_local global i32 0, align 4
@SKYNET_SOCKET_TYPE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown socket message type %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_socket_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.socket_server*, align 8
  %3 = alloca %struct.socket_message, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.socket_server*, %struct.socket_server** @SOCKET_SERVER, align 8
  store %struct.socket_server* %6, %struct.socket_server** %2, align 8
  %7 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %8 = call i32 @assert(%struct.socket_server* %7)
  store i32 1, i32* %4, align 4
  %9 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %10 = call i32 @socket_server_poll(%struct.socket_server* %9, %struct.socket_message* %3, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %34 [
    i32 131, label %12
    i32 133, label %13
    i32 134, label %16
    i32 130, label %19
    i32 132, label %22
    i32 135, label %25
    i32 129, label %28
    i32 128, label %31
  ]

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %42

13:                                               ; preds = %0
  %14 = load i32, i32* @SKYNET_SOCKET_TYPE_DATA, align 4
  %15 = call i32 @forward_message(i32 %14, i32 0, %struct.socket_message* %3)
  br label %37

16:                                               ; preds = %0
  %17 = load i32, i32* @SKYNET_SOCKET_TYPE_CLOSE, align 4
  %18 = call i32 @forward_message(i32 %17, i32 0, %struct.socket_message* %3)
  br label %37

19:                                               ; preds = %0
  %20 = load i32, i32* @SKYNET_SOCKET_TYPE_CONNECT, align 4
  %21 = call i32 @forward_message(i32 %20, i32 1, %struct.socket_message* %3)
  br label %37

22:                                               ; preds = %0
  %23 = load i32, i32* @SKYNET_SOCKET_TYPE_ERROR, align 4
  %24 = call i32 @forward_message(i32 %23, i32 1, %struct.socket_message* %3)
  br label %37

25:                                               ; preds = %0
  %26 = load i32, i32* @SKYNET_SOCKET_TYPE_ACCEPT, align 4
  %27 = call i32 @forward_message(i32 %26, i32 1, %struct.socket_message* %3)
  br label %37

28:                                               ; preds = %0
  %29 = load i32, i32* @SKYNET_SOCKET_TYPE_UDP, align 4
  %30 = call i32 @forward_message(i32 %29, i32 0, %struct.socket_message* %3)
  br label %37

31:                                               ; preds = %0
  %32 = load i32, i32* @SKYNET_SOCKET_TYPE_WARNING, align 4
  %33 = call i32 @forward_message(i32 %32, i32 0, %struct.socket_message* %3)
  br label %37

34:                                               ; preds = %0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @skynet_error(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %1, align 4
  br label %42

37:                                               ; preds = %31, %28, %25, %22, %19, %16, %13
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %1, align 4
  br label %42

41:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %40, %34, %12
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @assert(%struct.socket_server*) #1

declare dso_local i32 @socket_server_poll(%struct.socket_server*, %struct.socket_message*, i32*) #1

declare dso_local i32 @forward_message(i32, i32, %struct.socket_message*) #1

declare dso_local i32 @skynet_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
