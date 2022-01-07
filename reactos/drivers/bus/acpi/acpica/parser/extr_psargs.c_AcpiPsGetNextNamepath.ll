; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextNamepath.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psargs.c_AcpiPsGetNextNamepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_36__*, %struct.TYPE_32__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_29__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__, %struct.TYPE_38__*, %struct.TYPE_31__* }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }

@PsGetNextNamepath = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@ARGP_SUPERNAME = common dso_local global i64 0, align 8
@ARGP_TARGET = common dso_local global i64 0, align 8
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Control Method invocation %4.4s - %p Desc %p Path=%p\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Control Method %p has no attached object\00", align 1
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Control Method - %p Args %X\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_PARSE_MODE_MASK = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@AML_CONDITIONAL_REF_OF_OP = common dso_local global i64 0, align 8
@AML_PACKAGE_OP = common dso_local global i64 0, align 8
@AML_VARIABLE_PACKAGE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiPsGetNextNamepath(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, %struct.TYPE_29__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = load i32, i32* @PsGetNextNamepath, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %22 = call i8* @AcpiPsGetNextNamestring(%struct.TYPE_28__* %21)
  store i8* %22, i8** %11, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %24 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %25 = call i32 @AcpiPsInitOp(%struct.TYPE_29__* %23, i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load i64, i64* @AE_OK, align 8
  %35 = call i32 @return_ACPI_STATUS(i64 %34)
  br label %36

36:                                               ; preds = %28, %4
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %42 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %43 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %44 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @AcpiNsLookup(i32 %39, i8* %40, i32 %41, i32 %42, i32 %45, i32* null, %struct.TYPE_31__** %14)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @ACPI_SUCCESS(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %36
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %145

53:                                               ; preds = %50
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %145

59:                                               ; preds = %53
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @GET_CURRENT_ARG_TYPE(i32 %62)
  %64 = load i64, i64* @ARGP_SUPERNAME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @GET_CURRENT_ARG_TYPE(i32 %69)
  %71 = load i64, i64* @ARGP_TARGET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %66, %59
  %74 = load i32*, i32** %15, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %81 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %82 = call i32 @AcpiPsInitOp(%struct.TYPE_29__* %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %66
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %85 = call %struct.TYPE_30__* @AcpiNsGetAttachedObject(%struct.TYPE_31__* %84)
  store %struct.TYPE_30__* %85, %struct.TYPE_30__** %13, align 8
  %86 = load i32, i32* @ACPI_DB_PARSE, align 4
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = call i32 @ACPI_DEBUG_PRINT(i32 %94)
  %96 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call %struct.TYPE_29__* @AcpiPsAllocOp(i32 %96, i32* %97)
  store %struct.TYPE_29__* %98, %struct.TYPE_29__** %12, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %100 = icmp ne %struct.TYPE_29__* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %83
  %102 = load i64, i64* @AE_NO_MEMORY, align 8
  %103 = call i32 @return_ACPI_STATUS(i64 %102)
  br label %104

104:                                              ; preds = %101, %83
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %106 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %107 = call i32 @AcpiPsInitOp(%struct.TYPE_29__* %105, i32 %106)
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 2
  store %struct.TYPE_31__* %113, %struct.TYPE_31__** %116, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %119 = call i32 @AcpiPsAppendArg(%struct.TYPE_29__* %117, %struct.TYPE_29__* %118)
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %121 = icmp ne %struct.TYPE_30__* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %104
  %123 = load i32, i32* @AE_INFO, align 4
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %125 = ptrtoint %struct.TYPE_31__* %124 to i32
  %126 = call i32 @ACPI_ERROR(i32 %125)
  %127 = load i64, i64* @AE_AML_INTERNAL, align 8
  %128 = call i32 @return_ACPI_STATUS(i64 %127)
  br label %129

129:                                              ; preds = %122, %104
  %130 = load i32, i32* @ACPI_DB_PARSE, align 4
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ACPI_DEBUG_PRINT(i32 %135)
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* @AE_OK, align 8
  %144 = call i32 @return_ACPI_STATUS(i64 %143)
  br label %145

145:                                              ; preds = %129, %53, %50, %36
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @AE_NOT_FOUND, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %201

149:                                              ; preds = %145
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ACPI_PARSE_MODE_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i64, i64* @AE_OK, align 8
  store i64 %158, i64* %10, align 8
  br label %200

159:                                              ; preds = %149
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AML_CONDITIONAL_REF_OF_OP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i64, i64* @AE_OK, align 8
  store i64 %169, i64* %10, align 8
  br label %199

170:                                              ; preds = %159
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_38__*, %struct.TYPE_38__** %173, align 8
  %175 = icmp ne %struct.TYPE_38__* %174, null
  br i1 %175, label %176, label %198

176:                                              ; preds = %170
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AML_PACKAGE_OP, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %196, label %186

186:                                              ; preds = %176
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AML_VARIABLE_PACKAGE_OP, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %186, %176
  %197 = load i64, i64* @AE_OK, align 8
  store i64 %197, i64* %10, align 8
  br label %198

198:                                              ; preds = %196, %186, %170
  br label %199

199:                                              ; preds = %198, %168
  br label %200

200:                                              ; preds = %199, %157
  br label %201

201:                                              ; preds = %200, %145
  %202 = load i64, i64* %10, align 8
  %203 = call i64 @ACPI_FAILURE(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @ACPI_ERROR_NAMESPACE(i32 %208, i8* %209, i64 %210)
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ACPI_PARSE_MODE_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %205
  %220 = load i64, i64* %10, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %222 = call i64 @AcpiDsMethodError(i64 %220, %struct.TYPE_27__* %221)
  store i64 %222, i64* %10, align 8
  br label %223

223:                                              ; preds = %219, %205
  br label %224

224:                                              ; preds = %223, %201
  %225 = load i8*, i8** %11, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 0
  store i8* %225, i8** %229, align 8
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @return_ACPI_STATUS(i64 %230)
  %232 = load i64, i64* %5, align 8
  ret i64 %232
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i8* @AcpiPsGetNextNamestring(%struct.TYPE_28__*) #1

declare dso_local i32 @AcpiPsInitOp(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @AcpiNsLookup(i32, i8*, i32, i32, i32, i32*, %struct.TYPE_31__**) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local %struct.TYPE_30__* @AcpiNsGetAttachedObject(%struct.TYPE_31__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.TYPE_29__* @AcpiPsAllocOp(i32, i32*) #1

declare dso_local i32 @AcpiPsAppendArg(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i8*, i64) #1

declare dso_local i64 @AcpiDsMethodError(i64, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
