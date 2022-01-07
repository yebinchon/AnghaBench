; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvRemoveGlobalLockHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvRemoveGlobalLockHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EvRemoveGlobalLockHandler = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockPresent = common dso_local global i32 0, align 4
@ACPI_EVENT_GLOBAL = common dso_local global i32 0, align 4
@AcpiEvGlobalLockHandler = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockPendingLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvRemoveGlobalLockHandler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @EvRemoveGlobalLockHandler, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* @AcpiGbl_GlobalLockPresent, align 4
  %6 = load i32, i32* @ACPI_EVENT_GLOBAL, align 4
  %7 = load i32, i32* @AcpiEvGlobalLockHandler, align 4
  %8 = call i32 @AcpiRemoveFixedEventHandler(i32 %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @AcpiGbl_GlobalLockPendingLock, align 4
  %10 = call i32 @AcpiOsDeleteLock(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiRemoveFixedEventHandler(i32, i32) #1

declare dso_local i32 @AcpiOsDeleteLock(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
