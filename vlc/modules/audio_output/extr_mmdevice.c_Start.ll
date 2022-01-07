; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__*, i32, i32*, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mmdevice-passthrough\00", align 1
@ActivateDevice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mmdevice-backend\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"aout stream\00", align 1
@aout_stream_Start = common dso_local global i32 0, align 4
@AUDCLNT_E_ALREADY_INITIALIZED = common dso_local global i64 0, align 8
@AUDCLNT_E_DEVICE_INVALIDATED = common dso_local global i64 0, align 8
@STGM_READ = common dso_local global i32 0, align 4
@PKEY_AudioEndpoint_FormFactor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(%struct.TYPE_23__* %0, i32* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_26__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @AOUT_FMT_SPDIF(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @AOUT_FMT_HDMI(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26, %2
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = call i32 @var_InheritInteger(%struct.TYPE_23__* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  switch i32 %31, label %39 [
    i32 130, label %32
    i32 129, label %33
    i32 128, label %38
  ]

32:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %172

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %172

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %29, %37
  br label %39

39:                                               ; preds = %29, %38
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = call %struct.TYPE_25__* @vlc_object_create(%struct.TYPE_23__* %41, i32 16)
  store %struct.TYPE_25__* %42, %struct.TYPE_25__** %9, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %44 = icmp eq %struct.TYPE_25__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %172

49:                                               ; preds = %40
  %50 = load i32, i32* @ActivateDevice, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = call i32 (...) @EnterMTA()
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  %57 = call i32 @EnterCriticalSection(i32* %56)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = call i32 @DeviceRestartLocked(%struct.TYPE_23__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62, %49
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66, %62
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = call i32 @LeaveCriticalSection(i32* %73)
  %75 = call i32 (...) @LeaveMTA()
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %77 = call i32 @vlc_object_delete(%struct.TYPE_25__* %76)
  store i32 -1, i32* %3, align 4
  br label %172

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %114, %78
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = call i8* @var_InheritString(%struct.TYPE_23__* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %81, i8** %11, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @aout_stream_Start, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32* @vlc_module_load(%struct.TYPE_25__* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 0, i32 %90, %struct.TYPE_25__* %91, i32* %92, i64* %12)
  store i32* %93, i32** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @free(i8* %94)
  store i32 -1, i32* %13, align 4
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @AUDCLNT_E_ALREADY_INITIALIZED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %79
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = call i32 @DeviceRestartLocked(%struct.TYPE_23__* %100)
  store i32 %101, i32* %13, align 4
  br label %110

102:                                              ; preds = %79
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @AUDCLNT_E_DEVICE_INVALIDATED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = call i32 @DeviceSelectLocked(%struct.TYPE_23__* %107, i32* null)
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %102
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %115

114:                                              ; preds = %110
  br label %79

115:                                              ; preds = %113
  %116 = load i32*, i32** %10, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %147

118:                                              ; preds = %115
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @STGM_READ, align 4
  %123 = call i64 @IMMDevice_OpenPropertyStore(i32* %121, i32 %122, i32** %14)
  store i64 %123, i64* %15, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @SUCCEEDED(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %118
  %128 = call i32 @PropVariantInit(%struct.TYPE_26__* %16)
  %129 = load i32*, i32** %14, align 8
  %130 = call i64 @IPropertyStore_GetValue(i32* %129, i32* @PKEY_AudioEndpoint_FormFactor, %struct.TYPE_26__* %16)
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %15, align 8
  %132 = call i64 @SUCCEEDED(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %141 [
    i32 132, label %137
    i32 131, label %137
  ]

137:                                              ; preds = %134, %134
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %134, %137
  %142 = call i32 @PropVariantClear(%struct.TYPE_26__* %16)
  br label %143

143:                                              ; preds = %141, %127
  %144 = load i32*, i32** %14, align 8
  %145 = call i32 @IPropertyStore_Release(i32* %144)
  br label %146

146:                                              ; preds = %143, %118
  br label %147

147:                                              ; preds = %146, %115
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  %150 = call i32 @LeaveCriticalSection(i32* %149)
  %151 = call i32 (...) @LeaveMTA()
  %152 = load i32*, i32** %10, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %156 = call i32 @vlc_object_delete(%struct.TYPE_25__* %155)
  store i32 -1, i32* %3, align 4
  br label %172

157:                                              ; preds = %147
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = icmp eq %struct.TYPE_25__* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  store %struct.TYPE_25__* %164, %struct.TYPE_25__** %166, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @aout_GainRequest(%struct.TYPE_23__* %167, i32 %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %157, %154, %71, %48, %36, %32
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @AOUT_FMT_SPDIF(i32*) #1

declare dso_local i32 @AOUT_FMT_HDMI(i32*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_23__*, i8*) #1

declare dso_local %struct.TYPE_25__* @vlc_object_create(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EnterMTA(...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @DeviceRestartLocked(%struct.TYPE_23__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @LeaveMTA(...) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_25__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_23__*, i8*) #1

declare dso_local i32* @vlc_module_load(%struct.TYPE_25__*, i8*, i8*, i32, i32, %struct.TYPE_25__*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DeviceSelectLocked(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @IMMDevice_OpenPropertyStore(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_26__*) #1

declare dso_local i64 @IPropertyStore_GetValue(i32*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_26__*) #1

declare dso_local i32 @IPropertyStore_Release(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @aout_GainRequest(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
