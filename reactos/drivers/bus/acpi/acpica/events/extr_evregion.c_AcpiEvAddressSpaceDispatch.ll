; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvAddressSpaceDispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvAddressSpaceDispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)*, i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)*, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_18__*, i64, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32 }

@EvAddressSpaceDispatch = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No handler for Region [%4.4s] (%p) [%s]\00", align 1
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No init routine for region(%p) [%s]\00", align 1
@ACPI_REGION_ACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"During region initialization: [%s]\00", align 1
@ACPI_ADR_SPACE_GSBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_GPIO = common dso_local global i64 0, align 8
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Handler %p (@%p) Address %8.8X%8.8X [%s]\0A\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Returned by Handler for [%s]\00", align 1
@ACPI_ADR_SPACE_EC = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"Timeout from EC hardware or EC device driver\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiEvAddressSpaceDispatch(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)*, align 8
  %16 = alloca i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %19, align 8
  %22 = load i32, i32* @EvAddressSpaceDispatch, align 4
  %23 = call i32 @ACPI_FUNCTION_TRACE(i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = call %struct.TYPE_18__* @AcpiNsGetSecondaryObject(%struct.TYPE_18__* %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %18, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %27 = icmp ne %struct.TYPE_18__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* @AE_NOT_EXIST, align 8
  %30 = call i32 @return_ACPI_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %28, %6
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %17, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %37 = icmp ne %struct.TYPE_18__* %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @AE_INFO, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @AcpiUtGetNodeName(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @AcpiUtGetRegionName(i64 %49)
  %51 = call i32 @ACPI_ERROR(i32 %50)
  %52 = load i64, i64* @AE_NOT_EXIST, align 8
  %53 = call i32 @return_ACPI_STATUS(i64 %52)
  br label %54

54:                                               ; preds = %38, %31
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %20, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %133, label %66

66:                                               ; preds = %54
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)*, i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)** %69, align 8
  store i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)* %70, i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)** %16, align 8
  %71 = load i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)*, i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)** %16, align 8
  %72 = icmp ne i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)* %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @AE_INFO, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @AcpiUtGetRegionName(i64 %79)
  %81 = call i32 @ACPI_ERROR(i32 %80)
  %82 = load i64, i64* @AE_NOT_EXIST, align 8
  %83 = call i32 @return_ACPI_STATUS(i64 %82)
  br label %84

84:                                               ; preds = %73, %66
  %85 = call i32 (...) @AcpiExExitInterpreter()
  %86 = load i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)*, i64 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i8**)** %16, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = load i32, i32* @ACPI_REGION_ACTIVATE, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %90 = call i64 %86(%struct.TYPE_18__* %87, i32 %88, %struct.TYPE_19__* %89, i8** %19)
  store i64 %90, i64* %14, align 8
  %91 = call i32 (...) @AcpiExEnterInterpreter()
  %92 = load i64, i64* %14, align 8
  %93 = call i64 @ACPI_FAILURE(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %84
  %96 = load i32, i32* @AE_INFO, align 4
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @AcpiUtGetRegionName(i64 %101)
  %103 = call i32 @ACPI_EXCEPTION(i32 %102)
  %104 = load i64, i64* %14, align 8
  %105 = call i32 @return_ACPI_STATUS(i64 %104)
  br label %106

106:                                              ; preds = %95, %84
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %114
  %127 = load i8*, i8** %19, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %126, %114
  br label %132

132:                                              ; preds = %131, %106
  br label %133

133:                                              ; preds = %132, %54
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)*, i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)** %136, align 8
  store i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)* %137, i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)** %15, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = add nsw i64 %141, %142
  store i64 %143, i64* %21, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ACPI_ADR_SPACE_GSBUS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %133
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %152 = icmp ne %struct.TYPE_19__* %151, null
  br i1 %152, label %153, label %175

153:                                              ; preds = %150
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = icmp ne %struct.TYPE_18__* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %156, %153, %150, %133
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ACPI_ADR_SPACE_GPIO, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %215

182:                                              ; preds = %175
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %184 = icmp ne %struct.TYPE_19__* %183, null
  br i1 %184, label %185, label %215

185:                                              ; preds = %182
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %187 = icmp ne %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %215

188:                                              ; preds = %185
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %21, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %12, align 8
  br label %215

215:                                              ; preds = %188, %185, %182, %175
  %216 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)*, i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)** %15, align 8
  %223 = load i64, i64* %21, align 8
  %224 = call i32 @ACPI_FORMAT_UINT64(i64 %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @AcpiUtGetRegionName(i64 %228)
  %230 = call i32 @ACPI_DEBUG_PRINT(i32 %229)
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %215
  %239 = call i32 (...) @AcpiExExitInterpreter()
  br label %240

240:                                              ; preds = %238, %215
  %241 = load i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)*, i64 (i64, i64, i64, i32*, %struct.TYPE_19__*, i8*)** %15, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %21, align 8
  %244 = load i64, i64* %12, align 8
  %245 = load i32*, i32** %13, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 %241(i64 %242, i64 %243, i64 %244, i32* %245, %struct.TYPE_19__* %246, i8* %250)
  store i64 %251, i64* %14, align 8
  %252 = load i64, i64* %14, align 8
  %253 = call i64 @ACPI_FAILURE(i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %278

255:                                              ; preds = %240
  %256 = load i32, i32* @AE_INFO, align 4
  %257 = load i64, i64* %14, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @AcpiUtGetRegionName(i64 %261)
  %263 = call i32 @ACPI_EXCEPTION(i32 %262)
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ACPI_ADR_SPACE_EC, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %255
  %271 = load i64, i64* %14, align 8
  %272 = load i64, i64* @AE_TIME, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32, i32* @AE_INFO, align 4
  %276 = call i32 @ACPI_ERROR(i32 ptrtoint ([45 x i8]* @.str.5 to i32))
  br label %277

277:                                              ; preds = %274, %270, %255
  br label %278

278:                                              ; preds = %277, %240
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %278
  %287 = call i32 (...) @AcpiExEnterInterpreter()
  br label %288

288:                                              ; preds = %286, %278
  %289 = load i64, i64* %14, align 8
  %290 = call i32 @return_ACPI_STATUS(i64 %289)
  %291 = load i64, i64* %7, align 8
  ret i64 %291
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_18__* @AcpiNsGetSecondaryObject(%struct.TYPE_18__*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(i32) #1

declare dso_local i32 @AcpiUtGetRegionName(i64) #1

declare dso_local i32 @AcpiExExitInterpreter(...) #1

declare dso_local i32 @AcpiExEnterInterpreter(...) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
