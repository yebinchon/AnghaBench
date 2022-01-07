; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_get_inferred_state.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_get_inferred_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32 }

@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@ACPI_POWER_RESOURCE_STATE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_handle_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @return_VALUE(i32 -1)
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ACPI_STATE_D0, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %55, %12
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ACPI_STATE_D3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.acpi_handle_list* %30, %struct.acpi_handle_list** %5, align 8
  %31 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %55

36:                                               ; preds = %22
  %37 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %5, align 8
  %38 = call i32 @acpi_power_get_list_state(%struct.acpi_handle_list* %37, i32* %6)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @return_VALUE(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ACPI_POWER_RESOURCE_STATE_ON, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = call i32 @return_VALUE(i32 0)
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load i32, i32* @ACPI_STATE_D3, align 4
  %60 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = call i32 @return_VALUE(i32 0)
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @acpi_power_get_list_state(%struct.acpi_handle_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
