; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbdata.c_AcpiTbAllocateOwnerId.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbdata.c_AcpiTbAllocateOwnerId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@TbAllocateOwnerId = common dso_local global i32 0, align 4
@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiTbAllocateOwnerId(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @TbAllocateOwnerId, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %9 = call i32 @AcpiUtAcquireMutex(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @AcpiUtAllocateOwnerId(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %21 = call i32 @AcpiUtReleaseMutex(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i32 @AcpiUtAllocateOwnerId(i32*) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
