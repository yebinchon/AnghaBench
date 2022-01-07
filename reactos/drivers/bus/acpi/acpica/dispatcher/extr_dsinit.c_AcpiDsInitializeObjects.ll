; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsinit.c_AcpiDsInitializeObjects.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsinit.c_AcpiDsInitializeObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DsInitializeObjects = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"**** Starting initialization of namespace objects ****\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_NO_UNLOCK = common dso_local global i32 0, align 4
@AcpiDsInitOneObject = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AACPI table initialization:\0A\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"Table [%4.4s: %-8.8s] (id %.2X) - %4u Objects with %3u Devices, %3u Regions, %4u Methods (%u/%u/%u Serial/Non/Cvt)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%u Methods, %u Regions\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsInitializeObjects(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @DsInitializeObjects, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AcpiTbGetOwnerId(i32 %12, i32* %9)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([56 x i8]* @.str to i32))
  %23 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 36)
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %31 = load i32, i32* @ACPI_NS_WALK_NO_UNLOCK, align 4
  %32 = load i32, i32* @AcpiDsInitOneObject, align 4
  %33 = call i32 @AcpiNsWalkNamespace(i32 %28, i32* %29, i32 %30, i32 %31, i32 %32, i32* null, %struct.TYPE_7__* %7, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load i32, i32* @AE_INFO, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([21 x i8]* @.str.1 to i32))
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @AcpiGetTableByIndex(i32 %42, %struct.TYPE_6__** %8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %55 = call i64 @ACPI_COMPARE_NAMESEG(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ACPI_DB_INIT, align 4
  %59 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([29 x i8]* @.str.2 to i32))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* @ACPI_DB_INIT, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %82)
  %84 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ACPI_DEBUG_PRINT(i32 %88)
  %90 = load i32, i32* @AE_OK, align 4
  %91 = call i32 @return_ACPI_STATUS(i32 %90)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiTbGetOwnerId(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @AcpiNsWalkNamespace(i32, i32*, i32, i32, i32, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @AcpiGetTableByIndex(i32, %struct.TYPE_6__**) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
