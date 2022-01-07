; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_device*, %struct.acpi_device* }

@AE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @AE_NOT_FOUND, align 4
  %10 = call i32 @return_VALUE(i32 %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = call i32 @acpi_device_unregister(%struct.acpi_device* %12)
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.acpi_device*, %struct.acpi_device** %16, align 8
  %18 = icmp ne %struct.acpi_device* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.acpi_device*, %struct.acpi_device** %22, align 8
  %24 = call i32 @ExFreePoolWithTag(%struct.acpi_device* %23, i8 signext 65)
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.acpi_device*, %struct.acpi_device** %28, align 8
  %30 = icmp ne %struct.acpi_device* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.acpi_device*, %struct.acpi_device** %34, align 8
  %36 = call i32 @ExFreePoolWithTag(%struct.acpi_device* %35, i8 signext 65)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %39 = icmp ne %struct.acpi_device* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %42 = call i32 @ExFreePoolWithTag(%struct.acpi_device* %41, i8 signext 65)
  br label %43

43:                                               ; preds = %40, %37
  %44 = call i32 @return_VALUE(i32 0)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @acpi_device_unregister(%struct.acpi_device*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.acpi_device*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
