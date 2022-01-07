; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_button.c_acpi_button_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_button.c_acpi_button_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"acpi_button_remove\00", align 1
@ACPI_EVENT_POWER_BUTTON = common dso_local global i32 0, align 4
@acpi_button_notify_fixed = common dso_local global i32 0, align 4
@ACPI_EVENT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_button_notify = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error removing notify handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_button_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_button_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_button*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.acpi_button* null, %struct.acpi_button** %7, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %12)
  %14 = icmp ne %struct.acpi_button* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %2
  %16 = call i32 @return_VALUE(i32 -1)
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %18)
  store %struct.acpi_button* %19, %struct.acpi_button** %7, align 8
  %20 = load %struct.acpi_button*, %struct.acpi_button** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %34 [
    i32 129, label %23
    i32 128, label %27
    i32 130, label %31
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %25 = load i32, i32* @acpi_button_notify_fixed, align 4
  %26 = call i32 @AcpiRemoveFixedEventHandler(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %41

27:                                               ; preds = %17
  %28 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %29 = load i32, i32* @acpi_button_notify_fixed, align 4
  %30 = call i32 @AcpiRemoveFixedEventHandler(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %41

31:                                               ; preds = %17
  %32 = load i32, i32* @acpi_button_notify_fixed, align 4
  %33 = call i32 @AcpiRemoveFixedEventHandler(i32 130, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %17
  %35 = load %struct.acpi_button*, %struct.acpi_button** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %39 = load i32, i32* @acpi_button_notify, align 4
  %40 = call i32 @AcpiRemoveNotifyHandler(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %31, %27, %23
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ACPI_DB_ERROR, align 4
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.acpi_button*, %struct.acpi_button** %7, align 8
  %50 = call i32 @ExFreePoolWithTag(%struct.acpi_button* %49, i8 signext 65)
  %51 = call i32 @return_VALUE(i32 0)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i8*) #1

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @AcpiRemoveFixedEventHandler(i32, i32) #1

declare dso_local i32 @AcpiRemoveNotifyHandler(i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.acpi_button*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
