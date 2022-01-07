; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utmutex.c_AcpiUtMutexTerminate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utmutex.c_AcpiUtMutexTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UtMutexTerminate = common dso_local global i32 0, align 4
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@AcpiGbl_GpeLock = common dso_local global i32 0, align 4
@AcpiGbl_HardwareLock = common dso_local global i32 0, align 4
@AcpiGbl_ReferenceCountLock = common dso_local global i32 0, align 4
@AcpiGbl_NamespaceRwLock = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiUtMutexTerminate() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @UtMutexTerminate, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 %2)
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ACPI_NUM_MUTEX, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @AcpiUtDeleteMutex(i64 %9)
  br label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %4

14:                                               ; preds = %4
  %15 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %16 = call i32 @AcpiOsDeleteMutex(i32 %15)
  %17 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %18 = call i32 @AcpiOsDeleteLock(i32 %17)
  %19 = load i32, i32* @AcpiGbl_HardwareLock, align 4
  %20 = call i32 @AcpiOsDeleteLock(i32 %19)
  %21 = load i32, i32* @AcpiGbl_ReferenceCountLock, align 4
  %22 = call i32 @AcpiOsDeleteLock(i32 %21)
  %23 = call i32 @AcpiUtDeleteRwLock(i32* @AcpiGbl_NamespaceRwLock)
  %24 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtDeleteMutex(i64) #1

declare dso_local i32 @AcpiOsDeleteMutex(i32) #1

declare dso_local i32 @AcpiOsDeleteLock(i32) #1

declare dso_local i32 @AcpiUtDeleteRwLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
