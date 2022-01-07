; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsInitFieldObjects.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsInitFieldObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }

@DsInitFieldObjects = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Parse deferred mode is not set\00", align 1
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i64 0, align 8
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i64 0, align 8
@ACPI_NS_OVERRIDE_IF_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiDsInitFieldObjects(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DsInitFieldObjects, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* @AE_OK, align 8
  %29 = call i32 @return_ACPI_STATUS(i64 %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* @AE_INFO, align 4
  %32 = call i32 @ACPI_ERROR(i32 ptrtoint ([31 x i8]* @.str to i32))
  %33 = load i64, i64* @AE_AML_INTERNAL, align 8
  %34 = call i32 @return_ACPI_STATUS(i64 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %51 [
    i32 129, label %39
    i32 130, label %43
    i32 128, label %47
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call %struct.TYPE_14__* @AcpiPsGetArg(%struct.TYPE_14__* %40, i32 2)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %7, align 8
  %42 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  store i32 %42, i32* %9, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = call %struct.TYPE_14__* @AcpiPsGetArg(%struct.TYPE_14__* %44, i32 4)
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %7, align 8
  %46 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call %struct.TYPE_14__* @AcpiPsGetArg(%struct.TYPE_14__* %48, i32 3)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %7, align 8
  %50 = load i32, i32* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 4
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i64, i64* @AE_BAD_PARAMETER, align 8
  %53 = call i32 @return_ACPI_STATUS(i64 %52)
  br label %54

54:                                               ; preds = %51, %47, %43, %39
  %55 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %56 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ACPI_NS_TEMPORARY, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %64, %54
  br label %76

76:                                               ; preds = %124, %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = icmp ne %struct.TYPE_14__* %77, null
  br i1 %78, label %79, label %129

79:                                               ; preds = %76
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %79
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = call i64 @AcpiNsLookup(i32 %89, i8* %93, i32 %94, i32 %95, i32 %96, %struct.TYPE_13__* %97, i32** %8)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @ACPI_FAILURE(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %86
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = bitcast i32* %108 to i8*
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @ACPI_ERROR_NAMESPACE(i32 %105, i8* %109, i64 %110)
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @return_ACPI_STATUS(i64 %116)
  br label %118

118:                                              ; preds = %115, %102
  br label %119

119:                                              ; preds = %118, %86
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  store i32* %120, i32** %123, align 8
  br label %124

124:                                              ; preds = %119, %79
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %7, align 8
  br label %76

129:                                              ; preds = %76
  %130 = load i64, i64* @AE_OK, align 8
  %131 = call i32 @return_ACPI_STATUS(i64 %130)
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %struct.TYPE_14__* @AcpiPsGetArg(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @AcpiNsLookup(i32, i8*, i32, i32, i32, %struct.TYPE_13__*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
