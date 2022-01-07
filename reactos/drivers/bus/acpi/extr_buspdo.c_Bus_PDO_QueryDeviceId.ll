; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceId.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.acpi_device = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i8*, i8*, i8*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_23__ = type { i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@ProcessorIdString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 65, i32 67, i32 80, i32 73, i32 92, i32 37, i32 104, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 65, i32 67, i32 80, i32 73, i32 92, i32 70, i32 105, i32 120, i32 101, i32 100, i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@UNICODE_NULL = common dso_local global i8 0, align 1
@PagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"BusQueryDeviceID: %ls\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i32] [i32 37, i32 104, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 48, i32 0], align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"BusQueryInstanceID: %ls\0A\00", align 1
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Device name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Hardware ID: %s\0A\00", align 1
@ProcessorHardwareIds = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [5 x i32] [i32 42, i32 37, i32 104, i32 115, i32 0], align 4
@.str.11 = private unnamed_addr constant [13 x i32] [i32 42, i32 70, i32 105, i32 120, i32 101, i32 100, i32 66, i32 117, i32 116, i32 116, i32 111, i32 110, i32 0], align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"BusQueryHardwareIDs: %ls\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"BusQueryCompatibleIDs: %ls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bus_PDO_QueryDeviceId(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_device*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @PAGED_CODE()
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = call %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %470 [
    i32 130, label %22
    i32 128, label %91
    i32 129, label %156
    i32 131, label %295
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @acpi_bus_get_device(i32 %30, %struct.acpi_device** %12)
  %32 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @ProcessorIdString, align 4
  %40 = call i32 @wcslen(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* @ProcessorIdString, align 4
  %43 = call i32 @wcscpy(i8* %41, i32 %42)
  br label %51

44:                                               ; preds = %27
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %46 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i8*, ...) @swprintf(i8* %45, i8* bitcast ([9 x i32]* @.str.1 to i8*), i8* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44, %38
  br label %55

52:                                               ; preds = %22
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %54 = call i32 (i8*, i8*, ...) @swprintf(i8* %53, i8* bitcast ([17 x i32]* @.str.2 to i8*))
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i8, i8* @UNICODE_NULL, align 1
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %59
  store i8 %56, i8* %60, align 1
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = icmp ule i64 %63, 256
  %65 = zext i1 %64 to i32
  %66 = call i32 @NT_ASSERT(i32 %65)
  %67 = load i32, i32* @PagedPool, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i8* @ExAllocatePoolWithTag(i32 %67, i32 %71, i8 signext 65)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %55
  %76 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %76, i32* %11, align 4
  br label %475

77:                                               ; preds = %55
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i32 @RtlCopyMemory(i8* %78, i8* %79, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %475

91:                                               ; preds = %2
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @acpi_bus_get_device(i32 %99, %struct.acpi_device** %12)
  %101 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %102 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %108 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %109 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, i8*, ...) @swprintf(i8* %107, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* %111)
  store i32 %112, i32* %9, align 4
  br label %116

113:                                              ; preds = %96
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %115 = call i32 (i8*, i8*, ...) @swprintf(i8* %114, i8* bitcast ([4 x i32]* @.str.5 to i8*), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.6, i64 0, i64 0))
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %106
  br label %120

117:                                              ; preds = %91
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %119 = call i32 (i8*, i8*, ...) @swprintf(i8* %118, i8* bitcast ([4 x i32]* @.str.5 to i8*), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.6, i64 0, i64 0))
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %116
  %121 = load i8, i8* @UNICODE_NULL, align 1
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %124
  store i8 %121, i8* %125, align 1
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 1
  %129 = icmp ule i64 %128, 256
  %130 = zext i1 %129 to i32
  %131 = call i32 @NT_ASSERT(i32 %130)
  %132 = load i32, i32* @PagedPool, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = call i8* @ExAllocatePoolWithTag(i32 %132, i32 %136, i8 signext 65)
  store i8* %137, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %120
  %141 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %141, i32* %11, align 4
  br label %475

142:                                              ; preds = %120
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = call i32 @RtlCopyMemory(i8* %143, i8* %144, i32 %148)
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %150)
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  store i8* %152, i8** %155, align 8
  br label %475

156:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %157 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %157, i32* %11, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %234

162:                                              ; preds = %156
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @acpi_bus_get_device(i32 %165, %struct.acpi_device** %12)
  %167 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %168 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %162
  br label %475

173:                                              ; preds = %162
  %174 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %175 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %177)
  %179 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %180 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %182)
  %184 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %185 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %173
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ProcessorHardwareIds, i32 0, i32 0), align 8
  %192 = sext i32 %191 to i64
  %193 = udiv i64 %192, 1
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %9, align 4
  %195 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ProcessorHardwareIds, i32 0, i32 1), align 8
  store i8* %195, i8** %7, align 8
  br label %233

