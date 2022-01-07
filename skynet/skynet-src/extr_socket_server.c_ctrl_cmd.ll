; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket_message = type { i32*, i32, i32, i32 }
%struct.request_send = type { i32 }
%struct.request_send_udp = type { i32*, %struct.request_send }
%struct.request_start = type { i32 }
%struct.request_bind = type { i32 }
%struct.request_listen = type { i32 }
%struct.request_close = type { i32 }
%struct.request_open = type { i32 }
%struct.request_setudp = type { i32 }
%struct.request_setopt = type { i32 }
%struct.request_udp = type { i32 }

@SOCKET_EXIT = common dso_local global i32 0, align 4
@PRIORITY_HIGH = common dso_local global i32 0, align 4
@PRIORITY_LOW = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"socket-server: Unknown ctrl %c.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket_message*)* @ctrl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cmd(%struct.socket_server* %0, %struct.socket_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_server*, align 8
  %5 = alloca %struct.socket_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_send*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.request_send_udp*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %4, align 8
  store %struct.socket_message* %1, %struct.socket_message** %5, align 8
  %15 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %16 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = call i32 @block_readpipe(i32 %18, i32* %19, i32 8)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @block_readpipe(i32 %25, i32* %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %120 [
    i32 83, label %30
    i32 66, label %36
    i32 76, label %42
    i32 75, label %48
    i32 79, label %54
    i32 88, label %60
    i32 68, label %70
    i32 80, label %70
    i32 65, label %92
    i32 67, label %104
    i32 84, label %110
    i32 85, label %115
  ]

30:                                               ; preds = %2
  %31 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %33 = bitcast i32* %32 to %struct.request_start*
  %34 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %35 = call i32 @start_socket(%struct.socket_server* %31, %struct.request_start* %33, %struct.socket_message* %34)
  store i32 %35, i32* %3, align 4
  br label %124

36:                                               ; preds = %2
  %37 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %39 = bitcast i32* %38 to %struct.request_bind*
  %40 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %41 = call i32 @bind_socket(%struct.socket_server* %37, %struct.request_bind* %39, %struct.socket_message* %40)
  store i32 %41, i32* %3, align 4
  br label %124

42:                                               ; preds = %2
  %43 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %45 = bitcast i32* %44 to %struct.request_listen*
  %46 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %47 = call i32 @listen_socket(%struct.socket_server* %43, %struct.request_listen* %45, %struct.socket_message* %46)
  store i32 %47, i32* %3, align 4
  br label %124

48:                                               ; preds = %2
  %49 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %51 = bitcast i32* %50 to %struct.request_close*
  %52 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %53 = call i32 @close_socket(%struct.socket_server* %49, %struct.request_close* %51, %struct.socket_message* %52)
  store i32 %53, i32* %3, align 4
  br label %124

54:                                               ; preds = %2
  %55 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %57 = bitcast i32* %56 to %struct.request_open*
  %58 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %59 = call i32 @open_socket(%struct.socket_server* %55, %struct.request_open* %57, %struct.socket_message* %58)
  store i32 %59, i32* %3, align 4
  br label %124

60:                                               ; preds = %2
  %61 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %62 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %61, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %64 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %66 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  %67 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %68 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @SOCKET_EXIT, align 4
  store i32 %69, i32* %3, align 4
  br label %124

70:                                               ; preds = %2, %2
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 68
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @PRIORITY_HIGH, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @PRIORITY_LOW, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %11, align 4
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %80 = bitcast i32* %79 to %struct.request_send*
  store %struct.request_send* %80, %struct.request_send** %12, align 8
  %81 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %82 = load %struct.request_send*, %struct.request_send** %12, align 8
  %83 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @send_socket(%struct.socket_server* %81, %struct.request_send* %82, %struct.socket_message* %83, i32 %84, i32* null)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %87 = load %struct.request_send*, %struct.request_send** %12, align 8
  %88 = getelementptr inbounds %struct.request_send, %struct.request_send* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dec_sending_ref(%struct.socket_server* %86, i32 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %124

92:                                               ; preds = %2
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %94 = bitcast i32* %93 to %struct.request_send_udp*
  store %struct.request_send_udp* %94, %struct.request_send_udp** %14, align 8
  %95 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %96 = load %struct.request_send_udp*, %struct.request_send_udp** %14, align 8
  %97 = getelementptr inbounds %struct.request_send_udp, %struct.request_send_udp* %96, i32 0, i32 1
  %98 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %99 = load i32, i32* @PRIORITY_HIGH, align 4
  %100 = load %struct.request_send_udp*, %struct.request_send_udp** %14, align 8
  %101 = getelementptr inbounds %struct.request_send_udp, %struct.request_send_udp* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @send_socket(%struct.socket_server* %95, %struct.request_send* %97, %struct.socket_message* %98, i32 %99, i32* %102)
  store i32 %103, i32* %3, align 4
  br label %124

104:                                              ; preds = %2
  %105 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %106 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %107 = bitcast i32* %106 to %struct.request_setudp*
  %108 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %109 = call i32 @set_udp_address(%struct.socket_server* %105, %struct.request_setudp* %107, %struct.socket_message* %108)
  store i32 %109, i32* %3, align 4
  br label %124

110:                                              ; preds = %2
  %111 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %113 = bitcast i32* %112 to %struct.request_setopt*
  %114 = call i32 @setopt_socket(%struct.socket_server* %111, %struct.request_setopt* %113)
  store i32 -1, i32* %3, align 4
  br label %124

115:                                              ; preds = %2
  %116 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %117 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %118 = bitcast i32* %117 to %struct.request_udp*
  %119 = call i32 @add_udp_socket(%struct.socket_server* %116, %struct.request_udp* %118)
  store i32 -1, i32* %3, align 4
  br label %124

120:                                              ; preds = %2
  %121 = load i32, i32* @stderr, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %115, %110, %104, %92, %77, %60, %54, %48, %42, %36, %30
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @block_readpipe(i32, i32*, i32) #1

declare dso_local i32 @start_socket(%struct.socket_server*, %struct.request_start*, %struct.socket_message*) #1

declare dso_local i32 @bind_socket(%struct.socket_server*, %struct.request_bind*, %struct.socket_message*) #1

declare dso_local i32 @listen_socket(%struct.socket_server*, %struct.request_listen*, %struct.socket_message*) #1

declare dso_local i32 @close_socket(%struct.socket_server*, %struct.request_close*, %struct.socket_message*) #1

declare dso_local i32 @open_socket(%struct.socket_server*, %struct.request_open*, %struct.socket_message*) #1

declare dso_local i32 @send_socket(%struct.socket_server*, %struct.request_send*, %struct.socket_message*, i32, i32*) #1

declare dso_local i32 @dec_sending_ref(%struct.socket_server*, i32) #1

declare dso_local i32 @set_udp_address(%struct.socket_server*, %struct.request_setudp*, %struct.socket_message*) #1

declare dso_local i32 @setopt_socket(%struct.socket_server*, %struct.request_setopt*) #1

declare dso_local i32 @add_udp_socket(%struct.socket_server*, %struct.request_udp*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
