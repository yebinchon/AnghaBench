; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_periodic_timer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_periodic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32 }

@APIC_OFFSET_TIMER_LVT = common dso_local global i32 0, align 4
@APIC_LVTT_TM_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlapic*)* @vlapic_periodic_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlapic_periodic_timer(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = load i32, i32* @APIC_OFFSET_TIMER_LVT, align 4
  %6 = call i32 @vlapic_get_lvt(%struct.vlapic* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @APIC_LVTT_TM_PERIODIC, align 4
  %9 = call i32 @vlapic_get_lvt_field(i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @vlapic_get_lvt(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_get_lvt_field(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
