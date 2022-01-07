; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_HandleInternalDeviceControl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_HandleInternalDeviceControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { i64, i32, %struct.TYPE_41__*, i32, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_31__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__, %struct.TYPE_33__ }
%struct.TYPE_37__ = type { i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_40__ = type { i32, i32* }

@IOCTL_INTERNAL_USB_SUBMIT_URB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IOCTL_INTERNAL_USB_SUBMIT_URB Function %x\0A\00", align 1
@URB_FUNCTION_SELECT_CONFIGURATION = common dso_local global i64 0, align 8
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@URB_FUNCTION_GET_DESCRIPTOR_FROM_DEVICE = common dso_local global i64 0, align 8
@USB_DEVICE_DESCRIPTOR_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"[USBCCGP] invalid device descriptor size %lu\0A\00", align 1
@STATUS_INVALID_BUFFER_SIZE = common dso_local global i8* null, align 8
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@USB_CONFIGURATION_DESCRIPTOR_TYPE = common dso_local global i64 0, align 8
@USB_STRING_DESCRIPTOR_TYPE = common dso_local global i64 0, align 8
@STATUS_DEVICE_DATA_ERROR = common dso_local global i8* null, align 8
@IOCTL_INTERNAL_USB_GET_PORT_STATUS = common dso_local global i32 0, align 4
@IOCTL_INTERNAL_USB_RESET_PORT = common dso_local global i32 0, align 4
@IOCTL_INTERNAL_USB_CYCLE_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"IOCTL %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"InputBufferLength %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"OutputBufferLength %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Type3InputBuffer %p\0A\00", align 1
@FALSE = common dso_local global %struct.TYPE_41__* null, align 8
@STATUS_NOT_IMPLEMENTED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PDO_HandleInternalDeviceControl(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %12 = call %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__* %11)
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %6, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %7, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IOCTL_INTERNAL_USB_SUBMIT_URB, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %221

24:                                               ; preds = %2
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %30, %struct.TYPE_41__** %9, align 8
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %32 = call i32 @ASSERT(%struct.TYPE_41__* %31)
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @URB_FUNCTION_SELECT_CONFIGURATION, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %24
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %47 = call i8* @USBCCGP_PDOSelectConfiguration(%struct.TYPE_32__* %45, %struct.TYPE_30__* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = load i32, i32* @IO_NO_INCREMENT, align 4
  %54 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %52, i32 %53)
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %3, align 8
  br label %310

56:                                               ; preds = %24
  %57 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @URB_FUNCTION_GET_DESCRIPTOR_FROM_DEVICE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %210

63:                                               ; preds = %56
  %64 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @USB_DEVICE_DESCRIPTOR_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %63
  %71 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %94

77:                                               ; preds = %70
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DPRINT1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 1
  store i32 4, i32* %85, align 8
  %86 = load i8*, i8** @STATUS_INVALID_BUFFER_SIZE, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %91 = load i32, i32* @IO_NO_INCREMENT, align 4
  %92 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %90, i32 %91)
  %93 = load i8*, i8** @STATUS_INVALID_BUFFER_SIZE, align 8
  store i8* %93, i8** %3, align 8
  br label %310

94:                                               ; preds = %70
  %95 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_41__*, %struct.TYPE_41__** %97, align 8
  %99 = call i32 @ASSERT(%struct.TYPE_41__* %98)
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %102, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 2
  %106 = call i32 @RtlCopyMemory(%struct.TYPE_41__* %103, i32* %105, i32 4)
  %107 = load i8*, i8** @STATUS_SUCCESS, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %112 = load i32, i32* @IO_NO_INCREMENT, align 4
  %113 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %111, i32 %112)
  %114 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %114, i8** %3, align 8
  br label %310

115:                                              ; preds = %63
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @USB_CONFIGURATION_DESCRIPTOR_TYPE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %125 = call i8* @USBCCGP_BuildConfigurationDescriptor(%struct.TYPE_32__* %123, %struct.TYPE_30__* %124)
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %131 = load i32, i32* @IO_NO_INCREMENT, align 4
  %132 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %130, i32 %131)
  %133 = load i8*, i8** %8, align 8
  store i8* %133, i8** %3, align 8
  br label %310

134:                                              ; preds = %115
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @USB_STRING_DESCRIPTOR_TYPE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %207

