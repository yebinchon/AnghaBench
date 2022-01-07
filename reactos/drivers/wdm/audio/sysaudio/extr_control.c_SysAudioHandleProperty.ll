; ModuleID = '/home/carl/AnghaBench/reactos/drivers/wdm/audio/sysaudio/extr_control.c_SysAudioHandleProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/wdm/audio/sysaudio/extr_control.c_SysAudioHandleProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_37__ = type { i64 }

@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@KSPROPSETID_Pin = common dso_local global i32 0, align 4
@KSPROPSETID_Topology = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@IOCTL_KS_PROPERTY = common dso_local global i32 0, align 4
@KSPROPSETID_Sysaudio = common dso_local global i32 0, align 4
@KSPROPERTY_SYSAUDIO_DEVICE_INTERFACE_NAME = common dso_local global i64 0, align 8
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@KSPROPERTY_SYSAUDIO_COMPONENT_ID = common dso_local global i64 0, align 8
@KSPROPSETID_General = common dso_local global i32 0, align 4
@KSPROPERTY_GENERAL_COMPONENTID = common dso_local global i32 0, align 4
@KSPROPERTY_TYPE_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"KsSynchronousIoControlDevice failed with %x for KSPROPERTY_GENERAL_COMPONENTID\0A\00", align 1
@KSPROPERTY_SYSAUDIO_DEVICE_COUNT = common dso_local global i64 0, align 8
@KSPROPERTY_SYSAUDIO_DEVICE_INSTANCE = common dso_local global i64 0, align 8
@KSPROPERTY_TYPE_SET = common dso_local global i32 0, align 4
@KSPROPERTY_SYSAUDIO_INSTANCE_INFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Unhandled property Set |%S| Id %u Flags %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SysAudioHandleProperty(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_34__, align 4
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %19 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %21 = call %struct.TYPE_28__* @IoGetCurrentIrpStackLocation(%struct.TYPE_27__* %20)
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %6, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 12
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %32 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %30, i32 %31, i32 12)
  store i32 %32, i32* %3, align 4
  br label %415

33:                                               ; preds = %2
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %39, %struct.TYPE_38__** %11, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %43, %struct.TYPE_36__** %12, align 8
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 2
  %46 = call i64 @IsEqualGUIDAligned(i32* %45, i32* @KSPROPSETID_Pin)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %52 = call i32 @HandleSysAudioFilterPinProperties(%struct.TYPE_27__* %49, %struct.TYPE_38__* %50, %struct.TYPE_36__* %51)
  store i32 %52, i32* %3, align 4
  br label %415

53:                                               ; preds = %33
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 2
  %56 = call i64 @IsEqualGUIDAligned(i32* %55, i32* @KSPROPSETID_Topology)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %116

58:                                               ; preds = %53
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %69 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %67, i32 %68, i32 4)
  store i32 %69, i32* %3, align 4
  br label %415

70:                                               ; preds = %58
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %76, %struct.TYPE_37__** %17, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.TYPE_39__* @GetListEntry(i32* %78, i64 %81)
  store %struct.TYPE_39__* %82, %struct.TYPE_39__** %13, align 8
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %84 = icmp ne %struct.TYPE_39__* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @KernelMode, align 4
  %91 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @KsSynchronousIoControlDevice(i32 %89, i32 %90, i32 %91, i32* %97, i32 %102, i32* %105, i32 %110, i32* %15)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %112, i32 %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %415

116:                                              ; preds = %53
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %117, i32 0, i32 2
  %119 = call i64 @IsEqualGUIDAligned(i32* %118, i32* @KSPROPSETID_Sysaudio)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %396

121:                                              ; preds = %116
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @KSPROPERTY_SYSAUDIO_DEVICE_INTERFACE_NAME, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %208

127:                                              ; preds = %121
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %133, 16
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %137 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  %138 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %136, i32 %137, i32 16)
  store i32 %138, i32* %3, align 4
  br label %415

