; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_handshake.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, i32, %struct.slave* }
%struct.slave = type { i32 }
%struct.socket_sendbuffer = type { i32, i32*, i32, i32 }

@SOCKET_BUFFER_RAWPOINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i32)* @handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handshake(%struct.harbor* %0, i32 %1) #0 {
  %3 = alloca %struct.harbor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slave*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca %struct.socket_sendbuffer, align 8
  store %struct.harbor* %0, %struct.harbor** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.harbor*, %struct.harbor** %3, align 8
  %9 = getelementptr inbounds %struct.harbor, %struct.harbor* %8, i32 0, i32 2
  %10 = load %struct.slave*, %struct.slave** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.slave, %struct.slave* %10, i64 %12
  store %struct.slave* %13, %struct.slave** %5, align 8
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %15 = load %struct.harbor*, %struct.harbor** %3, align 8
  %16 = getelementptr inbounds %struct.harbor, %struct.harbor* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.slave*, %struct.slave** %5, align 8
  %19 = getelementptr inbounds %struct.slave, %struct.slave* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SOCKET_BUFFER_RAWPOINTER, align 4
  %23 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %7, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %7, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.harbor*, %struct.harbor** %3, align 8
  %28 = getelementptr inbounds %struct.harbor, %struct.harbor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @skynet_socket_sendbuffer(i32 %29, %struct.socket_sendbuffer* %7)
  ret void
}

declare dso_local i32 @skynet_socket_sendbuffer(i32, %struct.socket_sendbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
