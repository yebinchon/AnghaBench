; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair.c_AcpiNsSimpleRepair.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair.c_AcpiNsSimpleRepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 (i32, %struct.TYPE_25__*, %struct.TYPE_25__**)* }

@NsSimpleRepair = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@ACPI_WARN_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Missing expected return value\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"During return object analysis\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_RTYPE_NONE = common dso_local global i32 0, align 4
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Found unexpected NULL package element\00", align 1
@AE_AML_NO_RETURN_VALUE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_RTYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_OBJECT_WRAPPED = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"%s: Converted %s to expected %s at Package index %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: Converted %s to expected %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsSimpleRepair(%struct.TYPE_26__* %0, i32 %1, i32 %2, %struct.TYPE_25__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__**, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %9, align 8
  %14 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  %16 = load i32, i32* @NsSimpleRepair, align 4
  %17 = call i32 @ACPI_FUNCTION_NAME(i32 %16)
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_24__* @AcpiNsMatchSimpleRepair(i32 %20, i32 %23, i32 %24)
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %13, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %27 = icmp ne %struct.TYPE_24__* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %30 = icmp ne %struct.TYPE_25__* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @AE_INFO, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %37 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([30 x i8]* @.str to i32))
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32 (i32, %struct.TYPE_25__*, %struct.TYPE_25__**)*, i32 (i32, %struct.TYPE_25__*, %struct.TYPE_25__**)** %40, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %46 = call i32 %41(i32 %44, %struct.TYPE_25__* %45, %struct.TYPE_25__** %11)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @AE_INFO, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([30 x i8]* @.str.1 to i32))
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %226

55:                                               ; preds = %38
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %57 = icmp ne %struct.TYPE_25__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %175

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @AE_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %226

69:                                               ; preds = %60
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %71 = icmp ne %struct.TYPE_25__* %70, null
  br i1 %71, label %112, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ACPI_RTYPE_NONE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32, i32* @AE_INFO, align 4
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %90 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([38 x i8]* @.str.2 to i32))
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  %95 = call i32 @AcpiNsRepairNullElement(%struct.TYPE_26__* %91, i32 %92, i32 %93, %struct.TYPE_25__** %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @ACPI_SUCCESS(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = load i32, i32* @AE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %226

101:                                              ; preds = %84
  br label %109

102:                                              ; preds = %80
  %103 = load i32, i32* @AE_INFO, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %108 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([30 x i8]* @.str to i32))
  br label %109

109:                                              ; preds = %102, %101
  %110 = load i32, i32* @AE_AML_NO_RETURN_VALUE, align 4
  store i32 %110, i32* %5, align 4
  br label %226

111:                                              ; preds = %75, %72
  br label %112

112:                                              ; preds = %111, %69
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %119 = call i32 @AcpiNsConvertToInteger(%struct.TYPE_25__* %118, %struct.TYPE_25__** %11)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i64 @ACPI_SUCCESS(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %175

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %132 = call i32 @AcpiNsConvertToString(%struct.TYPE_25__* %131, %struct.TYPE_25__** %11)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @ACPI_SUCCESS(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %175

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %125
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @ACPI_RTYPE_BUFFER, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %145 = call i32 @AcpiNsConvertToBuffer(%struct.TYPE_25__* %144, %struct.TYPE_25__** %11)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i64 @ACPI_SUCCESS(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %175

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %151
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %159 = call i32 @AcpiNsWrapWithPackage(%struct.TYPE_26__* %157, %struct.TYPE_25__* %158, %struct.TYPE_25__** %11)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i64 @ACPI_SUCCESS(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %165 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %164, %struct.TYPE_25__** %165, align 8
  %166 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @AE_OK, align 4
  store i32 %171, i32* %5, align 4
  br label %226

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172, %151
  %174 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %174, i32* %5, align 4
  br label %226

175:                                              ; preds = %149, %136, %123, %58
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %205

179:                                              ; preds = %175
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ACPI_OBJECT_WRAPPED, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  br label %194

194:                                              ; preds = %186, %179
  %195 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %200 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_25__* %199)
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %202 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_25__* %201)
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @ACPI_DEBUG_PRINT(i32 %203)
  br label %215

205:                                              ; preds = %175
  %206 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %211 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_25__* %210)
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %213 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_25__* %212)
  %214 = call i32 @ACPI_DEBUG_PRINT(i32 %213)
  br label %215

215:                                              ; preds = %205, %194
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %217 = call i32 @AcpiUtRemoveReference(%struct.TYPE_25__* %216)
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %219 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %219, align 8
  %220 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* @AE_OK, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %215, %173, %163, %109, %99, %67, %50
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %struct.TYPE_24__* @AcpiNsMatchSimpleRepair(i32, i32, i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @AcpiNsRepairNullElement(%struct.TYPE_26__*, i32, i32, %struct.TYPE_25__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiNsConvertToInteger(%struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @AcpiNsConvertToString(%struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @AcpiNsConvertToBuffer(%struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @AcpiNsWrapWithPackage(%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_25__**) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_25__*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
