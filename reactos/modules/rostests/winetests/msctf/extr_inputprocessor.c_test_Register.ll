; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Register.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Register.szDesc = internal constant [18 x float] [float 7.000000e+01, float 9.700000e+01, float 1.070000e+02, float 1.010000e+02, float 3.200000e+01, float 8.700000e+01, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 3.200000e+01, float 8.300000e+01, float 1.010000e+02, float 1.140000e+02, float 1.180000e+02, float 1.050000e+02, float 9.900000e+01, float 1.010000e+02, float 0.000000e+00], align 16
@test_Register.szFile = internal constant [23 x float] [float 7.000000e+01, float 9.700000e+01, float 1.070000e+02, float 1.010000e+02, float 3.200000e+01, float 8.700000e+01, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 3.200000e+01, float 8.300000e+01, float 1.010000e+02, float 1.140000e+02, float 1.180000e+02, float 1.050000e+02, float 9.900000e+01, float 1.010000e+02, float 3.200000e+01, float 7.000000e+01, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@g_ipp = common dso_local global i32 0, align 4
@gLangid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to get current language id\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Current Language %x\0A\00", align 1
@CLSID_FakeService = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to register COM for TextService\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to register text service(%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to add Language Profile (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Register() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_ipp, align 4
  %3 = call i32 @ITfInputProcessorProfiles_GetCurrentLanguage(i32 %2, i32* @gLangid)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @SUCCEEDED(i32 %4)
  %6 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @gLangid, align 4
  %8 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 @RegisterTextService(i32* @CLSID_FakeService)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @SUCCEEDED(i32 %10)
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @g_ipp, align 4
  %14 = call i32 @ITfInputProcessorProfiles_Register(i32 %13, i32* @CLSID_FakeService)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @SUCCEEDED(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @g_ipp, align 4
  %20 = load i32, i32* @gLangid, align 4
  %21 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([18 x float], [18 x float]* @test_Register.szDesc, i64 0, i64 0))
  %22 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([23 x float], [23 x float]* @test_Register.szFile, i64 0, i64 0))
  %23 = call i32 @ITfInputProcessorProfiles_AddLanguageProfile(i32 %19, i32* @CLSID_FakeService, i32 %20, i32* @CLSID_FakeService, float* getelementptr inbounds ([18 x float], [18 x float]* @test_Register.szDesc, i64 0, i64 0), i32 %21, float* getelementptr inbounds ([23 x float], [23 x float]* @test_Register.szFile, i64 0, i64 0), i32 %22, i32 1)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @SUCCEEDED(i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local i32 @ITfInputProcessorProfiles_GetCurrentLanguage(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @RegisterTextService(i32*) #1

declare dso_local i32 @ITfInputProcessorProfiles_Register(i32, i32*) #1

declare dso_local i32 @ITfInputProcessorProfiles_AddLanguageProfile(i32, i32*, i32, i32*, float*, i32, float*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
