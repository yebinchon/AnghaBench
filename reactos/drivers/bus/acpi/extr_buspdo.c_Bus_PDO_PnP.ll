; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_PnP.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_PnP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_45__ = type { i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_35__, i64, %struct.TYPE_36__ }
%struct.TYPE_35__ = type { i32, i8*, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_43__ = type { i8* }
%struct.acpi_device = type { %struct.TYPE_38__, %struct.TYPE_37__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Device %x failed to start!\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@GUID_DEVICE_SYS_BUTTON = common dso_local global i32 0, align 4
@ACPI_THERMAL_HID = common dso_local global i32 0, align 4
@GUID_DEVICE_THERMAL_ZONE = common dso_local global i32 0, align 4
@ACPI_BUTTON_HID_LID = common dso_local global i32 0, align 4
@GUID_DEVICE_LID = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_HID = common dso_local global i32 0, align 4
@GUID_DEVICE_PROCESSOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PowerDeviceD0 = common dso_local global i8* null, align 8
@DevicePowerState = common dso_local global i32 0, align 4
@Started = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Device %x failed to stop!\0A\00", align 1
@PowerDeviceD3 = common dso_local global i8* null, align 8
@Stopped = common dso_local global i32 0, align 4
@StopPending = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Device %x failed to enter D3!\0A\00", align 1
@RemovalPending = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"\09QueryDeviceRelation Type: %s\0A\00", align 1
@IO_NO_INCREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bus_PDO_PnP(i32 %0, %struct.TYPE_44__* %1, %struct.TYPE_45__* %2, %struct.TYPE_42__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_43__, align 8
  %11 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_44__* %1, %struct.TYPE_44__** %6, align 8
  store %struct.TYPE_45__* %2, %struct.TYPE_45__** %7, align 8
  store %struct.TYPE_42__* %3, %struct.TYPE_42__** %8, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %11, align 8
  %12 = call i32 (...) @PAGED_CODE()
  %13 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @acpi_bus_get_device(i64 %20, %struct.acpi_device** %11)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %359 [
    i32 129, label %26
    i32 128, label %170
    i32 131, label %226
    i32 142, label %232
    i32 130, label %245
    i32 134, label %300
    i32 143, label %306
    i32 139, label %319
    i32 136, label %323
    i32 138, label %327
    i32 137, label %338
    i32 133, label %342
    i32 132, label %346
    i32 140, label %350
    i32 135, label %354
    i32 141, label %358
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @acpi_bus_power_manageable(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ACPI_STATE_D0, align 4
  %42 = call i32 @acpi_bus_set_power(i64 %40, i32 %41)
  %43 = call i32 @ACPI_SUCCESS(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %50, i32* %9, align 4
  br label %364

51:                                               ; preds = %37, %31, %26
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %57 = icmp ne %struct.acpi_device* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 2
  %65 = call i32 @IoRegisterDeviceInterface(i32 %62, i32* @GUID_DEVICE_SYS_BUTTON, i32* null, %struct.TYPE_36__* %64)
  store i32 %65, i32* %9, align 4
  br label %135

66:                                               ; preds = %51
  %67 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %74 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ACPI_THERMAL_HID, align 4
  %78 = call i32 @strstr(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %85, i32 0, i32 2
  %87 = call i32 @IoRegisterDeviceInterface(i32 %84, i32* @GUID_DEVICE_THERMAL_ZONE, i32* null, %struct.TYPE_36__* %86)
  store i32 %87, i32* %9, align 4
  br label %134

88:                                               ; preds = %72, %66
  %89 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %96 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ACPI_BUTTON_HID_LID, align 4
  %100 = call i32 @strstr(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %107, i32 0, i32 2
  %109 = call i32 @IoRegisterDeviceInterface(i32 %106, i32* @GUID_DEVICE_LID, i32* null, %struct.TYPE_36__* %108)
  store i32 %109, i32* %9, align 4
  br label %133

110:                                              ; preds = %94, %88
  %111 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %112 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %118 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ACPI_PROCESSOR_HID, align 4
  %122 = call i32 @strstr(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 2
  %131 = call i32 @IoRegisterDeviceInterface(i32 %128, i32* @GUID_DEVICE_PROCESSOR, i32* null, %struct.TYPE_36__* %130)
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %124, %116, %110
  br label %133

133:                                              ; preds = %132, %102
  br label %134

134:                                              ; preds = %133, %80
  br label %135

135:                                              ; preds = %134, %58
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @NT_SUCCESS(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %146, i32 0, i32 2
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @IoSetDeviceInterfaceState(%struct.TYPE_36__* %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %139, %135
  %151 = load i8*, i8** @PowerDeviceD0, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  store i8* %151, i8** %152, align 8
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DevicePowerState, align 4
  %158 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @PoSetPowerState(i32 %156, i32 %157, i8* %159)
  %161 = load i8*, i8** @PowerDeviceD0, align 8
  %162 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %165, i32 0, i32 0
  %167 = load i32, i32* @Started, align 4
  %168 = call i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %166, i32 %167)
  %169 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %169, i32* %9, align 4
  br label %364

170:                                              ; preds = %22
  %171 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %177, i32 0, i32 2
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i32 @IoSetDeviceInterfaceState(%struct.TYPE_36__* %178, i32 %179)
  br label %181

181:                                              ; preds = %176, %170
  %182 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %181
  %187 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @acpi_bus_power_manageable(i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* @ACPI_STATE_D3, align 4
  %197 = call i32 @acpi_bus_set_power(i64 %195, i32 %196)
  %198 = call i32 @ACPI_SUCCESS(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %192
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %203)
  %205 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %205, i32* %9, align 4
  br label %364

206:                                              ; preds = %192, %186, %181
  %207 = load i8*, i8** @PowerDeviceD3, align 8
  %208 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  store i8* %207, i8** %208, align 8
  %209 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DevicePowerState, align 4
  %214 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @PoSetPowerState(i32 %212, i32 %213, i8* %215)
  %217 = load i8*, i8** @PowerDeviceD3, align 8
  %218 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 1
  store i8* %217, i8** %220, align 8
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i32 0, i32 0
  %223 = load i32, i32* @Stopped, align 4
  %224 = call i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %222, i32 %223)
  %225 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %225, i32* %9, align 4
  br label %364

226:                                              ; preds = %22
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %227, i32 0, i32 0
  %229 = load i32, i32* @StopPending, align 4
  %230 = call i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %228, i32 %229)
  %231 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %231, i32* %9, align 4
  br label %364

232:                                              ; preds = %22
  %233 = load i32, i32* @StopPending, align 4
  %234 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %233, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %240, i32 0, i32 0
  %242 = call i32 @RESTORE_PREVIOUS_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %241)
  br label %243

243:                                              ; preds = %239, %232
  %244 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %244, i32* %9, align 4
  br label %364

245:                                              ; preds = %22
  %246 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %252, i32 0, i32 2
  %254 = load i32, i32* @FALSE, align 4
  %255 = call i32 @IoSetDeviceInterfaceState(%struct.TYPE_36__* %253, i32 %254)
  br label %256

256:                                              ; preds = %251, %245
  %257 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %294

261:                                              ; preds = %256
  %262 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @acpi_bus_power_manageable(i64 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %294

267:                                              ; preds = %261
  %268 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* @ACPI_STATE_D3, align 4
  %272 = call i32 @acpi_bus_set_power(i64 %270, i32 %271)
  %273 = call i32 @ACPI_SUCCESS(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %294, label %275

275:                                              ; preds = %267
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %278)
  %280 = load i8*, i8** @PowerDeviceD3, align 8
  %281 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  store i8* %280, i8** %281, align 8
  %282 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @DevicePowerState, align 4
  %287 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @PoSetPowerState(i32 %285, i32 %286, i8* %288)
  %290 = load i8*, i8** @PowerDeviceD3, align 8
  %291 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 1
  store i8* %290, i8** %293, align 8
  br label %294

294:                                              ; preds = %275, %267, %261, %256
  %295 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %295, i32 0, i32 0
  %297 = load i32, i32* @Stopped, align 4
  %298 = call i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %296, i32 %297)
  %299 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %299, i32* %9, align 4
  br label %364

300:                                              ; preds = %22
  %301 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %301, i32 0, i32 0
  %303 = load i32, i32* @RemovalPending, align 4
  %304 = call i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %302, i32 %303)
  %305 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %305, i32* %9, align 4
  br label %364

306:                                              ; preds = %22
  %307 = load i32, i32* @RemovalPending, align 4
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %307, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %306
  %314 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %314, i32 0, i32 0
  %316 = call i32 @RESTORE_PREVIOUS_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %315)
  br label %317

317:                                              ; preds = %313, %306
  %318 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %318, i32* %9, align 4
  br label %364

319:                                              ; preds = %22
  %320 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %321 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %322 = call i32 @Bus_PDO_QueryDeviceCaps(%struct.TYPE_42__* %320, %struct.TYPE_44__* %321)
  store i32 %322, i32* %9, align 4
  br label %364

323:                                              ; preds = %22
  %324 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %325 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %326 = call i32 @Bus_PDO_QueryDeviceId(%struct.TYPE_42__* %324, %struct.TYPE_44__* %325)
  store i32 %326, i32* %9, align 4
  br label %364

327:                                              ; preds = %22
  %328 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @DbgDeviceRelationString(i32 %332)
  %334 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %333)
  %335 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %337 = call i32 @Bus_PDO_QueryDeviceRelations(%struct.TYPE_42__* %335, %struct.TYPE_44__* %336)
  store i32 %337, i32* %9, align 4
  br label %364

338:                                              ; preds = %22
  %339 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %340 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %341 = call i32 @Bus_PDO_QueryDeviceText(%struct.TYPE_42__* %339, %struct.TYPE_44__* %340)
  store i32 %341, i32* %9, align 4
  br label %364

342:                                              ; preds = %22
  %343 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %344 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %345 = call i32 @Bus_PDO_QueryResources(%struct.TYPE_42__* %343, %struct.TYPE_44__* %344)
  store i32 %345, i32* %9, align 4
  br label %364

346:                                              ; preds = %22
  %347 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %348 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %349 = call i32 @Bus_PDO_QueryResourceRequirements(%struct.TYPE_42__* %347, %struct.TYPE_44__* %348)
  store i32 %349, i32* %9, align 4
  br label %364

350:                                              ; preds = %22
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %352 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %353 = call i32 @Bus_PDO_QueryBusInformation(%struct.TYPE_42__* %351, %struct.TYPE_44__* %352)
  store i32 %353, i32* %9, align 4
  br label %364

354:                                              ; preds = %22
  %355 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %356 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %357 = call i32 @Bus_PDO_QueryInterface(%struct.TYPE_42__* %355, %struct.TYPE_44__* %356)
  store i32 %357, i32* %9, align 4
  br label %364

358:                                              ; preds = %22
  br label %359

359:                                              ; preds = %22, %358
  %360 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %9, align 4
  br label %364

364:                                              ; preds = %359, %354, %350, %346, %342, %338, %327, %323, %319, %317, %300, %294, %243, %226, %206, %200, %150, %45
  %365 = load i32, i32* %9, align 4
  %366 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %367, i32 0, i32 0
  store i32 %365, i32* %368, align 4
  %369 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %370 = load i32, i32* @IO_NO_INCREMENT, align 4
  %371 = call i32 @IoCompleteRequest(%struct.TYPE_44__* %369, i32 %370)
  %372 = load i32, i32* %9, align 4
  ret i32 %372
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32 @acpi_bus_get_device(i64, %struct.acpi_device**) #1

declare dso_local i32 @acpi_bus_power_manageable(i64) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_bus_set_power(i64, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @IoRegisterDeviceInterface(i32, i32*, i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @strstr(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IoSetDeviceInterfaceState(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @PoSetPowerState(i32, i32, i8*) #1

declare dso_local i32 @SET_NEW_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8, i32) #1

declare dso_local i32 @RESTORE_PREVIOUS_PNP_STATE(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8) #1

declare dso_local i32 @Bus_PDO_QueryDeviceCaps(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryDeviceId(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @DbgDeviceRelationString(i32) #1

declare dso_local i32 @Bus_PDO_QueryDeviceRelations(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryDeviceText(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryResources(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryResourceRequirements(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryBusInformation(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Bus_PDO_QueryInterface(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_44__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
