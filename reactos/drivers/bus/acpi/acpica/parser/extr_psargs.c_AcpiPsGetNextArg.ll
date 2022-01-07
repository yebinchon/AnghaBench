; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextArg.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_22__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@PsGetNextArg = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Expected argument type ARGP: %s (%2.2X)\0A\00", align 1
@AML_BYTE_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_INT_BYTELIST_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"**** SimpleName/NameOrRef: %s (%2.2X)\0A\00", align 1
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@ACPI_NOT_METHOD_CALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"**** Target/Supername: %s (%2.2X)\0A\00", align 1
@ACPI_POSSIBLE_METHOD_CALL = common dso_local global i32 0, align 4
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"**** TermArg/DataObj: %s (%2.2X)\0A\00", align 1
@ACPI_VAR_ARGS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid ArgType: 0x%X\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiPsGetNextArg(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2, %struct.TYPE_27__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__**, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_27__** %3, %struct.TYPE_27__*** %9, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @PsGetNextArg, align 4
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %18 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %16, %struct.TYPE_26__* %17)
  %19 = load i32, i32* @ACPI_DB_PARSE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @AcpiUtGetArgumentTypeName(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 %22)
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %258 [
    i32 145, label %25
    i32 128, label %25
    i32 140, label %25
    i32 143, label %25
    i32 138, label %25
    i32 137, label %25
    i32 134, label %41
    i32 139, label %46
    i32 144, label %90
    i32 133, label %133
    i32 136, label %133
    i32 131, label %176
    i32 132, label %176
    i32 142, label %237
    i32 130, label %237
    i32 141, label %245
    i32 129, label %245
    i32 135, label %245
  ]

25:                                               ; preds = %4, %4, %4, %4, %4, %4
  %26 = load i32, i32* @AML_BYTE_OP, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_27__* @AcpiPsAllocOp(i32 %26, i32 %29)
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %10, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %32 = icmp ne %struct.TYPE_27__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @AE_NO_MEMORY, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %40 = call i32 @AcpiPsGetNextSimpleArg(%struct.TYPE_26__* %37, i32 %38, %struct.TYPE_27__* %39)
  br label %263

41:                                               ; preds = %4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = call i32 @AcpiPsGetNextPackageEnd(%struct.TYPE_26__* %42)
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %263

46:                                               ; preds = %4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %81, %54
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %65 = call %struct.TYPE_27__* @AcpiPsGetNextField(%struct.TYPE_26__* %64)
  store %struct.TYPE_27__* %65, %struct.TYPE_27__** %12, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %67 = icmp ne %struct.TYPE_27__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @AE_NO_MEMORY, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %73 = icmp ne %struct.TYPE_27__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  store %struct.TYPE_27__* %75, %struct.TYPE_27__** %78, align 8
  br label %81

79:                                               ; preds = %71
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %80, %struct.TYPE_27__** %10, align 8
  br label %81

81:                                               ; preds = %79, %74
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %11, align 8
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %46
  br label %263

90:                                               ; preds = %4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %90
  %99 = load i32, i32* @AML_INT_BYTELIST_OP, align 4
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_27__* @AcpiPsAllocOp(i32 %99, i32 %102)
  store %struct.TYPE_27__* %103, %struct.TYPE_27__** %10, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %105 = icmp ne %struct.TYPE_27__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @AE_NO_MEMORY, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  br label %109

109:                                              ; preds = %106, %98
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ACPI_PTR_DIFF(i32 %112, i32 %115)
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %109, %90
  br label %263

