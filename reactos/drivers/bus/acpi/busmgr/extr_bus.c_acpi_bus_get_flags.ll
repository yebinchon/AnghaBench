; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_CID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_RMV\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_EJD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_LCK\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_PS0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"_PR0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bus_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_get_flags(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @AcpiGetHandle(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ACPI_SUCCESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AcpiGetHandle(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @ACPI_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AcpiGetHandle(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32** %5)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @ACPI_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AcpiGetHandle(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32** %5)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @ACPI_SUCCESS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %67

54:                                               ; preds = %42
  %55 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AcpiGetHandle(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32** %5)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @ACPI_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @AcpiGetHandle(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32** %5)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @ACPI_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %67
  %80 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AcpiGetHandle(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32** %5)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @ACPI_FAILURE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %89 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @AcpiGetHandle(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32** %5)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %79
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @ACPI_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %98 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = call i32 @return_VALUE(i32 0)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @AcpiGetHandle(i32, i8*, i32**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
