; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmethod.c_AcpiDsBeginMethodExecution.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmethod.c_AcpiDsBeginMethodExecution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@AE_OK = common dso_local global i32 0, align 4
@DsBeginMethodExecution = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@ACPI_UINT8_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Method reached maximum reentrancy limit (255)\00", align 1
@AE_AML_METHOD_LIMIT = common dso_local global i32 0, align 4
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@ACPI_METHOD_IGNORE_SYNC_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%u)\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AcpiMethodCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsBeginMethodExecution(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @DsBeginMethodExecution, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_NULL_ENTRY, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = call i32 @AcpiExStartTraceMethod(i32* %19, %struct.TYPE_17__* %20, %struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACPI_UINT8_MAX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = call i32 @ACPI_ERROR(i32 ptrtoint ([46 x i8]* @.str to i32))
  %32 = load i32, i32* @AE_AML_METHOD_LIMIT, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %212

42:                                               ; preds = %34
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = call i32 @AcpiDsCreateMethodMutex(%struct.TYPE_17__* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %61, label %96

61:                                               ; preds = %58
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %74, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %69
  %84 = load i32, i32* @AE_INFO, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @AcpiUtGetNodeName(i32* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @ACPI_ERROR(i32 %92)
  %94 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %95 = call i32 @return_ACPI_STATUS(i32 %94)
  br label %96

96:                                               ; preds = %83, %69, %61, %58
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = icmp ne %struct.TYPE_16__* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %113, %120
  br i1 %121, label %122, label %203

122:                                              ; preds = %108, %99, %96
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %131 = call i32 @AcpiExSystemWaitMutex(i32 %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ACPI_FAILURE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  br label %138

138:                                              ; preds = %135, %122
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = icmp ne %struct.TYPE_16__* %139, null
  br i1 %140, label %141, label %181

141:                                              ; preds = %138
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i64 %146, i64* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store i64 %157, i64* %163, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %141
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  store i64 %175, i64* %179, align 8
  br label %180

180:                                              ; preds = %171, %141
  br label %202

181:                                              ; preds = %138
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i64 %188, i64* %194, align 8
  %195 = call i64 (...) @AcpiOsGetThreadId()
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  store i64 %195, i64* %201, align 8
  br label %202

202:                                              ; preds = %181, %180
  br label %203

203:                                              ; preds = %202, %108
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %203, %34
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 4
  %222 = call i32 @AcpiUtAllocateOwnerId(i32* %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i64 @ACPI_FAILURE(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %238

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %212
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %231, align 8
  %234 = load i32, i32* @AcpiMethodCount, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @AcpiMethodCount, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @return_ACPI_STATUS(i32 %236)
  br label %238

238:                                              ; preds = %228, %226
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = icmp ne %struct.TYPE_14__* %242, null
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @AcpiOsReleaseMutex(i32 %251)
  br label %253

253:                                              ; preds = %244, %238
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @return_ACPI_STATUS(i32 %254)
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiExStartTraceMethod(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiDsCreateMethodMutex(%struct.TYPE_17__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(i32*) #1

declare dso_local i32 @AcpiExSystemWaitMutex(i32, i32) #1

declare dso_local i64 @AcpiOsGetThreadId(...) #1

declare dso_local i32 @AcpiUtAllocateOwnerId(i32*) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
