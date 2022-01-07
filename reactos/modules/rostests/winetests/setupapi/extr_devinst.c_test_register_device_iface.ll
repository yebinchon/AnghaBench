; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_register_device_iface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_register_device_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@test_register_device_iface.bogus = internal constant [48 x i8] c"System\\CurrentControlSet\\Enum\\Root\\LEGACY_BOGUS\00", align 16
@__const.test_register_device_iface.iface = private unnamed_addr constant %struct.TYPE_13__ { i32 4 }, align 4
@__const.test_register_device_iface.ret_iface = private unnamed_addr constant %struct.TYPE_13__ { i32 4 }, align 4
@__const.test_register_device_iface.device = private unnamed_addr constant %struct.TYPE_12__ { i32 4 }, align 4
@guid = common dso_local global i32 0, align 4
@DIGCF_ALLCLASSES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to create device list, error %#x.\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Key should not exist.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0000\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to create interface, error %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to register device, error %#x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Failed to enumerate interfaces, error %#x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Failed to delete interface, error %#x.\0A\00", align 1
@DIGCF_DEVICEINTERFACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [66 x i8] c"\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\\deleted\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to remove device, error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_register_device_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_register_device_iface() #0 {
  %1 = alloca %struct.TYPE_13__, align 4
  %2 = alloca %struct.TYPE_13__, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_13__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_13__* @__const.test_register_device_iface.iface to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_13__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_13__* @__const.test_register_device_iface.ret_iface to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_12__* @__const.test_register_device_iface.device to i8*), i64 4, i1 false)
  %12 = load i32, i32* @DIGCF_ALLCLASSES, align 4
  %13 = call i64 @SetupDiGetClassDevsA(i32* @guid, i32* null, i32 0, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %21 = call i64 @RegOpenKeyW(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_register_device_iface.bogus, i64 0, i64 0), i32* %7)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @SetupDiCreateDeviceInfoA(i64 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_12__* %3)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @SetupDiCreateDeviceInterfaceA(i64 %32, %struct.TYPE_12__* %3, i32* @guid, i8* null, i32 0, %struct.TYPE_13__* %1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @SetupDiCreateDeviceInterfaceA(i64 %37, %struct.TYPE_12__* %3, i32* @guid, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.TYPE_13__* %1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @SetupDiCreateDeviceInterfaceA(i64 %42, %struct.TYPE_12__* %3, i32* @guid, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, %struct.TYPE_13__* %1)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @SetupDiRegisterDeviceInfo(i64 %47, %struct.TYPE_12__* %3, i32 0, i32* null, i32* null, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @SetupDiEnumDeviceInterfaces(i64 %52, %struct.TYPE_12__* %3, i32* @guid, i32 1, %struct.TYPE_13__* %1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @SetupDiRemoveDeviceInterface(i64 %57, %struct.TYPE_13__* %1)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @SetupDiEnumDeviceInterfaces(i64 %62, %struct.TYPE_12__* %3, i32* @guid, i32 2, %struct.TYPE_13__* %1)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @SetupDiDeleteDeviceInterfaceData(i64 %67, %struct.TYPE_13__* %1)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %73 = call i64 @SetupDiGetClassDevsA(i32* @guid, i32* null, i32 0, i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @check_device_iface(i64 %80, i32* null, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0))
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @check_device_iface(i64 %82, i32* null, i32* @guid, i32 1, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0))
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @check_device_iface(i64 %84, i32* null, i32* @guid, i32 2, i32 0, i8* null)
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @SetupDiRemoveDevice(i64 %86, %struct.TYPE_12__* %3)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %89)
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @SetupDiDestroyDeviceInfoList(i64 %91)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @SetupDiDestroyDeviceInfoList(i64 %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SetupDiGetClassDevsA(i32*, i32*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i64, i8*, i32*, i32*, i32*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @SetupDiCreateDeviceInterfaceA(i64, %struct.TYPE_12__*, i32*, i8*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @SetupDiRegisterDeviceInfo(i64, %struct.TYPE_12__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @SetupDiEnumDeviceInterfaces(i64, %struct.TYPE_12__*, i32*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @SetupDiRemoveDeviceInterface(i64, %struct.TYPE_13__*) #2

declare dso_local i32 @SetupDiDeleteDeviceInterfaceData(i64, %struct.TYPE_13__*) #2

declare dso_local i32 @check_device_iface(i64, i32*, i32*, i32, i32, i8*) #2

declare dso_local i32 @SetupDiRemoveDevice(i64, %struct.TYPE_12__*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
