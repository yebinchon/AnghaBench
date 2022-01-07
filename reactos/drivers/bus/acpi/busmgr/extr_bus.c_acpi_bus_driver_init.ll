; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_driver_init.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_driver* }
%struct.acpi_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.1*)*, i32 (%struct.acpi_device.2*)*, i32 (%struct.acpi_device.3*, i32)* }
%struct.acpi_device.0 = type opaque
%struct.acpi_device.1 = type opaque
%struct.acpi_device.2 = type opaque
%struct.acpi_device.3 = type opaque

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_BUS_REMOVAL_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Driver successfully bound to device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %struct.acpi_driver*)* @acpi_bus_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_driver_init(%struct.acpi_device* %0, %struct.acpi_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.acpi_driver* %1, %struct.acpi_driver** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %11 = icmp ne %struct.acpi_driver* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %14 = call i32 @return_VALUE(i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.acpi_device.0*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @return_VALUE(i32 -38)
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %26, align 8
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = bitcast %struct.acpi_device* %28 to %struct.acpi_device.0*
  %30 = call i32 %27(%struct.acpi_device.0* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 0
  store %struct.acpi_driver* null, %struct.acpi_driver** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @return_VALUE(i32 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %40 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 0
  store %struct.acpi_driver* %39, %struct.acpi_driver** %41, align 8
  %42 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.acpi_device.1*)*, i32 (%struct.acpi_device.1*)** %44, align 8
  %46 = icmp ne i32 (%struct.acpi_device.1*)* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %38
  %48 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.acpi_device.1*)*, i32 (%struct.acpi_device.1*)** %50, align 8
  %52 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %53 = bitcast %struct.acpi_device* %52 to %struct.acpi_device.1*
  %54 = call i32 %51(%struct.acpi_device.1* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32 (%struct.acpi_device.3*, i32)*, i32 (%struct.acpi_device.3*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.acpi_device.3*, i32)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32 (%struct.acpi_device.3*, i32)*, i32 (%struct.acpi_device.3*, i32)** %66, align 8
  %68 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %69 = bitcast %struct.acpi_device* %68 to %struct.acpi_device.3*
  %70 = load i32, i32* @ACPI_BUS_REMOVAL_NORMAL, align 4
  %71 = call i32 %67(%struct.acpi_device.3* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %57, %47
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @return_VALUE(i32 %73)
  br label %75

75:                                               ; preds = %72, %38
  %76 = call i32 @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %78 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32 (%struct.acpi_device.2*)*, i32 (%struct.acpi_device.2*)** %79, align 8
  %81 = icmp ne i32 (%struct.acpi_device.2*)* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %84 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32 (%struct.acpi_device.2*)*, i32 (%struct.acpi_device.2*)** %85, align 8
  %87 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %88 = bitcast %struct.acpi_device* %87 to %struct.acpi_device.2*
  %89 = call i32 %86(%struct.acpi_device.2* %88)
  br label %90

90:                                               ; preds = %82, %75
  %91 = call i32 @return_VALUE(i32 0)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
