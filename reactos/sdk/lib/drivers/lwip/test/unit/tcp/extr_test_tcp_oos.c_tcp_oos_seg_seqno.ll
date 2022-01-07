; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp_oos.c_tcp_oos_seg_seqno.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp_oos.c_tcp_oos_seg_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { %struct.tcp_seg* }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_pcb*, i32)* @tcp_oos_seg_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_oos_seg_seqno(%struct.tcp_pcb* %0, i32 %1) #0 {
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

11:                                               ; preds = %24, %2
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %13 = icmp ne %struct.tcp_seg* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %28 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %27, i32 0, i32 0
  %29 = load %struct.tcp_seg*, %struct.tcp_seg** %28, align 8
  store %struct.tcp_seg* %29, %struct.tcp_seg** %7, align 8
  br label %11

30:                                               ; preds = %11
  %31 = call i32 (...) @fail()
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
