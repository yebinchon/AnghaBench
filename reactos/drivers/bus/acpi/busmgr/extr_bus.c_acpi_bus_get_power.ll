; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_power.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PSC\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Device [%s] power state is D%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_get_power(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @acpi_bus_get_device(i32 %10, %struct.acpi_device** %8)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @return_VALUE(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @ACPI_STATE_D0, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %89

42:                                               ; preds = %17
  %43 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @acpi_evaluate_integer(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %9)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @AE_NOT_FOUND, align 4
  %59 = call i32 @return_VALUE(i32 %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  br label %83

66:                                               ; preds = %42
  %67 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %75 = call i32 @acpi_power_get_inferred_state(%struct.acpi_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @return_VALUE(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %60
  %84 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %85 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %41
  %90 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %91 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %97)
  %99 = call i32 @return_VALUE(i32 0)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device*) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
