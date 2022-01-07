; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalTableRegionOperands.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalTableRegionOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_26__** }
%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 }

@DsEvalTableRegionOperands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT\00", align 1
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RgnObj %p Addr %8.8X%8.8X Len %X\0A\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiDsEvalTableRegionOperands(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %13 = load i32, i32* @DsEvalTableRegionOperands, align 4
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %struct.TYPE_25__* %14)
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %10, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %27 = call i64 @AcpiDsCreateOperands(%struct.TYPE_23__* %25, %struct.TYPE_25__* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @ACPI_FAILURE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @return_ACPI_STATUS(i64 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %37, i64 0
  store %struct.TYPE_26__** %38, %struct.TYPE_26__*** %8, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %45 = call i64 @AcpiExResolveOperands(i32 %42, i32 %43, %struct.TYPE_23__* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @ACPI_FAILURE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %143

50:                                               ; preds = %34
  %51 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %51, i64 0
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %57, i64 1
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %63, i64 2
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @AcpiTbFindTable(i32 %56, i32 %62, i32 %68, i32* %12)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @ACPI_FAILURE(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %50
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @AE_NOT_FOUND, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i32, i32* @AE_INFO, align 4
  %79 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %79, i64 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %85, i64 1
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %91, i64 2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ACPI_ERROR(i32 %96)
  br label %98

98:                                               ; preds = %77, %73
  br label %143

99:                                               ; preds = %50
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @AcpiGetTableByIndex(i32 %100, %struct.TYPE_24__** %11)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @ACPI_FAILURE(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %143

106:                                              ; preds = %99
  %107 = load i32*, i32** %9, align 8
  %108 = call %struct.TYPE_26__* @AcpiNsGetAttachedObject(i32* %107)
  store %struct.TYPE_26__* %108, %struct.TYPE_26__** %7, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = icmp ne %struct.TYPE_26__* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* @AE_NOT_EXIST, align 8
  store i64 %112, i64* %6, align 8
  br label %143

113:                                              ; preds = %106
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %115 = call i32 @ACPI_PTR_TO_PHYSADDR(%struct.TYPE_24__* %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @ACPI_DB_EXEC, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ACPI_FORMAT_UINT64(i32 %130)
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ACPI_DEBUG_PRINT(i32 %135)
  %137 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %113, %111, %105, %98, %49
  %144 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %144, i64 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = call i32 @AcpiUtRemoveReference(%struct.TYPE_26__* %146)
  %148 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %148, i64 1
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = call i32 @AcpiUtRemoveReference(%struct.TYPE_26__* %150)
  %152 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %152, i64 2
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = call i32 @AcpiUtRemoveReference(%struct.TYPE_26__* %154)
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @return_ACPI_STATUS(i64 %156)
  %158 = load i64, i64* %3, align 8
  ret i64 %158
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_25__*) #1

declare dso_local i64 @AcpiDsCreateOperands(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @AcpiExResolveOperands(i32, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @AcpiTbFindTable(i32, i32, i32, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @AcpiGetTableByIndex(i32, %struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_26__* @AcpiNsGetAttachedObject(i32*) #1

declare dso_local i32 @ACPI_PTR_TO_PHYSADDR(%struct.TYPE_24__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
