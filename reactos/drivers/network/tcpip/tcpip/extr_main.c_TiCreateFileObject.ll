; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_main.c_TiCreateFileObject.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_main.c_TiCreateFileObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_36__, %struct.TYPE_29__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_33__*, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i8*, i32, %struct.TYPE_24__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_37__ = type { %struct.TYPE_35__, %struct.TYPE_26__* }
%struct.TYPE_35__ = type { i32, i32, i32 }

@DEBUG_IRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Called. DeviceObject is at (0x%X), IRP is at (0x%X).\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TRANS_CONTEXT_TAG = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Insufficient resources.\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TDI_TRANSPORT_ADDRESS_LENGTH = common dso_local global i64 0, align 8
@TdiTransportAddress = common dso_local global i32 0, align 4
@TDI_ADDRESS_LENGTH_IP = common dso_local global i64 0, align 8
@TDI_ADDRESS_TYPE_IP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Parameters are invalid:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AddressCount: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"AddressLength: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"AddressType: %u\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TCPDeviceObject = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@UDPDeviceObject = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPDeviceObject = common dso_local global i64 0, align 8
@IPPROTO_RAW = common dso_local global i32 0, align 4
@RawIPDeviceObject = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Raw IP protocol number is invalid.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid device object at (0x%X).\0A\00", align 1
@TDI_TRANSPORT_ADDRESS_FILE = common dso_local global i64 0, align 8
@TDI_CONNECTION_CONTEXT_LENGTH = common dso_local global i64 0, align 8
@TdiConnectionContext = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Parameters are invalid.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bad device object.\0A\00", align 1
@TDI_CONNECTION_FILE = common dso_local global i64 0, align 8
@TDI_CONTROL_CHANNEL_FILE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Leaving. Status = (0x%X).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TiCreateFileObject(i64 %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_37__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %15 = load i32, i32* @DEBUG_IRP, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = bitcast %struct.TYPE_26__* %17 to i8*
  %19 = call i32 @TI_DbgPrint(i32 %15, i8* %18)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %6, align 8
  %24 = load i32, i32* @NonPagedPool, align 4
  %25 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %26 = call %struct.TYPE_24__* @ExAllocatePoolWithTag(i32 %24, i32 4, i32 %25)
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %7, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %28 = icmp ne %struct.TYPE_24__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @MIN_TRACE, align 4
  %31 = call i32 @TI_DbgPrint(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %32, i32* %3, align 4
  br label %327

33:                                               ; preds = %2
  %34 = load i32, i32* @FALSE, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = call %struct.TYPE_27__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__* %37)
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %8, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 2
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %43, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 1
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %45, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %47 = icmp ne %struct.TYPE_28__* %46, null
  br i1 %47, label %48, label %218

48:                                               ; preds = %33
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TDI_TRANSPORT_ADDRESS_LENGTH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %218

54:                                               ; preds = %48
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load i32, i32* @TdiTransportAddress, align 4
  %58 = load i64, i64* @TDI_TRANSPORT_ADDRESS_LENGTH, align 8
  %59 = call i64 @RtlCompareMemory(i64* %56, i32 %57, i64 %58)
  %60 = load i64, i64* @TDI_TRANSPORT_ADDRESS_LENGTH, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %218

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = add nsw i64 %69, 1
  %71 = inttoptr i64 %70 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %9, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %100, label %77

77:                                               ; preds = %62
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %100, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TDI_ADDRESS_LENGTH_IP, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TDI_ADDRESS_TYPE_IP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %91, %82, %77, %62
  %101 = load i32, i32* @MIN_TRACE, align 4
  %102 = call i32 @TI_DbgPrint(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @MIN_TRACE, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @TI_DbgPrint(i32 %103, i8* %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %133

114:                                              ; preds = %100
  %115 = load i32, i32* @MIN_TRACE, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @TI_DbgPrint(i32 %115, i8* %122)
  %124 = load i32, i32* @MIN_TRACE, align 4
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @TI_DbgPrint(i32 %124, i8* %131)
  br label %133

133:                                              ; preds = %114, %100
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %135 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %136 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %134, i32 %135)
  %137 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %137, i32* %3, align 4
  br label %327

138:                                              ; preds = %91
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @TCPDeviceObject, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %143, i32* %13, align 4
  br label %189

144:                                              ; preds = %138
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @UDPDeviceObject, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %149, i32* %13, align 4
  br label %188

150:                                              ; preds = %144
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* @IPDeviceObject, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @IPPROTO_RAW, align 4
  store i32 %155, i32* %13, align 4
  br label %187

156:                                              ; preds = %150
  %157 = load i64, i64* %4, align 8
  %158 = load i64, i64* @RawIPDeviceObject, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 1
  %165 = call i32 @TiGetProtocolNumber(i32* %164, i32* %13)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i64 @NT_SUCCESS(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* @MIN_TRACE, align 4
  %171 = call i32 @TI_DbgPrint(i32 %170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %173 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %174 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %172, i32 %173)
  %175 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %175, i32* %3, align 4
  br label %327

176:                                              ; preds = %160
  br label %186

177:                                              ; preds = %156
  %178 = load i32, i32* @MIN_TRACE, align 4
  %179 = load i64, i64* %4, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 @TI_DbgPrint(i32 %178, i8* %180)
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %183 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %184 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %182, i32 %183)
  %185 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %185, i32* %3, align 4
  br label %327

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186, %154
  br label %188

188:                                              ; preds = %187, %148
  br label %189

189:                                              ; preds = %188, %142
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @FileOpenAddress(%struct.TYPE_37__* %10, %struct.TYPE_25__* %197, i32 %198, i32 %199, i32* null)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i64 @NT_SUCCESS(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %189
  %205 = load i64, i64* @TDI_TRANSPORT_ADDRESS_FILE, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %209, i32 0, i32 0
  store i8* %206, i8** %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 2
  store i32 %213, i32* %216, align 4
  br label %217

217:                                              ; preds = %204, %189
  br label %308

218:                                              ; preds = %54, %48, %33
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %220 = icmp ne %struct.TYPE_28__* %219, null
  br i1 %220, label %221, label %288

221:                                              ; preds = %218
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @TDI_CONNECTION_CONTEXT_LENGTH, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %288

227:                                              ; preds = %221
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 1
  %230 = load i32, i32* @TdiConnectionContext, align 4
  %231 = load i64, i64* @TDI_CONNECTION_CONTEXT_LENGTH, align 8
  %232 = call i64 @RtlCompareMemory(i64* %229, i32 %230, i64 %231)
  %233 = load i64, i64* @TDI_CONNECTION_CONTEXT_LENGTH, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %288

235:                                              ; preds = %227
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = icmp ult i64 %239, 8
  br i1 %240, label %241, label %248

241:                                              ; preds = %235
  %242 = load i32, i32* @MIN_TRACE, align 4
  %243 = call i32 @TI_DbgPrint(i32 %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %245 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %246 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %244, i32 %245)
  %247 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %247, i32* %3, align 4
  br label %327

248:                                              ; preds = %235
  %249 = load i64, i64* %4, align 8
  %250 = load i64, i64* @TCPDeviceObject, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %248
  %253 = load i32, i32* @MIN_TRACE, align 4
  %254 = call i32 @TI_DbgPrint(i32 %253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %256 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %257 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %255, i32 %256)
  %258 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %258, i32* %3, align 4
  br label %327

259:                                              ; preds = %248
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = inttoptr i64 %266 to i8**
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %11, align 8
  %269 = load i8*, i8** %11, align 8
  %270 = call i32 @FileOpenConnection(%struct.TYPE_37__* %10, i8* %269)
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %12, align 4
  %272 = call i64 @NT_SUCCESS(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %259
  %275 = load i64, i64* @TDI_CONNECTION_FILE, align 8
  %276 = inttoptr i64 %275 to i8*
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  store i8* %276, i8** %280, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 1
  store i32 %283, i32* %286, align 4
  br label %287

287:                                              ; preds = %274, %259
  br label %307

288:                                              ; preds = %227, %221, %218
  %289 = call i32 @FileOpenControlChannel(%struct.TYPE_37__* %10)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = call i64 @NT_SUCCESS(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = load i64, i64* @TDI_CONTROL_CHANNEL_FILE, align 8
  %295 = inttoptr i64 %294 to i8*
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 0
  store i8* %295, i8** %299, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 0
  store i32 %302, i32* %305, align 4
  br label %306

306:                                              ; preds = %293, %288
  br label %307

307:                                              ; preds = %306, %287
  br label %308

308:                                              ; preds = %307, %217
  %309 = load i32, i32* %12, align 4
  %310 = call i64 @NT_SUCCESS(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %314 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %315 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %313, i32 %314)
  br label %316

316:                                              ; preds = %312, %308
  %317 = load i32, i32* @DEBUG_IRP, align 4
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = call i32 @TI_DbgPrint(i32 %317, i8* %320)
  %322 = load i32, i32* %12, align 4
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 0
  store i32 %322, i32* %325, align 8
  %326 = load i32, i32* %12, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %316, %252, %241, %177, %169, %133, %29
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_24__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__*) #1

declare dso_local i64 @RtlCompareMemory(i64*, i32, i64) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @TiGetProtocolNumber(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @FileOpenAddress(%struct.TYPE_37__*, %struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @FileOpenConnection(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @FileOpenControlChannel(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