139:                                              ; preds = %127
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i64 1
  %142 = bitcast %struct.TYPE_38__* %141 to i64*
  store i64* %142, i64** %10, align 8
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %10, align 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp sle i64 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %151 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %152 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %150, i32 %151, i32 0)
  store i32 %152, i32* %3, align 4
  br label %415

153:                                              ; preds = %139
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 1
  %156 = load i64*, i64** %10, align 8
  %157 = load i64, i64* %156, align 8
  %158 = call %struct.TYPE_39__* @GetListEntry(i32* %155, i64 %157)
  store %struct.TYPE_39__* %158, %struct.TYPE_39__** %13, align 8
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %160 = icmp ne %struct.TYPE_39__* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = add i64 %167, 4
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %15, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %153
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %179 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %178, i32 %179, i32 %180)
  store i32 %181, i32* %3, align 4
  br label %415

182:                                              ; preds = %153
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %18, align 8
  %186 = load i32*, i32** %18, align 8
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @RtlMoveMemory(i32* %186, i32* %190, i32 %194)
  %196 = load i32*, i32** %18, align 8
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = udiv i64 %201, 4
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  store i32 0, i32* %203, align 4
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %205 = load i32, i32* @STATUS_SUCCESS, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %204, i32 %205, i32 %206)
  store i32 %207, i32* %3, align 4
  br label %415

208:                                              ; preds = %121
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @KSPROPERTY_SYSAUDIO_COMPONENT_ID, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %292

214:                                              ; preds = %208
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = icmp ult i64 %220, 16
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %224 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %225 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %223, i32 %224, i32 16)
  store i32 %225, i32* %3, align 4
  br label %415

226:                                              ; preds = %214
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = icmp ult i64 %232, 4
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %236 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %237 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %235, i32 %236, i32 4)
  store i32 %237, i32* %3, align 4
  br label %415

238:                                              ; preds = %226
  %239 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %239, i64 1
  %241 = bitcast %struct.TYPE_38__* %240 to i64*
  store i64* %241, i64** %10, align 8
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** %10, align 8
  %246 = load i64, i64* %245, align 8
  %247 = icmp sle i64 %244, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %238
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %250 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %251 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %249, i32 %250, i32 0)
  store i32 %251, i32* %3, align 4
  br label %415

252:                                              ; preds = %238
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 1
  %255 = load i64*, i64** %10, align 8
  %256 = load i64, i64* %255, align 8
  %257 = call %struct.TYPE_39__* @GetListEntry(i32* %254, i64 %256)
  store %struct.TYPE_39__* %257, %struct.TYPE_39__** %13, align 8
  %258 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %259 = icmp ne %struct.TYPE_39__* %258, null
  %260 = zext i1 %259 to i32
  %261 = call i32 @ASSERT(i32 %260)
  %262 = load i32, i32* @KSPROPSETID_General, align 4
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 2
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* @KSPROPERTY_GENERAL_COMPONENTID, align 4
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* @KSPROPERTY_TYPE_GET, align 4
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  store i32 %266, i32* %267, align 4
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @KernelMode, align 4
  %272 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %273 = bitcast %struct.TYPE_30__* %8 to i32*
  %274 = call i32 @KsSynchronousIoControlDevice(i32 %270, i32 %271, i32 %272, i32* %273, i32 12, i32* %9, i32 4, i32* %15)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @NT_SUCCESS(i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %252
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @DPRINT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %279)
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %281, i32 %282, i32 0)
  store i32 %283, i32* %3, align 4
  br label %415

284:                                              ; preds = %252
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @RtlMoveMemory(i32* %287, i32* %9, i32 4)
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %290 = load i32, i32* @STATUS_SUCCESS, align 4
  %291 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %289, i32 %290, i32 4)
  store i32 %291, i32* %3, align 4
  br label %415

292:                                              ; preds = %208
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @KSPROPERTY_SYSAUDIO_DEVICE_COUNT, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %321

