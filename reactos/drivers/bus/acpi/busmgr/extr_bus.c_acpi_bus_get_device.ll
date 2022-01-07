; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_device.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_bus_data_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error getting context for object [%p]\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_get_device(i32 %0, %struct.acpi_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_device** %1, %struct.acpi_device*** %4, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.acpi_device**, %struct.acpi_device*** %4, align 8
  %8 = icmp ne %struct.acpi_device** %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %11 = call i32 @return_VALUE(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @acpi_bus_data_handler, align 4
  %15 = load %struct.acpi_device**, %struct.acpi_device*** %4, align 8
  %16 = bitcast %struct.acpi_device** %15 to i8**
  %17 = call i32 @AcpiGetData(i32 %13, i32 %14, i8** %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load %struct.acpi_device**, %struct.acpi_device*** %4, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %22, align 8
  %24 = icmp ne %struct.acpi_device* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @AE_NOT_FOUND, align 4
  %29 = call i32 @return_VALUE(i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  ret i32 0
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @AcpiGetData(i32, i32, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
