; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_new_counters_pcb.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_new_counters_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i8*, i8* }
%struct.test_tcp_counters = type { i32 }

@test_tcp_counters_recv = common dso_local global i32 0, align 4
@test_tcp_counters_err = common dso_local global i32 0, align 4
@TCP_WND = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcp_pcb* @test_tcp_new_counters_pcb(%struct.test_tcp_counters* %0) #0 {
  %2 = alloca %struct.test_tcp_counters*, align 8
  %3 = alloca %struct.tcp_pcb*, align 8
  store %struct.test_tcp_counters* %0, %struct.test_tcp_counters** %2, align 8
  %4 = call %struct.tcp_pcb* (...) @tcp_new()
  store %struct.tcp_pcb* %4, %struct.tcp_pcb** %3, align 8
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %6 = icmp ne %struct.tcp_pcb* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %9 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %2, align 8
  %10 = call i32 @tcp_arg(%struct.tcp_pcb* %8, %struct.test_tcp_counters* %9)
  %11 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %12 = load i32, i32* @test_tcp_counters_recv, align 4
  %13 = call i32 @tcp_recv(%struct.tcp_pcb* %11, i32 %12)
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %15 = load i32, i32* @test_tcp_counters_err, align 4
  %16 = call i32 @tcp_err(%struct.tcp_pcb* %14, i32 %15)
  %17 = load i8*, i8** @TCP_WND, align 8
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @TCP_WND, align 8
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %7, %1
  %24 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  ret %struct.tcp_pcb* %24
}

declare dso_local %struct.tcp_pcb* @tcp_new(...) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, %struct.test_tcp_counters*) #1

declare dso_local i32 @tcp_recv(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_err(%struct.tcp_pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
