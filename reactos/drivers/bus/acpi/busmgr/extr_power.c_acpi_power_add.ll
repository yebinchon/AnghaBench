; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_add.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_8__, i32, %struct.acpi_power_resource*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_power_resource = type { i32, i32, i32, i32, %struct.acpi_device* }
%struct.TYPE_6__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %union.acpi_object* }

@AE_OK = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@ACPI_POWER_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_POWER_CLASS = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s [%s] (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_add(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_power_resource*, align 8
  %7 = alloca %union.acpi_object, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %5, align 4
  store %struct.acpi_power_resource* null, %struct.acpi_power_resource** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store %union.acpi_object* %7, %union.acpi_object** %11, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %13 = icmp ne %struct.acpi_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @return_VALUE(i32 -1)
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* @NonPagedPool, align 4
  %18 = call %struct.acpi_power_resource* @ExAllocatePoolWithTag(i32 %17, i32 24, i8 signext 65)
  store %struct.acpi_power_resource* %18, %struct.acpi_power_resource** %6, align 8
  %19 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %20 = icmp ne %struct.acpi_power_resource* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @return_VALUE(i32 -4)
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %25 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %25, i32 0, i32 4
  store %struct.acpi_device* %24, %struct.acpi_device** %26, align 8
  %27 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strcpy(i32 %32, i32 %36)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %39 = call i32 @acpi_device_name(%struct.acpi_device* %38)
  %40 = load i32, i32* @ACPI_POWER_DEVICE_NAME, align 4
  %41 = call i32 @strcpy(i32 %39, i32 %40)
  %42 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %43 = call i32 @acpi_device_class(%struct.acpi_device* %42)
  %44 = load i32, i32* @ACPI_POWER_CLASS, align 4
  %45 = call i32 @strcpy(i32 %43, i32 %44)
  %46 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %47 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 2
  store %struct.acpi_power_resource* %46, %struct.acpi_power_resource** %48, align 8
  %49 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AcpiEvaluateObject(i32 %51, i32* null, i32* null, %struct.TYPE_9__* %8)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @ACPI_FAILURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  store i32 -15, i32* %3, align 4
  br label %102

57:                                               ; preds = %23
  %58 = bitcast %union.acpi_object* %7 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = bitcast %union.acpi_object* %7 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @acpi_power_get_state(i32 %70, i32* %4)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  br label %102

75:                                               ; preds = %57
  %76 = load i32, i32* %4, align 4
  switch i32 %76, label %87 [
    i32 128, label %77
    i32 129, label %82
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @ACPI_STATE_D0, align 4
  %79 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %80 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %92

82:                                               ; preds = %75
  %83 = load i32, i32* @ACPI_STATE_D3, align 4
  %84 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %85 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %92

87:                                               ; preds = %75
  %88 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %89 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %82, %77
  %93 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %94 = call i32 @acpi_device_name(%struct.acpi_device* %93)
  %95 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %96 = call i32 @acpi_device_bid(%struct.acpi_device* %95)
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %96, i8* %100)
  br label %102

102:                                              ; preds = %92, %74, %56
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %6, align 8
  %107 = call i32 @ExFreePool(%struct.acpi_power_resource* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local %struct.acpi_power_resource* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_power_get_state(i32, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32, i32, i8*) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i32 @ExFreePool(%struct.acpi_power_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