298:                                              ; preds = %292
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp ult i64 %304, 4
  br i1 %305, label %306, label %310

306:                                              ; preds = %298
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %308 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %309 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %307, i32 %308, i32 4)
  store i32 %309, i32* %3, align 4
  br label %415

310:                                              ; preds = %298
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = bitcast i32* %316 to i64*
  store i64 %313, i64* %317, align 8
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %319 = load i32, i32* @STATUS_SUCCESS, align 4
  %320 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %318, i32 %319, i32 4)
  store i32 %320, i32* %3, align 4
  br label %415

321:                                              ; preds = %292
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @KSPROPERTY_SYSAUDIO_DEVICE_INSTANCE, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %357

327:                                              ; preds = %321
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = icmp ult i64 %333, 4
  br i1 %334, label %335, label %339

335:                                              ; preds = %327
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %337 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %338 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %336, i32 %337, i32 4)
  store i32 %338, i32* %3, align 4
  br label %415

339:                                              ; preds = %327
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @KSPROPERTY_TYPE_SET, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %339
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = bitcast i32* %349 to i64*
  store i64* %350, i64** %10, align 8
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %352 = load i64*, i64** %10, align 8
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %355 = call i32 @SysAudioOpenVirtualDevice(%struct.TYPE_27__* %351, i64 %353, %struct.TYPE_36__* %354)
  store i32 %355, i32* %3, align 4
  br label %415

356:                                              ; preds = %339
  br label %393

357:                                              ; preds = %321
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @KSPROPERTY_SYSAUDIO_INSTANCE_INFO, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %392

363:                                              ; preds = %357
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = sext i32 %368 to i64
  %370 = icmp ult i64 %369, 4
  br i1 %370, label %371, label %375

371:                                              ; preds = %363
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %373 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %374 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %372, i32 %373, i32 4)
  store i32 %374, i32* %3, align 4
  br label %415

375:                                              ; preds = %363
  %376 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %377 = bitcast %struct.TYPE_38__* %376 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %377, %struct.TYPE_35__** %14, align 8
  %378 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @KSPROPERTY_TYPE_SET, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %375
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %386 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %390 = call i32 @SysAudioOpenVirtualDevice(%struct.TYPE_27__* %385, i64 %388, %struct.TYPE_36__* %389)
  store i32 %390, i32* %3, align 4
  br label %415

391:                                              ; preds = %375
  br label %392

392:                                              ; preds = %391, %357
  br label %393

393:                                              ; preds = %392, %356
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395, %116
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  %399 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %399, i32 0, i32 2
  %401 = call i32 @RtlStringFromGUID(i32* %400, %struct.TYPE_34__* %16)
  %402 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %403, i64 %406, i32 %409)
  %411 = call i32 @RtlFreeUnicodeString(%struct.TYPE_34__* %16)
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %413 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  %414 = call i32 @SetIrpIoStatus(%struct.TYPE_27__* %412, i32 %413, i32 0)
  store i32 %414, i32* %3, align 4
  br label %415

415:                                              ; preds = %398, %384, %371, %346, %335, %310, %306, %284, %278, %248, %234, %222, %182, %177, %149, %135, %70, %66, %48, %29
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local %struct.TYPE_28__* @IoGetCurrentIrpStackLocation(%struct.TYPE_27__*) #1

declare dso_local i32 @SetIrpIoStatus(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @IsEqualGUIDAligned(i32*, i32*) #1

declare dso_local i32 @HandleSysAudioFilterPinProperties(%struct.TYPE_27__*, %struct.TYPE_38__*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_39__* @GetListEntry(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KsSynchronousIoControlDevice(i32, i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @SysAudioOpenVirtualDevice(%struct.TYPE_27__*, i64, %struct.TYPE_36__*) #1

declare dso_local i32 @RtlStringFromGUID(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @DPRINT1(i8*, i32, i64, i32) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
