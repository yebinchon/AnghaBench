; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_disable_wakeup_device_power.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_disable_wakeup_device_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Transition power state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_disable_wakeup_device_power(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %77

17:                                               ; preds = %9
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = call i32 @acpi_device_sleep_wake(%struct.acpi_device* %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %75

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %43, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %61 = call i32 @acpi_power_off_device(i32 %59, %struct.acpi_device* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  store i32 -1, i32* %5, align 4
  br label %75

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %42

74:                                               ; preds = %42
  br label %75

75:                                               ; preds = %74, %64, %40, %24
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @acpi_device_sleep_wake(%struct.acpi_device*, i32, i32, i32) #1

declare dso_local i32 @acpi_power_off_device(i32, %struct.acpi_device*) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
