; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsCreateBankField.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsCreateBankField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32*, i32, i64, i32* }

@DsCreateBankField = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsCreateBankField(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %11 = load i32, i32* @DsCreateBankField, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.TYPE_18__* %12)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %31 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %32 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = call i32 @AcpiNsLookup(i32 %24, i32 %29, i32 %30, i32 %31, i32 %32, %struct.TYPE_17__* %33, i32** %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ACPI_ERROR_NAMESPACE(i32 %41, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %9, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %66 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %67 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %70 = call i32 @AcpiNsLookup(i32 %59, i32 %64, i32 %65, i32 %66, i32 %67, %struct.TYPE_17__* %68, i32** %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @ACPI_FAILURE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %52
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ACPI_ERROR_NAMESPACE(i32 %77, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @return_ACPI_STATUS(i32 %85)
  br label %87

87:                                               ; preds = %74, %52
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %9, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %9, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32* %104, i32** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = bitcast %struct.TYPE_18__* %106 to i32*
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = call i32 @AcpiDsGetFieldNames(%struct.TYPE_19__* %10, %struct.TYPE_17__* %109, %struct.TYPE_18__* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @AcpiNsLookup(i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsGetFieldNames(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
