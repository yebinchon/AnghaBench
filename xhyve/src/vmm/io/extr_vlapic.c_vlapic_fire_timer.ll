; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_fire_timer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_fire_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32 }

@APIC_OFFSET_TIMER_LVT = common dso_local global i32 0, align 4
@APIC_LVT_DM_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vlapic timer fired\00", align 1
@VLAPIC_INTR_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_fire_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_fire_timer(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = load i32, i32* @APIC_OFFSET_TIMER_LVT, align 4
  %6 = call i32 @vlapic_get_lvt(%struct.vlapic* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @APIC_LVT_DM_FIXED, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @vlapic_fire_lvt(%struct.vlapic* %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %15 = call i32 @VLAPIC_CTR0(%struct.vlapic* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %17 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %20 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VLAPIC_INTR_TIMER, align 4
  %23 = call i32 @vmm_stat_incr(i32 %18, i32 %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @vlapic_get_lvt(%struct.vlapic*, i32) #1

declare dso_local i64 @vlapic_fire_lvt(%struct.vlapic*, i32) #1

declare dso_local i32 @VLAPIC_CTR0(%struct.vlapic*, i8*) #1

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
