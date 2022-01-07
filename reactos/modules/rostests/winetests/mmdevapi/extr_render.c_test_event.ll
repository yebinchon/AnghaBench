; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_EVENTCALLBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"CreateEvent failed\0A\00", align 1
@AUDCLNT_E_EVENTHANDLE_NOT_SET = common dso_local global i64 0, align 8
@D3D11_ERROR_4E = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"SetEventHandle failed: %08x\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"SetEventHandle returns %08x\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Wait(event) before Start gave %x\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"Wait(event) after Start gave %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Stop failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ResetEvent\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Wait(event) after Stop gave %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Reset failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Wait(event) after Reset gave %x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"SetEventHandle(NULL) returns %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Wait(NULL event) gave %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_event() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @dev, align 4
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %4 to i8**
  %9 = call i64 @IMMDevice_Activate(i32 %6, i32* @IID_IAudioClient, i32 %7, i32* null, i8** %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %178

20:                                               ; preds = %0
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @IAudioClient_GetMixFormat(i32* %21, i32** %5)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %2, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %31 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @IAudioClient_Initialize(i32* %29, i32 %30, i32 %31, i32 5000000, i32 0, i32* %32, i32* null)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @CoTaskMemFree(i32* %40)
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32* @CreateEventW(i32* null, i32 %42, i32 %43, i32* null)
  store i32* %44, i32** %1, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @IAudioClient_Start(i32* %49)
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @AUDCLNT_E_EVENTHANDLE_NOT_SET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %20
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @D3D11_ERROR_4E, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %20
  %59 = phi i1 [ true, %20 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %2, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @IAudioClient_SetEventHandle(i32* %63, i32* %64)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %2, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %1, align 8
  %74 = call i64 @IAudioClient_SetEventHandle(i32* %72, i32* %73)
  store i64 %74, i64* %2, align 8
  %75 = load i64, i64* %2, align 8
  %76 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %77 = call i64 @HRESULT_FROM_WIN32(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %58
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @E_UNEXPECTED, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %58
  %84 = phi i1 [ true, %58 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %2, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i64 @WaitForSingleObject(i32* %88, i32 40)
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @WAIT_TIMEOUT, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %3, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @IAudioClient_Start(i32* %96)
  store i64 %97, i64* %2, align 8
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %2, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i64 @WaitForSingleObject(i32* %104, i32 20)
  store i64 %105, i64* %3, align 8
  %106 = load i64, i64* %3, align 8
  %107 = load i64, i64* @WAIT_OBJECT_0, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %3, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @IAudioClient_Stop(i32* %112)
  store i64 %113, i64* %2, align 8
  %114 = load i64, i64* %2, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %2, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @ResetEvent(i32* %120)
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %123 = load i32*, i32** %1, align 8
  %124 = call i64 @WaitForSingleObject(i32* %123, i32 20)
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* @WAIT_OBJECT_0, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %3, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i64 @IAudioClient_Reset(i32* %131)
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %2, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @ResetEvent(i32* %139)
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32*, i32** %1, align 8
  %143 = call i64 @WaitForSingleObject(i32* %142, i32 120)
  store i64 %143, i64* %3, align 8
  %144 = load i64, i64* %3, align 8
  %145 = load i64, i64* @WAIT_OBJECT_0, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %3, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i64 @IAudioClient_SetEventHandle(i32* %150, i32* null)
  store i64 %151, i64* %2, align 8
  %152 = load i64, i64* %2, align 8
  %153 = load i64, i64* @E_INVALIDARG, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %2, align 8
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %1, align 8
  %159 = call i64 @WaitForSingleObject(i32* %158, i32 70)
  store i64 %159, i64* %3, align 8
  %160 = load i64, i64* %3, align 8
  %161 = load i64, i64* @WAIT_OBJECT_0, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %3, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i64 %164)
  %166 = load i32*, i32** %4, align 8
  %167 = call i64 @IAudioClient_Start(i32* %166)
  store i64 %167, i64* %2, align 8
  %168 = load i64, i64* %2, align 8
  %169 = load i64, i64* @S_OK, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %2, align 8
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %172)
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @IAudioClient_Release(i32* %174)
  %176 = load i32*, i32** %1, align 8
  %177 = call i32 @CloseHandle(i32* %176)
  br label %178

178:                                              ; preds = %83, %19
  ret void
}

declare dso_local i64 @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local i64 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i64 @IAudioClient_Start(i32*) #1

declare dso_local i64 @IAudioClient_SetEventHandle(i32*, i32*) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

declare dso_local i64 @IAudioClient_Stop(i32*) #1

declare dso_local i32 @ResetEvent(i32*) #1

declare dso_local i64 @IAudioClient_Reset(i32*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
