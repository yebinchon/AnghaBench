; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exfldio.c_AcpiExSetupRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exfldio.c_AcpiExSetupRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ExSetupRegion = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1
@AE_AML_INVALID_SPACE_ID = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_GSBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@AcpiGbl_EnableInterpreterSlack = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"Field [%4.4s] access width (%u bytes) too large for region [%4.4s] (length %u)\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Field [%4.4s] Base+Offset+Width %u+%u+%u is beyond end of region [%4.4s] (length %u)\00", align 1
@AE_AML_REGION_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64)* @AcpiExSetupRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiExSetupRegion(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ExSetupRegion, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %10, i64 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_11__* %29)
  %31 = call i32 @ACPI_ERROR(i32 %30)
  %32 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @AcpiIsValidSpaceId(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ACPI_ERROR(i32 %45)
  %47 = load i32, i32* @AE_AML_INVALID_SPACE_ID, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = call i32 @AcpiDsGetRegionArguments(%struct.TYPE_11__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ACPI_ADR_SPACE_GSBUS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71, %67
  %80 = load i32, i32* @AE_OK, align 4
  %81 = call i32 @return_ACPI_STATUS(i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %92, %96
  %98 = icmp slt i64 %86, %97
  br i1 %98, label %99, label %189

99:                                               ; preds = %82
  %100 = load i64, i64* @AcpiGbl_EnableInterpreterSlack, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @ACPI_ROUND_UP(i64 %106, i64 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %115, %119
  %121 = load i64, i64* %5, align 8
  %122 = add nsw i64 %120, %121
  %123 = icmp sge i64 %111, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %102
  %125 = load i32, i32* @AE_OK, align 4
  %126 = call i32 @return_ACPI_STATUS(i32 %125)
  br label %127

127:                                              ; preds = %124, %102
  br label %128

128:                                              ; preds = %127, %99
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %132, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %128
  %139 = load i32, i32* @AE_INFO, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @AcpiUtGetNodeName(i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @AcpiUtGetNodeName(i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @ACPI_ERROR(i32 %158)
  br label %160

160:                                              ; preds = %138, %128
  %161 = load i32, i32* @AE_INFO, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @AcpiUtGetNodeName(i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %5, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @AcpiUtGetNodeName(i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @ACPI_ERROR(i32 %185)
  %187 = load i32, i32* @AE_AML_REGION_LIMIT, align 4
  %188 = call i32 @return_ACPI_STATUS(i32 %187)
  br label %189

189:                                              ; preds = %160, %82
  %190 = load i32, i32* @AE_OK, align 4
  %191 = call i32 @return_ACPI_STATUS(i32 %190)
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_11__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiIsValidSpaceId(i64) #1

declare dso_local i32 @AcpiDsGetRegionArguments(%struct.TYPE_11__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @ACPI_ROUND_UP(i64, i64) #1

declare dso_local i32 @AcpiUtGetNodeName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
