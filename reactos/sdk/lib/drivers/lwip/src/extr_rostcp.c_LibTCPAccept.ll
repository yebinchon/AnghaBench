; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPAccept.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@InternalRecvEventHandler = common dso_local global i32 0, align 4
@InternalSendEventHandler = common dso_local global i32 0, align 4
@InternalErrorEventHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LibTCPAccept(i32 %0, %struct.tcp_pcb* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_pcb*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @ASSERT(i8* %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @tcp_arg(i32 %9, i8* null)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @InternalRecvEventHandler, align 4
  %13 = call i32 @tcp_recv(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @InternalSendEventHandler, align 4
  %16 = call i32 @tcp_sent(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @InternalErrorEventHandler, align 4
  %19 = call i32 @tcp_err(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @tcp_arg(i32 %20, i8* %21)
  %23 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %24 = call i32 @tcp_accepted(%struct.tcp_pcb* %23)
  ret void
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @tcp_arg(i32, i8*) #1

declare dso_local i32 @tcp_recv(i32, i32) #1

declare dso_local i32 @tcp_sent(i32, i32) #1

declare dso_local i32 @tcp_err(i32, i32) #1

declare dso_local i32 @tcp_accepted(%struct.tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
