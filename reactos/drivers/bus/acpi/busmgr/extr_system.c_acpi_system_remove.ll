; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_system.c_acpi_system_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_system.c_acpi_system_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_system = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"acpi_system_remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_system_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_system_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_system*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.acpi_system* null, %struct.acpi_system** %5, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = call i64 @acpi_driver_data(%struct.acpi_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %2
  %14 = call i32 @return_VALUE(i32 -1)
  br label %15

15:                                               ; preds = %13, %9
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = call i64 @acpi_driver_data(%struct.acpi_device* %16)
  %18 = inttoptr i64 %17 to %struct.acpi_system*
  store %struct.acpi_system* %18, %struct.acpi_system** %5, align 8
  %19 = load %struct.acpi_system*, %struct.acpi_system** %5, align 8
  %20 = call i32 @ExFreePoolWithTag(%struct.acpi_system* %19, i8 signext 65)
  ret i32 0
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i8*) #1

declare dso_local i64 @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.acpi_system*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
