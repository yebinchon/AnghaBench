; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsutils.c_AcpiDsIsResultUsed.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsutils.c_AcpiDsIsResultUsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@DsIsResultUsed = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Null Op\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AML_SCOPE_OP = common dso_local global i64 0, align 8
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"At Method level, result of [%s] not used\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@AML_CLASS_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown parent opcode Op=%p\00", align 1
@ACPI_CONTROL_PREDICATE_EXECUTING = common dso_local global i32 0, align 4
@AML_REGION_OP = common dso_local global i64 0, align 8
@AML_DATA_REGION_OP = common dso_local global i64 0, align 8
@AML_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_BUFFER_OP = common dso_local global i64 0, align 8
@AML_VARIABLE_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_INT_EVAL_SUBTREE_OP = common dso_local global i64 0, align 8
@AML_BANK_FIELD_OP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Result of [%s] used by Parent [%s] Op=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Result of [%s] not used by Parent [%s] Op=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsIsResultUsed(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %7 = load i32, i32* @DsIsResultUsed, align 4
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %struct.TYPE_22__* %8)
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @AE_INFO, align 4
  %14 = call i32 @ACPI_ERROR(i32 ptrtoint ([8 x i8]* @.str to i32))
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @return_UINT8(i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @AcpiDsDoImplicitReturn(i32 %20, %struct.TYPE_21__* %21, i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AML_SCOPE_OP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29, %17
  %40 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @AcpiPsGetOpcodeName(i64 %44)
  %46 = call i32 @ACPI_DEBUG_PRINT(i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @return_UINT8(i32 %47)
  br label %49

49:                                               ; preds = %39, %29
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.TYPE_23__* @AcpiPsGetOpcodeInfo(i64 %56)
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %6, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AML_CLASS_UNKNOWN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = ptrtoint %struct.TYPE_22__* %65 to i32
  %67 = call i32 @ACPI_ERROR(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @return_UINT8(i32 %68)
  br label %70

70:                                               ; preds = %63, %49
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %178 [
    i32 133, label %74
    i32 132, label %105
    i32 131, label %106
  ]

74:                                               ; preds = %70
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  switch i64 %81, label %103 [
    i64 129, label %82
    i64 130, label %83
    i64 128, label %83
  ]

82:                                               ; preds = %74
  br label %179

83:                                               ; preds = %74, %74
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ACPI_CONTROL_PREDICATE_EXECUTING, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = icmp eq %struct.TYPE_22__* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %179

102:                                              ; preds = %92, %83
  br label %104

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103, %102
  br label %199

105:                                              ; preds = %70
  br label %179

106:                                              ; preds = %70
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AML_REGION_OP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %176, label %116

116:                                              ; preds = %106
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AML_DATA_REGION_OP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %176, label %126

126:                                              ; preds = %116
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AML_PACKAGE_OP, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %176, label %136

136:                                              ; preds = %126
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AML_BUFFER_OP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %176, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AML_VARIABLE_PACKAGE_OP, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %176, label %156

156:                                              ; preds = %146
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @AML_INT_EVAL_SUBTREE_OP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %176, label %166

166:                                              ; preds = %156
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @AML_BANK_FIELD_OP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166, %156, %146, %136, %126, %116, %106
  br label %179

177:                                              ; preds = %166
  br label %199

178:                                              ; preds = %70
  br label %179

179:                                              ; preds = %178, %176, %105, %101, %82
  %180 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @AcpiPsGetOpcodeName(i64 %184)
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @AcpiPsGetOpcodeName(i64 %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %195 = ptrtoint %struct.TYPE_22__* %194 to i32
  %196 = call i32 @ACPI_DEBUG_PRINT(i32 %195)
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 @return_UINT8(i32 %197)
  br label %199

199:                                              ; preds = %179, %177, %104
  %200 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @AcpiPsGetOpcodeName(i64 %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @AcpiPsGetOpcodeName(i64 %212)
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = ptrtoint %struct.TYPE_22__* %214 to i32
  %216 = call i32 @ACPI_DEBUG_PRINT(i32 %215)
  %217 = load i32, i32* @FALSE, align 4
  %218 = call i32 @return_UINT8(i32 %217)
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_UINT8(i32) #1

declare dso_local i32 @AcpiDsDoImplicitReturn(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiPsGetOpcodeName(i64) #1

declare dso_local %struct.TYPE_23__* @AcpiPsGetOpcodeInfo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