141:                                              ; preds = %134
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_41__*, %struct.TYPE_41__** %144, align 8
  %146 = call i32 @ASSERT(%struct.TYPE_41__* %145)
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* @USB_STRING_DESCRIPTOR_TYPE, align 8
  %153 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = bitcast %struct.TYPE_40__** %10 to i32*
  %166 = call i8* @USBCCGP_GetDescriptor(i32 %151, i64 %152, i32 %156, i32 %160, i32 %164, i32* %165)
  store i8* %166, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i64 @NT_SUCCESS(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %141
  %171 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %177 = call i32 @FreeItem(%struct.TYPE_40__* %176)
  %178 = load i8*, i8** @STATUS_DEVICE_DATA_ERROR, align 8
  store i8* %178, i8** %8, align 8
  br label %197

179:                                              ; preds = %170
  %180 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_41__*, %struct.TYPE_41__** %182, align 8
  %184 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i32 @RtlCopyMemory(%struct.TYPE_41__* %183, i32* %186, i32 %192)
  %194 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %195 = call i32 @FreeItem(%struct.TYPE_40__* %194)
  %196 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %196, i8** %8, align 8
  br label %197

197:                                              ; preds = %179, %175
  br label %198

198:                                              ; preds = %197, %141
  %199 = load i8*, i8** %8, align 8
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %204 = load i32, i32* @IO_NO_INCREMENT, align 4
  %205 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %203, i32 %204)
  %206 = load i8*, i8** %8, align 8
  store i8* %206, i8** %3, align 8
  br label %310

207:                                              ; preds = %134
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %219

210:                                              ; preds = %56
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %212 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__* %211)
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %217 = call i8* @IoCallDriver(i32 %215, %struct.TYPE_30__* %216)
  store i8* %217, i8** %8, align 8
  %218 = load i8*, i8** %8, align 8
  store i8* %218, i8** %3, align 8
  br label %310

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219
  br label %275

221:                                              ; preds = %2
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @IOCTL_INTERNAL_USB_GET_PORT_STATUS, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %221
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %231 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__* %230)
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %236 = call i8* @IoCallDriver(i32 %234, %struct.TYPE_30__* %235)
  store i8* %236, i8** %8, align 8
  %237 = load i8*, i8** %8, align 8
  store i8* %237, i8** %3, align 8
  br label %310

238:                                              ; preds = %221
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @IOCTL_INTERNAL_USB_RESET_PORT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %238
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %248 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__* %247)
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %253 = call i8* @IoCallDriver(i32 %251, %struct.TYPE_30__* %252)
  store i8* %253, i8** %8, align 8
  %254 = load i8*, i8** %8, align 8
  store i8* %254, i8** %3, align 8
  br label %310

255:                                              ; preds = %238
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @IOCTL_INTERNAL_USB_CYCLE_PORT, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %255
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %265 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__* %264)
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %270 = call i8* @IoCallDriver(i32 %268, %struct.TYPE_30__* %269)
  store i8* %270, i8** %8, align 8
  %271 = load i8*, i8** %8, align 8
  store i8* %271, i8** %3, align 8
  br label %310

272:                                              ; preds = %255
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274, %220
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @DPRINT1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %280)
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %286)
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %292)
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %298)
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** @FALSE, align 8
  %301 = call i32 @ASSERT(%struct.TYPE_41__* %300)
  %302 = load i8*, i8** @STATUS_NOT_IMPLEMENTED, align 8
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %304, i32 0, i32 0
  store i8* %302, i8** %305, align 8
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %307 = load i32, i32* @IO_NO_INCREMENT, align 4
  %308 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %306, i32 %307)
  %309 = load i8*, i8** @STATUS_NOT_IMPLEMENTED, align 8
  store i8* %309, i8** %3, align 8
  br label %310

310:                                              ; preds = %275, %263, %246, %229, %210, %198, %122, %94, %77, %44
  %311 = load i8*, i8** %3, align 8
  ret i8* %311
}

declare dso_local %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_41__*) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i8* @USBCCGP_PDOSelectConfiguration(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_41__*, i32*, i32) #1

declare dso_local i8* @USBCCGP_BuildConfigurationDescriptor(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i8* @USBCCGP_GetDescriptor(i32, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i8*) #1

declare dso_local i32 @FreeItem(%struct.TYPE_40__*) #1

declare dso_local i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__*) #1

declare dso_local i8* @IoCallDriver(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
