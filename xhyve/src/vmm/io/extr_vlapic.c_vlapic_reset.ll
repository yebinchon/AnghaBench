; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_reset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i32, i32, i64, i32 }

@VLAPIC_VERSION = common dso_local global i32 0, align 4
@VLAPIC_MAXLVT_INDEX = common dso_local global i32 0, align 4
@MAXLVTSHIFT = common dso_local global i32 0, align 4
@APIC_SVR_VECTOR = common dso_local global i32 0, align 4
@BS_RUNNING = common dso_local global i32 0, align 4
@BS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_reset(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %4, i32 0, i32 3
  %6 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  store %struct.LAPIC* %6, %struct.LAPIC** %3, align 8
  %7 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %8 = call i32 @bzero(%struct.LAPIC* %7, i32 32)
  %9 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %10 = call i32 @vlapic_get_id(%struct.vlapic* %9)
  %11 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %12 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @VLAPIC_VERSION, align 4
  %14 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %15 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @VLAPIC_MAXLVT_INDEX, align 4
  %17 = load i32, i32* @MAXLVTSHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %20 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %24 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load i32, i32* @APIC_SVR_VECTOR, align 4
  %26 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %27 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %29 = call i32 @vlapic_mask_lvts(%struct.vlapic* %28)
  %30 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %31 = call i32 @vlapic_reset_tmr(%struct.vlapic* %30)
  %32 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %33 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %35 = call i32 @vlapic_dcr_write_handler(%struct.vlapic* %34)
  %36 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %37 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @BS_RUNNING, align 4
  %42 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %43 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %1
  %45 = load i32, i32* @BS_INIT, align 4
  %46 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %47 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %50 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %53 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.LAPIC*, i32) #1

declare dso_local i32 @vlapic_get_id(%struct.vlapic*) #1

declare dso_local i32 @vlapic_mask_lvts(%struct.vlapic*) #1

declare dso_local i32 @vlapic_reset_tmr(%struct.vlapic*) #1

declare dso_local i32 @vlapic_dcr_write_handler(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
