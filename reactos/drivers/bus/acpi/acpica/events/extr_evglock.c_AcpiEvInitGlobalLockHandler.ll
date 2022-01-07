; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvInitGlobalLockHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvInitGlobalLockHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EvInitGlobalLockHandler = common dso_local global i32 0, align 4
@AcpiGbl_ReducedHardware = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@ACPI_EVENT_GLOBAL = common dso_local global i32 0, align 4
@AcpiEvGlobalLockHandler = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@AcpiGbl_GlobalLockPresent = common dso_local global i8* null, align 8
@AE_NO_HARDWARE_RESPONSE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"No response from Global Lock hardware, disabling lock\00", align 1
@AcpiGbl_GlobalLockPendingLock = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockPending = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiEvInitGlobalLockHandler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @EvInitGlobalLockHandler, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i64, i64* @AcpiGbl_ReducedHardware, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @AE_OK, align 8
  %9 = call i32 @return_ACPI_STATUS(i64 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @ACPI_EVENT_GLOBAL, align 4
  %12 = load i32, i32* @AcpiEvGlobalLockHandler, align 4
  %13 = call i64 @AcpiInstallFixedEventHandler(i32 %11, i32 %12, i32* null)
  store i64 %13, i64* %2, align 8
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** @AcpiGbl_GlobalLockPresent, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @AE_NO_HARDWARE_RESPONSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = call i32 @ACPI_ERROR(i32 ptrtoint ([54 x i8]* @.str to i32))
  %21 = load i64, i64* @AE_OK, align 8
  %22 = call i32 @return_ACPI_STATUS(i64 %21)
  br label %23

23:                                               ; preds = %18, %10
  %24 = call i64 @AcpiOsCreateLock(i32* @AcpiGbl_GlobalLockPendingLock)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @ACPI_FAILURE(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @return_ACPI_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i8*, i8** @FALSE, align 8
  store i8* %32, i8** @AcpiGbl_GlobalLockPending, align 8
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @AcpiGbl_GlobalLockPresent, align 8
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @return_ACPI_STATUS(i64 %34)
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @AcpiInstallFixedEventHandler(i32, i32, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @AcpiOsCreateLock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