196:                                              ; preds = %173
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %198
  %200 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %201 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (i8*, i8*, ...) @swprintf(i8* %199, i8* bitcast ([9 x i32]* @.str.1 to i8*), i8* %203)
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i8, i8* @UNICODE_NULL, align 1
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %210
  store i8 %207, i8* %211, align 1
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %213
  %215 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %216 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 (i8*, i8*, ...) @swprintf(i8* %214, i8* bitcast ([5 x i32]* @.str.10 to i8*), i8* %218)
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %9, align 4
  %222 = load i8, i8* @UNICODE_NULL, align 1
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %225
  store i8 %222, i8* %226, align 1
  %227 = load i8, i8* @UNICODE_NULL, align 1
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %230
  store i8 %227, i8* %231, align 1
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %232, i8** %7, align 8
  br label %233

233:                                              ; preds = %196, %190
  br label %263

234:                                              ; preds = %156
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %236
  %238 = call i32 (i8*, i8*, ...) @swprintf(i8* %237, i8* bitcast ([17 x i32]* @.str.2 to i8*))
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %9, align 4
  %241 = load i8, i8* @UNICODE_NULL, align 1
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %244
  store i8 %241, i8* %245, align 1
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %247
  %249 = call i32 (i8*, i8*, ...) @swprintf(i8* %248, i8* bitcast ([13 x i32]* @.str.11 to i8*))
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %9, align 4
  %252 = load i8, i8* @UNICODE_NULL, align 1
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %255
  store i8 %252, i8* %256, align 1
  %257 = load i8, i8* @UNICODE_NULL, align 1
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %260
  store i8 %257, i8* %261, align 1
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %262, i8** %7, align 8
  br label %263

263:                                              ; preds = %234, %233
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 %265, 1
  %267 = icmp ule i64 %266, 256
  %268 = zext i1 %267 to i32
  %269 = call i32 @NT_ASSERT(i32 %268)
  %270 = load i32, i32* @PagedPool, align 4
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = mul i64 %272, 1
  %274 = trunc i64 %273 to i32
  %275 = call i8* @ExAllocatePoolWithTag(i32 %270, i32 %274, i8 signext 65)
  store i8* %275, i8** %6, align 8
  %276 = load i8*, i8** %6, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %263
  %279 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %279, i32* %11, align 4
  br label %475

280:                                              ; preds = %263
  %281 = load i8*, i8** %6, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 1
  %286 = trunc i64 %285 to i32
  %287 = call i32 @RtlCopyMemory(i8* %281, i8* %282, i32 %286)
  %288 = load i8*, i8** %6, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  store i8* %288, i8** %291, align 8
  %292 = load i8*, i8** %6, align 8
  %293 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %292)
  %294 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %294, i32* %11, align 4
  br label %475

295:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %296 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %296, i32* %11, align 4
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %469

301:                                              ; preds = %295
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @acpi_bus_get_device(i32 %304, %struct.acpi_device** %12)
  %306 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %307 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %301
  br label %475

312:                                              ; preds = %301
  %313 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %314 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %316)
  %318 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %319 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %321)
  %323 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %324 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @strcmp(i8* %326, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %365

329:                                              ; preds = %312
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %331
  %333 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %334 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i8*, i8*, ...) @swprintf(i8* %332, i8* bitcast ([9 x i32]* @.str.1 to i8*), i8* %336)
  %338 = load i32, i32* %9, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %9, align 4
  %340 = load i8, i8* @UNICODE_NULL, align 1
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %9, align 4
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %343
  store i8 %340, i8* %344, align 1
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %346
  %348 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %349 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 (i8*, i8*, ...) @swprintf(i8* %347, i8* bitcast ([5 x i32]* @.str.10 to i8*), i8* %351)
  %353 = load i32, i32* %9, align 4
  %354 = add nsw i32 %353, %352
  store i32 %354, i32* %9, align 4
  %355 = load i8, i8* @UNICODE_NULL, align 1
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %9, align 4
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %358
  store i8 %355, i8* %359, align 1
  %360 = load i8, i8* @UNICODE_NULL, align 1
  %361 = load i32, i32* %9, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %9, align 4
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %363
  store i8 %360, i8* %364, align 1
  br label %437

