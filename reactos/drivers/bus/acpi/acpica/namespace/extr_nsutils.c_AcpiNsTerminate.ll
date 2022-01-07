; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsTerminate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NsTerminate = common dso_local global i32 0, align 4
@AcpiGbl_RootNode = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Namespace freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiNsTerminate() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @NsTerminate, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 %2)
  %4 = load i32, i32* @AcpiGbl_RootNode, align 4
  %5 = call i32 @AcpiNsDeleteNamespaceSubtree(i32 %4)
  %6 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %7 = call i32 @AcpiUtAcquireMutex(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @return_VOID, align 4
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @AcpiGbl_RootNode, align 4
  %15 = call i32 @AcpiNsDeleteNode(i32 %14)
  %16 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %17 = call i32 @AcpiUtReleaseMutex(i32 %16)
  %18 = load i32, i32* @ACPI_DB_INFO, align 4
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([17 x i8]* @.str to i32))
  %20 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiNsDeleteNamespaceSubtree(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiNsDeleteNode(i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
