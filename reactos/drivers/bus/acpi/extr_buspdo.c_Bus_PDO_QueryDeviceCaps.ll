; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceCaps.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryDeviceCaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64*, i32, i32, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }
%struct.acpi_device = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@PowerDeviceD0 = common dso_local global i8* null, align 8
@PowerSystemWorking = common dso_local global i64 0, align 8
@PowerDeviceD3 = common dso_local global i8* null, align 8
@PowerSystemSleeping1 = common dso_local global i64 0, align 8
@PowerSystemSleeping2 = common dso_local global i64 0, align 8
@PowerSystemSleeping3 = common dso_local global i64 0, align 8
@ACPI_D_STATE_COUNT = common dso_local global i64 0, align 8
@PowerDeviceD1 = common dso_local global i64 0, align 8
@PowerDeviceD2 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@ACPI_BUTTON_HID_LID = common dso_local global i32 0, align 4
@ACPI_THERMAL_HID = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_HID = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bus_PDO_QueryDeviceCaps(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %8, align 8
  %10 = call i32 (...) @PAGED_CODE()
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @acpi_bus_get_device(i64 %18, %struct.acpi_device** %8)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_14__* @IoGetCurrentIrpStackLocation(i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %20
  %39 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %39, i32* %3, align 4
  br label %319

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 23
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 22
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 21
  store i64 0, i64* %46, align 8
  %47 = load i8*, i8** @PowerDeviceD0, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @PowerSystemWorking, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %48, i64* %53, align 8
  %54 = load i8*, i8** @PowerDeviceD3, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @PowerSystemSleeping1, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %55, i64* %60, align 8
  %61 = load i8*, i8** @PowerDeviceD3, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @PowerSystemSleeping2, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %62, i64* %67, align 8
  %68 = load i8*, i8** @PowerDeviceD3, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @PowerSystemSleeping3, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %69, i64* %74, align 8
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %159, %40
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @ACPI_D_STATE_COUNT, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %81 = icmp ne %struct.acpi_device* %80, null
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i1 [ false, %75 ], [ %81, %79 ]
  br i1 %83, label %84, label %162

84:                                               ; preds = %82
  %85 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %86 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %159

96:                                               ; preds = %84
  %97 = load i64, i64* %9, align 8
  switch i64 %97, label %158 [
    i64 131, label %98
    i64 130, label %106
    i64 129, label %123
    i64 128, label %140
  ]

98:                                               ; preds = %96
  %99 = load i8*, i8** @PowerDeviceD0, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @PowerSystemWorking, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %100, i64* %105, align 8
  br label %158

106:                                              ; preds = %96
  %107 = load i64, i64* @PowerDeviceD1, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @PowerSystemSleeping1, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %107, i64* %112, align 8
  %113 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %114 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 23
  store i64 %120, i64* %122, align 8
  br label %158

123:                                              ; preds = %96
  %124 = load i64, i64* @PowerDeviceD2, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @PowerSystemSleeping2, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %124, i64* %129, align 8
  %130 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %131 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 22
  store i64 %137, i64* %139, align 8
  br label %158

140:                                              ; preds = %96
  %141 = load i8*, i8** @PowerDeviceD3, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @PowerSystemSleeping3, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64 %142, i64* %147, align 8
  %148 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %149 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 21
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %96, %140, %123, %106, %98
  br label %159

159:                                              ; preds = %158, %95
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %9, align 8
  br label %75

162:                                              ; preds = %82
  %163 = load i64, i64* @PowerDeviceD1, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 20
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* @PowerSystemSleeping1, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PowerDeviceD1, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i8*, i8** @TRUE, align 8
  br label %178

176:                                              ; preds = %162
  %177 = load i8*, i8** @FALSE, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i8* [ %175, %174 ], [ %177, %176 ]
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 19
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @PowerSystemSleeping2, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PowerDeviceD2, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i8*, i8** @TRUE, align 8
  br label %194

192:                                              ; preds = %178
  %193 = load i8*, i8** @FALSE, align 8
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i8* [ %191, %190 ], [ %193, %192 ]
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 18
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** @FALSE, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 17
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** @TRUE, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 16
  store i8* %201, i8** %203, align 8
  %204 = load i8*, i8** @FALSE, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 15
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** @FALSE, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 14
  store i8* %207, i8** %209, align 8
  %210 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %211 = icmp ne %struct.acpi_device* %210, null
  br i1 %211, label %212, label %275

212:                                              ; preds = %194
  %213 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %214 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 4
  %219 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %220 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 12
  store i32 %222, i32* %224, align 8
  %225 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %226 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %212
  %231 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %232 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  br label %237

237:                                              ; preds = %230, %212
  %238 = phi i1 [ false, %212 ], [ %236, %230 ]
  %239 = zext i1 %238 to i32
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 8
  %242 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %243 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 11
  store i32 %245, i32* %247, align 4
  %248 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %249 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 10
  store i32 %251, i32* %253, align 8
  %254 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %255 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 9
  store i32 %257, i32* %259, align 4
  %260 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %261 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %270 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 8
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %237, %194
  %276 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %277 = icmp ne %struct.acpi_device* %276, null
  br i1 %277, label %278, label %308

278:                                              ; preds = %275
  %279 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %280 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %312

284:                                              ; preds = %278
  %285 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %286 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ACPI_BUTTON_HID_LID, align 4
  %290 = call i64 @strstr(i32 %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %308, label %292

292:                                              ; preds = %284
  %293 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %294 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ACPI_THERMAL_HID, align 4
  %298 = call i64 @strstr(i32 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %308, label %300

300:                                              ; preds = %292
  %301 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %302 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @ACPI_PROCESSOR_HID, align 4
  %306 = call i64 @strstr(i32 %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %300, %292, %284, %275
  %309 = load i8*, i8** @TRUE, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 7
  store i8* %309, i8** %311, align 8
  br label %312

312:                                              ; preds = %308, %300, %278
  %313 = load i8*, i8** @FALSE, align 8
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 6
  store i8* %313, i8** %315, align 8
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 5
  store i64 -1, i64* %317, align 8
  %318 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %312, %38
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32 @acpi_bus_get_device(i64, %struct.acpi_device**) #1

declare dso_local %struct.TYPE_14__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i64 @strstr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
