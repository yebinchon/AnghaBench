; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_uninitialized.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_uninitialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@AUDCLNT_E_NOT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Uninitialized GetBufferSize call returns %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Uninitialized GetStreamLatency call returns %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Uninitialized GetCurrentPadding call returns %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Uninitialized Start call returns %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Uninitialized Stop call returns %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Uninitialized Reset call returns %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Uninitialized SetEventHandle call returns %08x\0A\00", align 1
@IID_IAudioStreamVolume = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Uninitialized GetService call returns %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_uninitialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_uninitialized(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @CreateEventW(i32* null, i32 %8, i32 %9, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @IAudioClient_GetBufferSize(i32* %11, i32* %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @IAudioClient_GetStreamLatency(i32* %19, i32* %5)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @IAudioClient_GetCurrentPadding(i32* %27, i32* %4)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @IAudioClient_Start(i32* %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @IAudioClient_Stop(i32* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @IAudioClient_Reset(i32* %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @IAudioClient_SetEventHandle(i32* %59, i32 %60)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = bitcast i32** %7 to i8**
  %70 = call i64 @IAudioClient_GetService(i32* %68, i32* @IID_IAudioStreamVolume, i8** %69)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @AUDCLNT_E_NOT_INITIALIZED, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @CloseHandle(i32 %77)
  ret void
}

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i64 @IAudioClient_GetBufferSize(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAudioClient_GetStreamLatency(i32*, i32*) #1

declare dso_local i64 @IAudioClient_GetCurrentPadding(i32*, i32*) #1

declare dso_local i64 @IAudioClient_Start(i32*) #1

declare dso_local i64 @IAudioClient_Stop(i32*) #1

declare dso_local i64 @IAudioClient_Reset(i32*) #1

declare dso_local i64 @IAudioClient_SetEventHandle(i32*, i32) #1

declare dso_local i64 @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
