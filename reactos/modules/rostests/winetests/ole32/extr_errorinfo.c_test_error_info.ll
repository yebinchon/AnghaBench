; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_errorinfo.c_test_error_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_errorinfo.c_test_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_error_info.wszDescription = internal global [16 x float] [float 7.000000e+01, float 9.700000e+01, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 1.000000e+02, float 3.200000e+01, float 8.300000e+01, float 1.120000e+02, float 1.140000e+02, float 1.110000e+02, float 9.900000e+01, float 1.070000e+02, float 1.010000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_error_info.wszHelpFile = internal global [13 x float] [float 1.150000e+02, float 1.120000e+02, float 1.140000e+02, float 1.110000e+02, float 9.900000e+01, float 1.070000e+02, float 1.010000e+02, float 1.160000e+02, float 4.600000e+01, float 1.040000e+02, float 1.080000e+02, float 1.120000e+02, float 0.000000e+00], align 16
@test_error_info.wszSource = internal global [9 x float] [float 1.150000e+02, float 1.120000e+02, float 1.140000e+02, float 1.110000e+02, float 9.900000e+01, float 1.070000e+02, float 1.010000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [16 x i8] c"CreateErrorInfo\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"QI\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ICreateErrorInfo_SetDescription\00", align 1
@CLSID_WineTest = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"ICreateErrorInfo_SetGUID\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"ICreateErrorInfo_SetHelpContext\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"ICreateErrorInfo_SetHelpFile\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ICreateErrorInfo_SetSource\00", align 1
@IID_IErrorInfo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"ICreateErrorInfo_QueryInterface\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"SetErrorInfo\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"GetErrorInfo\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"GetErrorInfo should have returned S_FALSE instead of 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"pErrorInfo should be set to NULL\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [66 x i8] c"GetErrorInfo should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"SetErrorInfo should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_error_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i64 @CreateErrorInfo(i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @ok_ole_success(i64 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32** %4 to i8**
  %10 = call i64 @ICreateErrorInfo_QueryInterface(i32* %8, i32* @IID_IUnknown, i8** %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok_ole_success(i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @IUnknown_Release(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @ICreateErrorInfo_SetDescription(i32* %15, float* null)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok_ole_success(i64 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @ICreateErrorInfo_SetDescription(i32* %19, float* getelementptr inbounds ([16 x float], [16 x float]* @test_error_info.wszDescription, i64 0, i64 0))
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok_ole_success(i64 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @ICreateErrorInfo_SetGUID(i32* %23, i32* @CLSID_WineTest)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok_ole_success(i64 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @ICreateErrorInfo_SetHelpContext(i32* %27, i32 -559038737)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok_ole_success(i64 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @ICreateErrorInfo_SetHelpFile(i32* %31, float* null)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok_ole_success(i64 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @ICreateErrorInfo_SetHelpFile(i32* %35, float* getelementptr inbounds ([13 x float], [13 x float]* @test_error_info.wszHelpFile, i64 0, i64 0))
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok_ole_success(i64 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @ICreateErrorInfo_SetSource(i32* %39, float* null)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @ok_ole_success(i64 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @ICreateErrorInfo_SetSource(i32* %43, float* getelementptr inbounds ([9 x float], [9 x float]* @test_error_info.wszSource, i64 0, i64 0))
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @ok_ole_success(i64 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = bitcast i32** %3 to i8**
  %49 = call i64 @ICreateErrorInfo_QueryInterface(i32* %47, i32* @IID_IErrorInfo, i8** %48)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @ok_ole_success(i64 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = bitcast i32** %4 to i8**
  %54 = call i64 @IErrorInfo_QueryInterface(i32* %52, i32* @IID_IUnknown, i8** %53)
  store i64 %54, i64* %1, align 8
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @ok_ole_success(i64 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @IUnknown_Release(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @ICreateErrorInfo_Release(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @SetErrorInfo(i32 0, i32* %61)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = call i32 @ok_ole_success(i64 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @IErrorInfo_Release(i32* %65)
  store i32* null, i32** %3, align 8
  %67 = call i64 @GetErrorInfo(i32 0, i32** %3)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @ok_ole_success(i64 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @IErrorInfo_Release(i32* %70)
  %72 = call i64 @GetErrorInfo(i32 0, i32** %3)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @S_FALSE, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = icmp ne i32* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %84 = call i64 @SetErrorInfo(i32 0, i32* null)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @ok_ole_success(i64 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %87 = call i64 @GetErrorInfo(i32 -559038737, i32** %3)
  store i64 %87, i64* %1, align 8
  %88 = load i64, i64* %1, align 8
  %89 = load i64, i64* @E_INVALIDARG, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %1, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i64 %92)
  %94 = call i64 @SetErrorInfo(i32 -559038737, i32* null)
  store i64 %94, i64* %1, align 8
  %95 = load i64, i64* %1, align 8
  %96 = load i64, i64* @E_INVALIDARG, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %1, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0), i64 %99)
  ret void
}

declare dso_local i64 @CreateErrorInfo(i32**) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

declare dso_local i64 @ICreateErrorInfo_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @ICreateErrorInfo_SetDescription(i32*, float*) #1

declare dso_local i64 @ICreateErrorInfo_SetGUID(i32*, i32*) #1

declare dso_local i64 @ICreateErrorInfo_SetHelpContext(i32*, i32) #1

declare dso_local i64 @ICreateErrorInfo_SetHelpFile(i32*, float*) #1

declare dso_local i64 @ICreateErrorInfo_SetSource(i32*, float*) #1

declare dso_local i64 @IErrorInfo_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ICreateErrorInfo_Release(i32*) #1

declare dso_local i64 @SetErrorInfo(i32, i32*) #1

declare dso_local i32 @IErrorInfo_Release(i32*) #1

declare dso_local i64 @GetErrorInfo(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
