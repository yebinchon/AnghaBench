; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp_oos.c_tcp_oos_seg_tcplen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp_oos.c_tcp_oos_seg_tcplen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { %struct.tcp_seg* }
%struct.tcp_seg = type { %struct.tcp_seg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_pcb*, i32)* @tcp_oos_seg_tcplen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_oos_seg_tcplen(%struct.tcp_pcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcp_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_seg*, align 8
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i32 0, i32 0
  %10 = load %struct.tcp_seg*, %struct.tcp_seg** %9, align 8
  store %struct.tcp_seg* %10, %struct.tcp_seg** %7, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %13 = icmp ne %struct.tcp_seg* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %20 = call i32 @TCP_TCPLEN(%struct.tcp_seg* %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %25 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %24, i32 0, i32 0
  %26 = load %struct.tcp_seg*, %struct.tcp_seg** %25, align 8
  store %struct.tcp_seg* %26, %struct.tcp_seg** %7, align 8
  br label %11

27:                                               ; preds = %11
  %28 = call i32 (...) @fail()
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @TCP_TCPLEN(%struct.tcp_seg*) #1

declare dso_local i32 @fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
