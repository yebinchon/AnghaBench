; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_system.c_acpi_suspend.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_system.c_acpi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_STATE_S5 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_suspend(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @AcpiEnterSleepStatePrep(i64 %5)
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @AcpiEnterSleepState(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ACPI_SUCCESS(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ACPI_STATE_S5, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %12, %1
  %19 = call i32 (...) @_disable()
  %20 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @acpi_system_suspend(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @AcpiLeaveSleepState(i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @acpi_system_restore_state(i64 %25)
  %27 = call i32 (...) @_enable()
  %28 = call i32 @AcpiSetFirmwareWakingVector(i32 0, i32 0)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @AcpiEnterSleepStatePrep(i64) #1

declare dso_local i32 @AcpiEnterSleepState(i64) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @_disable(...) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i32 @acpi_system_suspend(i64) #1

declare dso_local i32 @AcpiLeaveSleepState(i64) #1

declare dso_local i32 @acpi_system_restore_state(i64) #1

declare dso_local i32 @_enable(...) #1

declare dso_local i32 @AcpiSetFirmwareWakingVector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
