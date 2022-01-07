; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalRegionOperands.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalRegionOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i64, i64, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_20__, %struct.TYPE_28__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@DsEvalRegionOperands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_NUM_PREDEFINED_REGIONS = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Operation Region [%4.4s] has zero length (SpaceId %X)\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RgnObj %p Addr %8.8X%8.8X Len %X\0A\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsEvalRegionOperands(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %12 = load i32, i32* @DsEvalRegionOperands, align 4
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %struct.TYPE_26__* %13)
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %9, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %10, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  store %struct.TYPE_26__* %32, %struct.TYPE_26__** %10, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %35 = call i32 @AcpiDsCreateOperands(%struct.TYPE_25__* %33, %struct.TYPE_26__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = call i32 @AcpiExResolveOperands(i32 %46, i32 %47, %struct.TYPE_25__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %58 = call %struct.TYPE_27__* @AcpiNsGetAttachedObject(%struct.TYPE_28__* %57)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %7, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %60 = icmp ne %struct.TYPE_27__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @AE_NOT_EXIST, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %67, i64 %72
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %8, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %83 = call i32 @AcpiUtRemoveReference(%struct.TYPE_27__* %82)
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %64
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @ACPI_NUM_PREDEFINED_REGIONS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* @AE_INFO, align 4
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ACPI_WARNING(i32 %100)
  br label %102

102:                                              ; preds = %93, %89, %64
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %105, i64 %110
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  store %struct.TYPE_27__* %112, %struct.TYPE_27__** %8, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %121 = call i32 @AcpiUtRemoveReference(%struct.TYPE_27__* %120)
  %122 = load i32, i32* @ACPI_DB_EXEC, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ACPI_FORMAT_UINT64(i64 %127)
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @ACPI_DEBUG_PRINT(i32 %133)
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %148 = call i32 @AcpiUtAddAddressRange(i32 %138, i64 %142, i64 %146, %struct.TYPE_28__* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @return_ACPI_STATUS(i32 %155)
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @AcpiDsCreateOperands(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiExResolveOperands(i32, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @AcpiNsGetAttachedObject(%struct.TYPE_28__*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_27__*) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @AcpiUtAddAddressRange(i32, i64, i64, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
