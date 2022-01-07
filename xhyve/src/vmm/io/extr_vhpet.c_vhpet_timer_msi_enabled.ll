; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_msi_enabled.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_msi_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HPET_TCAP_FSB_INT_DEL = common dso_local global i32 0, align 4
@HPET_TCNF_FSB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhpet*, i32)* @vhpet_timer_msi_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhpet_timer_msi_enabled(%struct.vhpet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhpet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @HPET_TCAP_FSB_INT_DEL, align 4
  %8 = load i32, i32* @HPET_TCNF_FSB_EN, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.vhpet*, %struct.vhpet** %4, align 8
  %11 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
