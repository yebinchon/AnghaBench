; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsutils.c_AcpiDsEvaluateNamePath.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsutils.c_AcpiDsEvaluateNamePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_27__**, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@DsEvaluateNamePath = common dso_local global i32 0, align 4
@AML_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_VARIABLE_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_REF_OF_OP = common dso_local global i64 0, align 8
@ACPI_PARSEOP_TARGET = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_PARSEOP_IN_STACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsEvaluateNamePath(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__**, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %15, i64 0
  store %struct.TYPE_27__** %16, %struct.TYPE_27__*** %6, align 8
  %17 = load i32, i32* @DsEvaluateNamePath, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %17, %struct.TYPE_25__* %18)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = icmp ne %struct.TYPE_22__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %140

26:                                               ; preds = %1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AML_PACKAGE_OP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AML_VARIABLE_PACKAGE_OP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AML_REF_OF_OP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36, %26
  br label %140

57:                                               ; preds = %46
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = call i32 @AcpiDsCreateOperand(%struct.TYPE_25__* %58, %struct.TYPE_26__* %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @ACPI_FAILURE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %140

65:                                               ; preds = %57
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %74, align 8
  store %struct.TYPE_27__* %75, %struct.TYPE_27__** %7, align 8
  br label %120

76:                                               ; preds = %65
  %77 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  %82 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = call i32 @AcpiExResolveToValue(%struct.TYPE_27__** %82, %struct.TYPE_25__* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %140

89:                                               ; preds = %76
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = call i32 @AcpiUtRemoveReference(%struct.TYPE_27__* %95)
  %97 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %100 = call i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_27__* %98, %struct.TYPE_27__** %7, %struct.TYPE_25__* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @ACPI_FAILURE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %140

105:                                              ; preds = %93
  br label %109

106:                                              ; preds = %89
  %107 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %6, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  store %struct.TYPE_27__* %108, %struct.TYPE_27__** %7, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = call i32 @AcpiDsObjStackPop(i32 1, %struct.TYPE_25__* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i64 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  store %struct.TYPE_27__* %116, %struct.TYPE_27__** %118, align 8
  br label %140

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %73
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  store %struct.TYPE_27__* %121, %struct.TYPE_27__** %123, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %125, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = call i32 @AcpiDsResultPush(%struct.TYPE_27__* %126, %struct.TYPE_25__* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @ACPI_SUCCESS(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %120
  %133 = load i32, i32* @ACPI_PARSEOP_IN_STACK, align 4
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %120
  br label %140

140:                                              ; preds = %139, %115, %104, %88, %64, %56, %25
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @return_ACPI_STATUS(i32 %141)
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiDsCreateOperand(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExResolveToValue(%struct.TYPE_27__**, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_27__*) #1

declare dso_local i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_27__*, %struct.TYPE_27__**, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiDsObjStackPop(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiDsResultPush(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
