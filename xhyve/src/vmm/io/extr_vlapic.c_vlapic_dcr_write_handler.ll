; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_dcr_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_dcr_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"vlapic dcr_timer=%#x, divisor=%d\00", align 1
@VLAPIC_BUS_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_dcr_write_handler(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  %4 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %5 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %6 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %5, i32 0, i32 2
  %7 = load %struct.LAPIC*, %struct.LAPIC** %6, align 8
  store %struct.LAPIC* %7, %struct.LAPIC** %3, align 8
  %8 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %9 = call i32 @VLAPIC_TIMER_LOCK(%struct.vlapic* %8)
  %10 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %11 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vlapic_timer_divisor(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %15 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %16 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @VLAPIC_CTR2(%struct.vlapic* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @VLAPIC_BUS_FREQ, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %20, %21
  %23 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %24 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %23, i32 0, i32 1
  %25 = call i32 @FREQ2BT(i32 %22, i32* %24)
  %26 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %27 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %30 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %32 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %31, i32 0, i32 0
  %33 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %34 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bintime_mul(i32* %32, i32 %35)
  %37 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %38 = call i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic* %37)
  ret void
}

declare dso_local i32 @VLAPIC_TIMER_LOCK(%struct.vlapic*) #1

declare dso_local i32 @vlapic_timer_divisor(i32) #1

declare dso_local i32 @VLAPIC_CTR2(%struct.vlapic*, i8*, i32, i32) #1

declare dso_local i32 @FREQ2BT(i32, i32*) #1

declare dso_local i32 @bintime_mul(i32*, i32) #1

declare dso_local i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