365:                                              ; preds = %312
  %366 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %367 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %435

371:                                              ; preds = %365
  store i32 0, i32* %10, align 4
  br label %372

372:                                              ; preds = %426, %371
  %373 = load i32, i32* %10, align 4
  %374 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %375 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 3
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp slt i32 %373, %379
  br i1 %380, label %381, label %429

381:                                              ; preds = %372
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %383
  %385 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %386 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 3
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %389, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 (i8*, i8*, ...) @swprintf(i8* %384, i8* bitcast ([9 x i32]* @.str.1 to i8*), i8* %395)
  %397 = load i32, i32* %9, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* %9, align 4
  %399 = load i8, i8* @UNICODE_NULL, align 1
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %402
  store i8 %399, i8* %403, align 1
  %404 = load i32, i32* %9, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %405
  %407 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %408 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 3
  %410 = load %struct.TYPE_19__*, %struct.TYPE_19__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 (i8*, i8*, ...) @swprintf(i8* %406, i8* bitcast ([5 x i32]* @.str.10 to i8*), i8* %417)
  %419 = load i32, i32* %9, align 4
  %420 = add nsw i32 %419, %418
  store i32 %420, i32* %9, align 4
  %421 = load i8, i8* @UNICODE_NULL, align 1
  %422 = load i32, i32* %9, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %9, align 4
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %424
  store i8 %421, i8* %425, align 1
  br label %426

426:                                              ; preds = %381
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %372

429:                                              ; preds = %372
  %430 = load i8, i8* @UNICODE_NULL, align 1
  %431 = load i32, i32* %9, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %9, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %433
  store i8 %430, i8* %434, align 1
  br label %436

435:                                              ; preds = %365
  br label %475

436:                                              ; preds = %429
  br label %437

437:                                              ; preds = %436, %329
  %438 = load i32, i32* %9, align 4
  %439 = sext i32 %438 to i64
  %440 = mul i64 %439, 1
  %441 = icmp ule i64 %440, 256
  %442 = zext i1 %441 to i32
  %443 = call i32 @NT_ASSERT(i32 %442)
  %444 = load i32, i32* @PagedPool, align 4
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = mul i64 %446, 1
  %448 = trunc i64 %447 to i32
  %449 = call i8* @ExAllocatePoolWithTag(i32 %444, i32 %448, i8 signext 65)
  store i8* %449, i8** %6, align 8
  %450 = load i8*, i8** %6, align 8
  %451 = icmp ne i8* %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %437
  %453 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %453, i32* %11, align 4
  br label %475

454:                                              ; preds = %437
  %455 = load i8*, i8** %6, align 8
  %456 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %457 = load i32, i32* %9, align 4
  %458 = sext i32 %457 to i64
  %459 = mul i64 %458, 1
  %460 = trunc i64 %459 to i32
  %461 = call i32 @RtlCopyMemory(i8* %455, i8* %456, i32 %460)
  %462 = load i8*, i8** %6, align 8
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 1
  store i8* %462, i8** %465, align 8
  %466 = load i8*, i8** %6, align 8
  %467 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %466)
  %468 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %468, i32* %11, align 4
  br label %469

469:                                              ; preds = %454, %295
  br label %475

470:                                              ; preds = %2
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  store i32 %474, i32* %11, align 4
  br label %475

475:                                              ; preds = %470, %469, %452, %435, %311, %280, %278, %172, %142, %140, %77, %75
  %476 = load i32, i32* %11, align 4
  ret i32 %476
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__*) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i8*, i32) #1

declare dso_local i32 @swprintf(i8*, i8*, ...) #1

declare dso_local i32 @NT_ASSERT(i32) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

declare dso_local i32 @RtlCopyMemory(i8*, i8*, i32) #1

declare dso_local i32 @DPRINT(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
