; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.h_sendbuffer_init_.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_socket.h_sendbuffer_init_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_sendbuffer = type { i32, i64, i32, i8* }

@SOCKET_BUFFER_OBJECT = common dso_local global i32 0, align 4
@SOCKET_BUFFER_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_sendbuffer*, i32, i8*, i32)* @sendbuffer_init_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendbuffer_init_(%struct.socket_sendbuffer* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.socket_sendbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.socket_sendbuffer* %0, %struct.socket_sendbuffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %11 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %14 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @SOCKET_BUFFER_OBJECT, align 4
  %19 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %20 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @SOCKET_BUFFER_MEMORY, align 4
  %23 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %24 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %5, align 8
  %29 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
