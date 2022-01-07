; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswscope.c_AcpiDsScopeStackPush.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswscope.c_AcpiDsScopeStackPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32* }

@DsScopeStackPush = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Null scope parameter\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_WSCOPE = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"[%.2d] Pushed scope \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[%4.4s] (%s)\00", align 1
@ACPI_NAMESPACE_ROOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c", New scope -> [%4.4s] (%s)\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsScopeStackPush(i32* %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %10 = load i32, i32* @DsScopeStackPush, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_INFO, align 4
  %16 = call i32 @ACPI_ERROR(i32 ptrtoint ([21 x i8]* @.str to i32))
  %17 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @AcpiUtValidObjectType(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ACPI_WARNING(i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = call %struct.TYPE_12__* (...) @AcpiUtCreateGenericState()
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_NO_MEMORY, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* @ACPI_DESC_TYPE_STATE_WSCOPE, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* @ACPI_DB_EXEC, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @ACPI_DEBUG_PRINT(i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %9, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %35
  %64 = load i32, i32* @ACPI_DB_EXEC, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @AcpiUtGetNodeName(i32* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @AcpiUtGetTypeName(i64 %73)
  %75 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %74)
  br label %80

76:                                               ; preds = %35
  %77 = load i32, i32* @ACPI_DB_EXEC, align 4
  %78 = load i32, i32* @ACPI_NAMESPACE_ROOT, align 4
  %79 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %78)
  br label %80

80:                                               ; preds = %76, %63
  %81 = load i32, i32* @ACPI_DB_EXEC, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @AcpiUtGetNodeName(i32* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @AcpiUtGetTypeName(i64 %90)
  %92 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = call i32 @AcpiUtPushGenericState(%struct.TYPE_12__** %94, %struct.TYPE_12__* %95)
  %97 = load i32, i32* @AE_OK, align 4
  %98 = call i32 @return_ACPI_STATUS(i32 %97)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiUtValidObjectType(i64) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local %struct.TYPE_12__* @AcpiUtCreateGenericState(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(i32*) #1

declare dso_local i32 @AcpiUtGetTypeName(i64) #1

declare dso_local i32 @AcpiUtPushGenericState(%struct.TYPE_12__**, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
