; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_acpienum.c_ACPIEnumerateDevices.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_acpienum.c_ACPIEnumerateDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_7__, %struct.acpi_device*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@acpi_root = common dso_local global %struct.acpi_device* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"acpi device count: %d\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACPIEnumerateDevices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** @acpi_root, align 8
  store %struct.acpi_device* %5, %struct.acpi_device** %4, align 8
  br label %6

6:                                                ; preds = %70, %47, %37, %1
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %71

9:                                                ; preds = %6
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @Bus_PlugInDevice(%struct.acpi_device* %28, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %27, %21, %15, %9
  %34 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %35 = call i64 @HAS_CHILDREN(%struct.acpi_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.acpi_device* @NODE_TO_DEVICE(i32 %41)
  store %struct.acpi_device* %42, %struct.acpi_device** %4, align 8
  br label %6

43:                                               ; preds = %33
  %44 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %45 = call i64 @HAS_SIBLINGS(%struct.acpi_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.acpi_device* @NODE_TO_DEVICE(i32 %51)
  store %struct.acpi_device* %52, %struct.acpi_device** %4, align 8
  br label %6

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %69, %53
  %55 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 1
  %57 = load %struct.acpi_device*, %struct.acpi_device** %56, align 8
  store %struct.acpi_device* %57, %struct.acpi_device** %4, align 8
  %58 = icmp ne %struct.acpi_device* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %61 = call i64 @HAS_SIBLINGS(%struct.acpi_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %65 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.acpi_device* @NODE_TO_DEVICE(i32 %67)
  store %struct.acpi_device* %68, %struct.acpi_device** %4, align 8
  br label %70

69:                                               ; preds = %59
  br label %54

70:                                               ; preds = %63, %54
  br label %6

71:                                               ; preds = %6
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i32 @Bus_PlugInDevice(%struct.acpi_device*, i32) #1

declare dso_local i64 @HAS_CHILDREN(%struct.acpi_device*) #1

declare dso_local %struct.acpi_device* @NODE_TO_DEVICE(i32) #1

declare dso_local i64 @HAS_SIBLINGS(%struct.acpi_device*) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
