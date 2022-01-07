; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/udp/extr_test_udp.c_udp_remove_all.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/udp/extr_test_udp.c_udp_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_pcb = type { %struct.udp_pcb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@udp_pcbs = common dso_local global %struct.udp_pcb* null, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEMP_UDP_PCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udp_remove_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_remove_all() #0 {
  %1 = alloca %struct.udp_pcb*, align 8
  %2 = alloca %struct.udp_pcb*, align 8
  %3 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8
  store %struct.udp_pcb* %3, %struct.udp_pcb** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  %6 = icmp ne %struct.udp_pcb* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  store %struct.udp_pcb* %8, %struct.udp_pcb** %2, align 8
  %9 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %9, i32 0, i32 0
  %11 = load %struct.udp_pcb*, %struct.udp_pcb** %10, align 8
  store %struct.udp_pcb* %11, %struct.udp_pcb** %1, align 8
  %12 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %13 = call i32 @udp_remove(%struct.udp_pcb* %12)
  br label %4

14:                                               ; preds = %4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lwip_stats, i32 0, i32 0), align 8
  %16 = load i64, i64* @MEMP_UDP_PCB, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @fail_unless(i32 %21)
  ret void
}

declare dso_local i32 @udp_remove(%struct.udp_pcb*) #1

declare dso_local i32 @fail_unless(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
