; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_scan.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__, %struct.acpi_device*, i64 }
%struct.TYPE_2__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_SCOPE = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_PROCESSOR = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_THERMAL = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_scan(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %4, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %5, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 1, i64* %10, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = icmp ne %struct.acpi_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_VALUE(i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  store %struct.acpi_device* %18, %struct.acpi_device** %5, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %107, %87, %78, %64, %59, %52, %17
  %23 = load i64, i64* %10, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %27 = icmp ne %struct.acpi_device* %26, null
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %108

30:                                               ; preds = %28
  %31 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @AcpiGetNextObject(i32 %31, i64 %32, i64 %33, i64* %8)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @AcpiGetParent(i64 %42, i64* %7)
  %44 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 1
  %46 = load %struct.acpi_device*, %struct.acpi_device** %45, align 8
  %47 = icmp ne %struct.acpi_device* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 1
  %51 = load %struct.acpi_device*, %struct.acpi_device** %50, align 8
  store %struct.acpi_device* %51, %struct.acpi_device** %5, align 8
  br label %52

52:                                               ; preds = %48, %38
  br label %22

53:                                               ; preds = %30
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @AcpiGetType(i64 %54, i32* %9)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @ACPI_FAILURE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %22

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ACPI_TYPE_LOCAL_SCOPE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %22

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %78 [
    i32 131, label %70
    i32 129, label %72
    i32 128, label %74
    i32 130, label %76
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* @ACPI_BUS_TYPE_DEVICE, align 4
  store i32 %71, i32* %9, align 4
  br label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @ACPI_BUS_TYPE_PROCESSOR, align 4
  store i32 %73, i32* %9, align 4
  br label %79

74:                                               ; preds = %68
  %75 = load i32, i32* @ACPI_BUS_TYPE_THERMAL, align 4
  store i32 %75, i32* %9, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @ACPI_BUS_TYPE_POWER, align 4
  store i32 %77, i32* %9, align 4
  br label %79

78:                                               ; preds = %68
  br label %22

79:                                               ; preds = %76, %74, %72, %70
  %80 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @acpi_bus_add(%struct.acpi_device** %6, %struct.acpi_device* %80, i64 %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @ACPI_FAILURE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %22

88:                                               ; preds = %79
  %89 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @AcpiGetNextObject(i32 %95, i64 %96, i64 0, i64* null)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @ACPI_SUCCESS(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %8, align 8
  store i64 %104, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %105 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  store %struct.acpi_device* %105, %struct.acpi_device** %5, align 8
  br label %106

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %88
  br label %22

108:                                              ; preds = %28
  %109 = call i32 @return_VALUE(i32 0)
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @AcpiGetNextObject(i32, i64, i64, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiGetParent(i64, i64*) #1

declare dso_local i32 @AcpiGetType(i64, i32*) #1

declare dso_local i32 @acpi_bus_add(%struct.acpi_device**, %struct.acpi_device*, i64, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
