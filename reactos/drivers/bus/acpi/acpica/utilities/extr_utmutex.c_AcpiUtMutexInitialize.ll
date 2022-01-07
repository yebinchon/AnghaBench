; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utmutex.c_AcpiUtMutexInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utmutex.c_AcpiUtMutexInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UtMutexInitialize = common dso_local global i32 0, align 4
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@AcpiGbl_GpeLock = common dso_local global i32 0, align 4
@AcpiGbl_HardwareLock = common dso_local global i32 0, align 4
@AcpiGbl_ReferenceCountLock = common dso_local global i32 0, align 4
@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@AcpiGbl_NamespaceRwLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtMutexInitialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @UtMutexInitialize, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @ACPI_NUM_MUTEX, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @AcpiUtCreateMutex(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %2, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %6

23:                                               ; preds = %6
  %24 = call i32 @AcpiOsCreateLock(i32* @AcpiGbl_GpeLock)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = call i32 @AcpiOsCreateLock(i32* @AcpiGbl_HardwareLock)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 @AcpiOsCreateLock(i32* @AcpiGbl_ReferenceCountLock)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @return_ACPI_STATUS(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = call i32 @AcpiOsCreateMutex(i32* @AcpiGbl_OsiMutex)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @return_ACPI_STATUS(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = call i32 @AcpiUtCreateRwLock(i32* @AcpiGbl_NamespaceRwLock)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtCreateMutex(i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiOsCreateLock(i32*) #1

declare dso_local i32 @AcpiOsCreateMutex(i32*) #1

declare dso_local i32 @AcpiUtCreateRwLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
