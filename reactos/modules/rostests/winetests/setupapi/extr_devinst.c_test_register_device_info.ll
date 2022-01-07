; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_register_device_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_register_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@guid = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create device list, error %#x.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0000\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to register device, error %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0001\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to remove device, error %#x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0002\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0003\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_register_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_register_device_info() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = call i32 @SetupDiRegisterDeviceInfo(i32* null, %struct.TYPE_7__* null, i32 0, i32* null, i32* null, i32* null)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = call i32* @SetupDiCreateDeviceInfoList(i32* @guid, i32* null)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %22 = icmp ne i32* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @SetupDiRegisterDeviceInfo(i32* %27, %struct.TYPE_7__* null, i32 0, i32* null, i32* null, i32* null)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @SetupDiRegisterDeviceInfo(i32* %41, %struct.TYPE_7__* %1, i32 0, i32* null, i32* null, i32* null)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 8, i32* %54, align 4
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @SetupDiRegisterDeviceInfo(i32* %56, %struct.TYPE_7__* %1, i32 0, i32* null, i32* null, i32* null)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @SetupDiCreateDeviceInfoA(i32* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_7__* %1)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @SetupDiRegisterDeviceInfo(i32* %74, %struct.TYPE_7__* %1, i32 0, i32* null, i32* null, i32* null)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @SetupDiCreateDeviceInfoA(i32* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_7__* %1)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @SetupDiRegisterDeviceInfo(i32* %84, %struct.TYPE_7__* %1, i32 0, i32* null, i32* null, i32* null)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @SetupDiRemoveDevice(i32* %89, %struct.TYPE_7__* %1)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @SetupDiCreateDeviceInfoA(i32* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_7__* %1)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i64 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @SetupDiRegisterDeviceInfo(i32* %99, %struct.TYPE_7__* %1, i32 0, i32* null, i32* null, i32* null)
  store i32 %100, i32* %2, align 4
  %101 = load i32, i32* %2, align 4
  %102 = call i64 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @SetupDiDeleteDeviceInfo(i32* %104, %struct.TYPE_7__* %1)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %2, align 4
  %107 = call i64 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @SetupDiCreateDeviceInfoA(i32* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_7__* %1)
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* %2, align 4
  %112 = call i64 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @SetupDiDestroyDeviceInfoList(i32* %114)
  %116 = call i32* @SetupDiGetClassDevsA(i32* @guid, i32* null, i32* null, i32 0)
  store i32* %116, i32** %3, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %119 = icmp ne i32* %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @check_device_info(i32* %123, i32 0, i32* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @check_device_info(i32* %125, i32 1, i32* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @check_device_info(i32* %127, i32 2, i32* @guid, i8* null)
  br label %129

129:                                              ; preds = %135, %0
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  %133 = call i64 @SetupDiEnumDeviceInfo(i32* %130, i32 %131, %struct.TYPE_7__* %1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @SetupDiRemoveDevice(i32* %136, %struct.TYPE_7__* %1)
  store i32 %137, i32* %2, align 4
  %138 = load i32, i32* %2, align 4
  %139 = call i64 (...) @GetLastError()
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %139)
  br label %129

141:                                              ; preds = %129
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @SetupDiDestroyDeviceInfoList(i32* %142)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupDiRegisterDeviceInfo(i32*, %struct.TYPE_7__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32* @SetupDiCreateDeviceInfoList(i32*, i32*) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i32*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @SetupDiRemoveDevice(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @SetupDiDeleteDeviceInfo(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32*) #2

declare dso_local i32* @SetupDiGetClassDevsA(i32*, i32*, i32*, i32) #2

declare dso_local i32 @check_device_info(i32*, i32, i32*, i8*) #2

declare dso_local i64 @SetupDiEnumDeviceInfo(i32*, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
