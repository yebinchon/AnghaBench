; ModuleID = '/home/carl/AnghaBench/reactos/drivers/wdm/audio/backpln/audio_test/extr_audio_test.c_TestKs.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/wdm/audio/backpln/audio_test/extr_audio_test.c_TestKs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, i32, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_36__ = type { i32, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_31__, i32*, i64, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }

@CategoryGuid = common dso_local global i32 0, align 4
@DIGCF_DEVICEINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DeviceHandle %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SetupDiEnumDeviceInterfaces %u Error %ld\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i32] [i32 83, i32 101, i32 116, i32 117, i32 112, i32 68, i32 105, i32 71, i32 101, i32 116, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 73, i32 110, i32 116, i32 101, i32 114, i32 102, i32 97, i32 99, i32 101, i32 68, i32 101, i32 116, i32 97, i32 105, i32 108, i32 32, i32 37, i32 117, i32 32, i32 80, i32 97, i32 116, i32 104, i32 32, i32 68, i32 101, i32 116, i32 97, i32 105, i32 108, i32 68, i32 97, i32 116, i32 97, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Handle %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Length %ld KSPIN %Iu DATAFORMAT %Iu\0A\00", align 1
@KSINTERFACESETID_Standard = common dso_local global i32 0, align 4
@KSINTERFACE_STANDARD_STREAMING = common dso_local global i32 0, align 4
@KSMEDIUMSETID_Standard = common dso_local global i32 0, align 4
@KSMEDIUM_TYPE_ANYINSTANCE = common dso_local global i32 0, align 4
@KSPRIORITY_NORMAL = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_ATTRIBUTES = common dso_local global i32 0, align 4
@KSDATAFORMAT_TYPE_AUDIO = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SPECIFIER_WAVEFORMATEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"PinHandle %p Status %lx\0A\00", align 1
@_2pi = common dso_local global double 0.000000e+00, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@KSPROPSETID_Connection = common dso_local global i32 0, align 4
@KSPROPERTY_CONNECTION_STATE = common dso_local global i32 0, align 4
@KSPROPERTY_TYPE_SET = common dso_local global i32 0, align 4
@KSSTATE_RUN = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@IOCTL_KS_PROPERTY = common dso_local global i32 0, align 4
@IOCTL_KS_WRITE_STREAM = common dso_local global i32 0, align 4
@KSSTATE_STOP = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestKs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_35__, align 8
  %3 = alloca %struct.TYPE_34__, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %19 = call i32 @SetupDiGetClassDevs(i32* @CategoryGuid, i32* null, i32* null, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %2, i32 0, i32 0
  store i32 16, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %2, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SetupDiEnumDeviceInterfaces(i32 %24, i32* null, i32* @CategoryGuid, i32 1, %struct.TYPE_35__* %2)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 4, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @HeapAlloc(i32 %34, i32 0, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %37, %struct.TYPE_36__** %4, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %3, i32 0, i32 0
  store i32 16, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %3, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @SetupDiGetDeviceInterfaceDetail(i32 %42, %struct.TYPE_35__* %2, %struct.TYPE_36__* %43, i32 %44, i32* null, %struct.TYPE_34__* %3)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @wprintf(i8* bitcast ([55 x i32]* @.str.2 to i8*), i32 %46, i8* %51)
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @GENERIC_READ, align 4
  %57 = load i32, i32* @GENERIC_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @OPEN_EXISTING, align 4
  %60 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %61 = call i32 @CreateFile(i32* %55, i32 %58, i32 0, i32* null, i32 %59, i32 %60, i32* null)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @SetupDiDestroyDeviceInfoList(i32 %64)
  store i32 8, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %66, i64 4, i64 4)
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @HeapAlloc(i32 %68, i32 0, i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %71, %struct.TYPE_26__** %7, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i64 1
  %74 = bitcast %struct.TYPE_26__* %73 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %6, align 8
  %75 = load i32, i32* @KSINTERFACESETID_Standard, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @KSINTERFACE_STANDARD_STREAMING, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @KSMEDIUMSETID_Standard, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @KSMEDIUM_TYPE_ANYINSTANCE, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* @KSPRIORITY_NORMAL, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 6
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 1
  store i32 48000, i32* %117, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 2
  store i32 4, i32* %120, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 3
  store i32 192000, i32* %123, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 4
  store i32 16, i32* %126, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  store i32 8, i32* %132, align 8
  %133 = load i32, i32* @KSDATAFORMAT_ATTRIBUTES, align 4
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* @KSDATAFORMAT_TYPE_AUDIO, align 4
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @KSDATAFORMAT_SUBTYPE_PCM, align 4
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @KSDATAFORMAT_SPECIFIER_WAVEFORMATEX, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  store i32 4, i32* %154, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = load i32, i32* @GENERIC_WRITE, align 4
  %158 = call i32 @KsCreatePin(i32 %155, %struct.TYPE_26__* %156, i32 %157, i32* %13)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %160)
  store i32 192000, i32* %11, align 4
  %162 = call i32 (...) @GetProcessHeap()
  %163 = load i32, i32* %11, align 4
  %164 = call i64 @HeapAlloc(i32 %162, i32 0, i32 %163)
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** %14, align 8
  br label %166

166:                                              ; preds = %171, %0
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sdiv i32 %168, 2
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %166
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sitofp i32 %173 to double
  %175 = fmul double 5.000000e-01, %174
  %176 = fmul double %175, 5.000000e+02
  %177 = load double, double* @_2pi, align 8
  %178 = fmul double %176, %177
  %179 = fdiv double %178, 4.800000e+04
  %180 = call i32 @sin(double %179)
  %181 = mul nsw i32 32767, %180
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = sitofp i32 %188 to double
  %190 = fmul double 5.000000e-01, %189
  %191 = fsub double %190, 2.000000e+00
  %192 = fmul double %191, 5.000000e+02
  %193 = load double, double* @_2pi, align 8
  %194 = fmul double %192, %193
  %195 = fdiv double %194, 4.800000e+04
  %196 = call i32 @sin(double %195)
  %197 = mul nsw i32 32767, %196
  %198 = load i32*, i32** %14, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %166

204:                                              ; preds = %166
  %205 = call i32 (...) @GetProcessHeap()
  %206 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %207 = call i64 @HeapAlloc(i32 %205, i32 %206, i32 4)
  %208 = inttoptr i64 %207 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %208, %struct.TYPE_24__** %8, align 8
  %209 = load i32*, i32** %14, align 8
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  store i32* %209, i32** %211, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  store i32 4, i32* %219, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  store i32 1, i32* %225, align 4
  %226 = call i32 (...) @GetProcessHeap()
  %227 = call i64 @HeapAlloc(i32 %226, i32 0, i32 4)
  %228 = inttoptr i64 %227 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %228, %struct.TYPE_25__** %9, align 8
  %229 = load i32, i32* @KSPROPSETID_Connection, align 4
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @KSPROPERTY_CONNECTION_STATE, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @KSPROPERTY_TYPE_SET, align 4
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  %238 = bitcast %struct.TYPE_24__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 bitcast (%struct.TYPE_24__* @KSSTATE_RUN to i8*), i64 32, i1 false)
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %242 = call i32 @DeviceIoControl(i32 %239, i32 %240, %struct.TYPE_25__* %241, i32 4, %struct.TYPE_24__* %10, i32 32, i32* %11, i32* null)
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @IOCTL_KS_WRITE_STREAM, align 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @DeviceIoControl(i32 %243, i32 %244, %struct.TYPE_25__* null, i32 0, %struct.TYPE_24__* %245, i32 %248, i32* %11, i32* null)
  %250 = bitcast %struct.TYPE_24__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 bitcast (%struct.TYPE_24__* @KSSTATE_STOP to i8*), i64 32, i1 false)
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %254 = call i32 @DeviceIoControl(i32 %251, i32 %252, %struct.TYPE_25__* %253, i32 4, %struct.TYPE_24__* %10, i32 32, i32* %11, i32* null)
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @CloseHandle(i32 %255)
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @CloseHandle(i32 %257)
  %259 = load i32, i32* %1, align 4
  ret i32 %259
}

declare dso_local i32 @SetupDiGetClassDevs(i32*, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @SetupDiEnumDeviceInterfaces(i32, i32*, i32*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetupDiGetDeviceInterfaceDetail(i32, %struct.TYPE_35__*, %struct.TYPE_36__*, i32, i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @wprintf(i8*, i32, i8*) #1

declare dso_local i32 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32) #1

declare dso_local i32 @KsCreatePin(i32, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @sin(double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DeviceIoControl(i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
