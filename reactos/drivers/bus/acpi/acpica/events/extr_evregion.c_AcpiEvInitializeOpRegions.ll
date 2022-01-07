; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvInitializeOpRegions.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvInitializeOpRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EvInitializeOpRegions = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_NUM_DEFAULT_SPACES = common dso_local global i64 0, align 8
@AcpiGbl_RootNode = common dso_local global i32 0, align 4
@AcpiGbl_DefaultAddressSpaces = common dso_local global i32* null, align 8
@ACPI_REG_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvInitializeOpRegions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @EvInitializeOpRegions, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %7 = call i32 @AcpiUtAcquireMutex(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @return_ACPI_STATUS(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @ACPI_NUM_DEFAULT_SPACES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32, i32* @AcpiGbl_RootNode, align 4
  %21 = load i32*, i32** @AcpiGbl_DefaultAddressSpaces, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @AcpiEvHasDefaultHandler(i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32, i32* @AcpiGbl_RootNode, align 4
  %29 = load i32*, i32** @AcpiGbl_DefaultAddressSpaces, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_REG_CONNECT, align 4
  %34 = call i32 @AcpiEvExecuteRegMethods(i32 %28, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %41 = call i32 @AcpiUtReleaseMutex(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @AcpiEvHasDefaultHandler(i32, i32) #1

declare dso_local i32 @AcpiEvExecuteRegMethods(i32, i32, i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
