; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evhandler.c_AcpiEvInstallSpaceHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evhandler.c_AcpiEvInstallSpaceHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_22__*, i32*, i8*, %struct.TYPE_23__*, i32*, i8*, i8* }
%struct.TYPE_19__ = type { i8* }

@AE_OK = common dso_local global i32 0, align 4
@EvInstallSpaceHandler = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_TYPE_THERMAL = common dso_local global i64 0, align 8
@AcpiGbl_RootNode = common dso_local global %struct.TYPE_23__* null, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DEFAULT_HANDLER = common dso_local global i64 0, align 8
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i8* null, align 8
@AcpiExSystemMemorySpaceHandler = common dso_local global i64 0, align 8
@AcpiEvSystemMemoryRegionSetup = common dso_local global i32* null, align 8
@AcpiExSystemIoSpaceHandler = common dso_local global i64 0, align 8
@AcpiEvIoSpaceRegionSetup = common dso_local global i32* null, align 8
@AcpiExPciConfigSpaceHandler = common dso_local global i64 0, align 8
@AcpiEvPciConfigRegionSetup = common dso_local global i32* null, align 8
@AcpiExCmosSpaceHandler = common dso_local global i64 0, align 8
@AcpiEvCmosRegionSetup = common dso_local global i32* null, align 8
@AcpiExPciBarSpaceHandler = common dso_local global i64 0, align 8
@AcpiEvPciBarRegionSetup = common dso_local global i32* null, align 8
@AcpiExDataTableSpaceHandler = common dso_local global i64 0, align 8
@AcpiEvDefaultRegionSetup = common dso_local global i32* null, align 8
@AE_SAME_HANDLER = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Creating object on Device %p while installing handler\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Installing address handler for region %s(%X) on Device %4.4s %p(%p)\0A\00", align 1
@ACPI_TYPE_LOCAL_ADDRESS_HANDLER = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@AcpiEvInstallHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvInstallSpaceHandler(%struct.TYPE_23__* %0, i32 %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %14, align 4
  store i8* null, i8** %16, align 8
  %18 = load i32, i32* @EvInstallSpaceHandler, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_THERMAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** @AcpiGbl_RootNode, align 8
  %40 = icmp ne %struct.TYPE_23__* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %42, i32* %14, align 4
  br label %207

43:                                               ; preds = %37, %31, %25, %5
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ACPI_DEFAULT_HANDLER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load i8*, i8** @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %67 [
    i32 128, label %50
    i32 129, label %53
    i32 130, label %56
    i32 133, label %59
    i32 131, label %62
    i32 132, label %65
  ]

50:                                               ; preds = %47
  %51 = load i64, i64* @AcpiExSystemMemorySpaceHandler, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** @AcpiEvSystemMemoryRegionSetup, align 8
  store i32* %52, i32** %10, align 8
  br label %69

53:                                               ; preds = %47
  %54 = load i64, i64* @AcpiExSystemIoSpaceHandler, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i32*, i32** @AcpiEvIoSpaceRegionSetup, align 8
  store i32* %55, i32** %10, align 8
  br label %69

56:                                               ; preds = %47
  %57 = load i64, i64* @AcpiExPciConfigSpaceHandler, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i32*, i32** @AcpiEvPciConfigRegionSetup, align 8
  store i32* %58, i32** %10, align 8
  br label %69

59:                                               ; preds = %47
  %60 = load i64, i64* @AcpiExCmosSpaceHandler, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i32*, i32** @AcpiEvCmosRegionSetup, align 8
  store i32* %61, i32** %10, align 8
  br label %69

62:                                               ; preds = %47
  %63 = load i64, i64* @AcpiExPciBarSpaceHandler, align 8
  store i64 %63, i64* %9, align 8
  %64 = load i32*, i32** @AcpiEvPciBarRegionSetup, align 8
  store i32* %64, i32** %10, align 8
  br label %69

65:                                               ; preds = %47
  %66 = load i64, i64* @AcpiExDataTableSpaceHandler, align 8
  store i64 %66, i64* %9, align 8
  store i32* null, i32** %10, align 8
  br label %69

67:                                               ; preds = %47
  %68 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %68, i32* %14, align 4
  br label %207

69:                                               ; preds = %65, %62, %59, %56, %53, %50
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** @AcpiEvDefaultRegionSetup, align 8
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = call %struct.TYPE_22__* @AcpiNsGetAttachedObject(%struct.TYPE_23__* %76)
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %12, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %79 = icmp ne %struct.TYPE_22__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = call %struct.TYPE_22__* @AcpiEvFindRegionHandler(i32 %81, %struct.TYPE_22__* %85)
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %13, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %88 = icmp ne %struct.TYPE_22__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @AE_SAME_HANDLER, align 4
  store i32 %97, i32* %14, align 4
  br label %207

98:                                               ; preds = %89
  %99 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %98
  br label %207

101:                                              ; preds = %80
  br label %142

102:                                              ; preds = %75
  %103 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = ptrtoint %struct.TYPE_23__* %104 to i32
  %106 = call i32 @ACPI_DEBUG_PRINT(i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  store i64 %113, i64* %15, align 8
  br label %118

114:                                              ; preds = %102
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %114, %112
  %119 = load i64, i64* %15, align 8
  %120 = call %struct.TYPE_22__* @AcpiUtCreateInternalObject(i64 %119)
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %12, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %122 = icmp ne %struct.TYPE_22__* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %124, i32* %14, align 4
  br label %207

125:                                              ; preds = %118
  %126 = load i64, i64* %15, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @AcpiNsAttachObject(%struct.TYPE_23__* %131, %struct.TYPE_22__* %132, i64 %133)
  store i32 %134, i32* %14, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %136 = call i32 @AcpiUtRemoveReference(%struct.TYPE_22__* %135)
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @ACPI_FAILURE(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  br label %207

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %101
  %143 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @AcpiUtGetRegionName(i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = call i32 @AcpiUtGetNodeName(%struct.TYPE_23__* %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %151 = ptrtoint %struct.TYPE_22__* %150 to i32
  %152 = call i32 @ACPI_DEBUG_PRINT(i32 %151)
  %153 = load i64, i64* @ACPI_TYPE_LOCAL_ADDRESS_HANDLER, align 8
  %154 = call %struct.TYPE_22__* @AcpiUtCreateInternalObject(i64 %153)
  store %struct.TYPE_22__* %154, %struct.TYPE_22__** %13, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %156 = icmp ne %struct.TYPE_22__* %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %142
  %158 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %158, i32* %14, align 4
  br label %207

159:                                              ; preds = %142
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 7
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 6
  store i8* %166, i8** %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 5
  store i32* null, i32** %172, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  store %struct.TYPE_23__* %173, %struct.TYPE_23__** %176, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  store i64 %177, i64* %180, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 3
  store i8* %181, i8** %184, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  store i32* %185, i32** %188, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %191, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  store %struct.TYPE_22__* %192, %struct.TYPE_22__** %195, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %199, align 8
  %200 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %203 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %204 = load i32, i32* @AcpiEvInstallHandler, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %206 = call i32 @AcpiNsWalkNamespace(i64 %200, %struct.TYPE_23__* %201, i32 %202, i32 %203, i32 %204, i32* null, %struct.TYPE_22__* %205, i32* null)
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %159, %157, %140, %123, %100, %96, %67, %41
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @return_ACPI_STATUS(i32 %208)
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_22__* @AcpiNsGetAttachedObject(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @AcpiEvFindRegionHandler(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.TYPE_22__* @AcpiUtCreateInternalObject(i64) #1

declare dso_local i32 @AcpiNsAttachObject(%struct.TYPE_23__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_22__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtGetRegionName(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(%struct.TYPE_23__*) #1

declare dso_local i32 @AcpiNsWalkNamespace(i64, %struct.TYPE_23__*, i32, i32, i32, i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
