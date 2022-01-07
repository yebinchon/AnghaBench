; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_create_rx_segment.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_create_rx_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }
%struct.tcp_pcb = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @tcp_create_rx_segment(%struct.tcp_pcb* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.tcp_pcb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %13, i32 0, i32 5
  %15 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i32 0, i32 4
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.pbuf* @tcp_create_segment(i32* %14, i32* %16, i32 %19, i32 %22, i8* %23, i64 %24, i64 %29, i64 %34, i32 %35)
  ret %struct.pbuf* %36
}

declare dso_local %struct.pbuf* @tcp_create_segment(i32*, i32*, i32, i32, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
