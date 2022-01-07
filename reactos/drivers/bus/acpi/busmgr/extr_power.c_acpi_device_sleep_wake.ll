; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_device_sleep_wake.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_device_sleep_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.acpi_object = type { i8* }
%struct.acpi_object_list = type { i32, i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@AE_OK = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_DSW\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"_DSW execution failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSW\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"_PSW execution failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_sleep_wake(%struct.acpi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %union.acpi_object], align 16
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  %15 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 0
  %16 = ptrtoint %union.acpi_object* %15 to i32
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 2
  store %union.acpi_object* null, %union.acpi_object** %17, align 8
  %18 = load i64, i64* @AE_OK, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to i8**
  store i8* %19, i8** %21, align 16
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 0
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 16
  %26 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %27 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 1
  %28 = bitcast %union.acpi_object* %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 1
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %34 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 2
  %35 = bitcast %union.acpi_object* %34 to i8**
  store i8* %33, i8** %35, align 16
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 2
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 16
  %40 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @AcpiEvaluateObject(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %11, i32* null)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @ACPI_SUCCESS(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

48:                                               ; preds = %4
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @AE_NOT_FOUND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  store i32 -1, i32* %5, align 4
  br label %83

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %10, i64 0, i64 0
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 16
  %65 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @AcpiEvaluateObject(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_object_list* %11, i32* null)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @ACPI_FAILURE(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %59
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @AE_NOT_FOUND, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  store i32 -1, i32* %5, align 4
  br label %83

82:                                               ; preds = %72, %59
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %76, %52, %47
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @AcpiEvaluateObject(i32, i8*, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
