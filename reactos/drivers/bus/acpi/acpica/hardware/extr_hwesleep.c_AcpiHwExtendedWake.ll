; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwesleep.c_AcpiHwExtendedWake.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwesleep.c_AcpiHwExtendedWake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HwExtendedWake = common dso_local global i32 0, align 4
@ACPI_SLEEP_TYPE_INVALID = common dso_local global i32 0, align 4
@AcpiGbl_SleepTypeA = common dso_local global i32 0, align 4
@METHOD_PATHNAME__SST = common dso_local global i32 0, align 4
@ACPI_SST_WAKING = common dso_local global i32 0, align 4
@METHOD_PATHNAME__WAK = common dso_local global i32 0, align 4
@ACPI_X_WAKE_STATUS = common dso_local global i64 0, align 8
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_SystemAwakeAndRunning = common dso_local global i32 0, align 4
@ACPI_SST_WORKING = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwExtendedWake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @HwExtendedWake, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* @ACPI_SLEEP_TYPE_INVALID, align 4
  store i32 %6, i32* @AcpiGbl_SleepTypeA, align 4
  %7 = load i32, i32* @METHOD_PATHNAME__SST, align 4
  %8 = load i32, i32* @ACPI_SST_WAKING, align 4
  %9 = call i32 @AcpiHwExecuteSleepMethod(i32 %7, i32 %8)
  %10 = load i32, i32* @METHOD_PATHNAME__WAK, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @AcpiHwExecuteSleepMethod(i32 %10, i32 %11)
  %13 = load i64, i64* @ACPI_X_WAKE_STATUS, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @AcpiWrite(i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0))
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @AcpiGbl_SystemAwakeAndRunning, align 4
  %17 = load i32, i32* @METHOD_PATHNAME__SST, align 4
  %18 = load i32, i32* @ACPI_SST_WORKING, align 4
  %19 = call i32 @AcpiHwExecuteSleepMethod(i32 %17, i32 %18)
  %20 = load i32, i32* @AE_OK, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiHwExecuteSleepMethod(i32, i32) #1

declare dso_local i32 @AcpiWrite(i32, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
