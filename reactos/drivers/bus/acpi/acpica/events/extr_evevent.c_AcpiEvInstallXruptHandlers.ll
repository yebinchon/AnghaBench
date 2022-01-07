; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvInstallXruptHandlers.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvInstallXruptHandlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EvInstallXruptHandlers = common dso_local global i32 0, align 4
@AcpiGbl_ReducedHardware = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to install System Control Interrupt handler\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to initialize Global Lock handler\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_EventsInitialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvInstallXruptHandlers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @EvInstallXruptHandlers, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i64, i64* @AcpiGbl_ReducedHardware, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @AE_OK, align 4
  %9 = call i32 @return_ACPI_STATUS(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @AcpiEvInstallSciHandler()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @AE_INFO, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([51 x i8]* @.str to i32))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = call i32 (...) @AcpiEvInitGlobalLockHandler()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([41 x i8]* @.str.1 to i32))
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @AcpiGbl_EventsInitialized, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiEvInstallSciHandler(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @AcpiEvInitGlobalLockHandler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