133:                                              ; preds = %4, %4
  %134 = load i32, i32* @ACPI_DB_PARSE, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @AcpiUtGetArgumentTypeName(i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @ACPI_DEBUG_PRINT(i32 %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %140 = call i32 @AcpiPsPeekOpcode(%struct.TYPE_26__* %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @AcpiPsIsLeadingChar(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @ACPI_IS_ROOT_PREFIX(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @ACPI_IS_PARENT_PREFIX(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %151, %147, %143, %133
  %156 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call %struct.TYPE_27__* @AcpiPsAllocOp(i32 %156, i32 %159)
  store %struct.TYPE_27__* %160, %struct.TYPE_27__** %10, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %162 = icmp ne %struct.TYPE_27__* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* @AE_NO_MEMORY, align 4
  %165 = call i32 @return_ACPI_STATUS(i32 %164)
  br label %166

166:                                              ; preds = %163, %155
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %170 = load i32, i32* @ACPI_NOT_METHOD_CALL, align 4
  %171 = call i32 @AcpiPsGetNextNamepath(%struct.TYPE_25__* %167, %struct.TYPE_26__* %168, %struct.TYPE_27__* %169, i32 %170)
  store i32 %171, i32* %14, align 4
  br label %175

172:                                              ; preds = %151
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %166
  br label %263

176:                                              ; preds = %4, %4
  %177 = load i32, i32* @ACPI_DB_PARSE, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @AcpiUtGetArgumentTypeName(i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @ACPI_DEBUG_PRINT(i32 %180)
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %183 = call i32 @AcpiPsPeekOpcode(%struct.TYPE_26__* %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @AcpiPsIsLeadingChar(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @ACPI_IS_ROOT_PREFIX(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @ACPI_IS_PARENT_PREFIX(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %233

198:                                              ; preds = %194, %190, %186, %176
  %199 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call %struct.TYPE_27__* @AcpiPsAllocOp(i32 %199, i32 %202)
  store %struct.TYPE_27__* %203, %struct.TYPE_27__** %10, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %205 = icmp ne %struct.TYPE_27__* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %198
  %207 = load i32, i32* @AE_NO_MEMORY, align 4
  %208 = call i32 @return_ACPI_STATUS(i32 %207)
  br label %209

209:                                              ; preds = %206, %198
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %213 = load i32, i32* @ACPI_POSSIBLE_METHOD_CALL, align 4
  %214 = call i32 @AcpiPsGetNextNamepath(%struct.TYPE_25__* %210, %struct.TYPE_26__* %211, %struct.TYPE_27__* %212, i32 %213)
  store i32 %214, i32* %14, align 4
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %209
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %225, align 8
  %227 = call i32 @AcpiPsFreeOp(%struct.TYPE_27__* %226)
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %229 = call i32 @AcpiPsFreeOp(%struct.TYPE_27__* %228)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %221, %209
  br label %236

233:                                              ; preds = %194
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  store i32 1, i32* %235, align 4
  br label %236

236:                                              ; preds = %233, %232
  br label %263

237:                                              ; preds = %4, %4
  %238 = load i32, i32* @ACPI_DB_PARSE, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @AcpiUtGetArgumentTypeName(i32 %239)
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @ACPI_DEBUG_PRINT(i32 %241)
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  store i32 1, i32* %244, align 4
  br label %263

245:                                              ; preds = %4, %4, %4
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load i32, i32* @ACPI_VAR_ARGS, align 4
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %253, %245
  br label %263

258:                                              ; preds = %4
  %259 = load i32, i32* @AE_INFO, align 4
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @ACPI_ERROR(i32 %260)
  %262 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %262, i32* %14, align 4
  br label %263

263:                                              ; preds = %258, %257, %237, %236, %175, %132, %89, %41, %36
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %265 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  store %struct.TYPE_27__* %264, %struct.TYPE_27__** %265, align 8
  %266 = load i32, i32* %14, align 4
  %267 = call i32 @return_ACPI_STATUS(i32 %266)
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetArgumentTypeName(i32) #1

declare dso_local %struct.TYPE_27__* @AcpiPsAllocOp(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiPsGetNextSimpleArg(%struct.TYPE_26__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @AcpiPsGetNextPackageEnd(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @AcpiPsGetNextField(%struct.TYPE_26__*) #1

declare dso_local i32 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @AcpiPsPeekOpcode(%struct.TYPE_26__*) #1

declare dso_local i32 @AcpiPsIsLeadingChar(i32) #1

declare dso_local i32 @ACPI_IS_ROOT_PREFIX(i32) #1

declare dso_local i32 @ACPI_IS_PARENT_PREFIX(i32) #1

declare dso_local i32 @AcpiPsGetNextNamepath(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @AcpiPsFreeOp(%struct.TYPE_27__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
