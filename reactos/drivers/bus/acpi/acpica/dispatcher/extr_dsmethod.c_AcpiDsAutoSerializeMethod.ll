; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmethod.c_AcpiDsAutoSerializeMethod.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmethod.c_AcpiDsAutoSerializeMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_25__ = type { i32 }

@DsAutoSerializeMethod = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Method auto-serialization parse [%4.4s] %p\0A\00", align 1
@AML_METHOD_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AcpiDsDetectNamedOpcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsAutoSerializeMethod(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  %9 = load i32, i32* @DsAutoSerializeMethod, align 4
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %struct.TYPE_28__* %10)
  %12 = load i32, i32* @ACPI_DB_PARSE, align 4
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %14 = call i32 @AcpiUtGetNodeName(%struct.TYPE_28__* %13)
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %16 = ptrtoint %struct.TYPE_28__* %15 to i32
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 %16)
  %18 = load i32, i32* @AML_METHOD_OP, align 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_26__* @AcpiPsAllocOp(i32 %18, i32 %22)
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %7, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %25 = icmp ne %struct.TYPE_26__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @AE_NO_MEMORY, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AcpiPsSetName(%struct.TYPE_26__* %30, i32 %34)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %39, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_25__* @AcpiDsCreateWalkState(i32 %42, i32* null, i32* null, i32* null)
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %8, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %45 = icmp ne %struct.TYPE_25__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %29
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %48 = call i32 @AcpiPsFreeOp(%struct.TYPE_26__* %47)
  %49 = load i32, i32* @AE_NO_MEMORY, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %46, %29
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AcpiDsInitAmlWalk(%struct.TYPE_25__* %52, %struct.TYPE_26__* %53, %struct.TYPE_28__* %54, i32 %58, i32 %62, i32* null, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %51
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %69 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_25__* %68)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %71 = call i32 @AcpiPsFreeOp(%struct.TYPE_26__* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @return_ACPI_STATUS(i32 %72)
  br label %74

74:                                               ; preds = %67, %51
  %75 = load i32, i32* @AcpiDsDetectNamedOpcodes, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = call i32 @AcpiPsParseAml(%struct.TYPE_25__* %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = call i32 @AcpiPsDeleteParseTree(%struct.TYPE_26__* %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @return_ACPI_STATUS(i32 %82)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @AcpiPsAllocOp(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiPsSetName(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_25__* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @AcpiPsFreeOp(%struct.TYPE_26__*) #1

declare dso_local i32 @AcpiDsInitAmlWalk(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiDsDeleteWalkState(%struct.TYPE_25__*) #1

declare dso_local i32 @AcpiPsParseAml(%struct.TYPE_25__*) #1

declare dso_local i32 @AcpiPsDeleteParseTree(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
