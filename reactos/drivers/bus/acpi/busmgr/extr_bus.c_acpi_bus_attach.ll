; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_attach.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_driver = type { i32, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Found driver [%s] for device [%s]\0A\00", align 1
@acpi_bus_drivers_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32, i8*)* @acpi_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_attach(%struct.acpi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_driver*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.acpi_driver* null, %struct.acpi_driver** %9, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %11 = icmp ne %struct.acpi_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %17 = call i32 @return_VALUE(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.acpi_driver*
  store %struct.acpi_driver* %20, %struct.acpi_driver** %9, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @return_VALUE(i32 -9)
  br label %27

27:                                               ; preds = %25, %18
  %28 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @AE_NOT_FOUND, align 4
  %35 = call i32 @return_VALUE(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %38 = load %struct.acpi_driver*, %struct.acpi_driver** %9, align 8
  %39 = call i32 @acpi_bus_match(%struct.acpi_device* %37, %struct.acpi_driver* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @return_VALUE(i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.acpi_driver*, %struct.acpi_driver** %9, align 8
  %47 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %55 = load %struct.acpi_driver*, %struct.acpi_driver** %9, align 8
  %56 = call i32 @acpi_bus_driver_init(%struct.acpi_device* %54, %struct.acpi_driver* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @return_VALUE(i32 %60)
  br label %62

62:                                               ; preds = %59, %45
  %63 = call i32 @down(i32* @acpi_bus_drivers_lock)
  %64 = load %struct.acpi_driver*, %struct.acpi_driver** %9, align 8
  %65 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = call i32 @up(i32* @acpi_bus_drivers_lock)
  %69 = call i32 @return_VALUE(i32 0)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @acpi_bus_match(%struct.acpi_device*, %struct.acpi_driver*) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

declare dso_local i32 @acpi_bus_driver_init(%struct.acpi_device*, %struct.acpi_driver*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
