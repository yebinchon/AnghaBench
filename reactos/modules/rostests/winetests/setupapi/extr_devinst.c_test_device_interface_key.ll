; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_interface_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_interface_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@__const.test_device_interface_key.keypath = private unnamed_addr constant [152 x i8] c"System\\CurrentControlSet\\Control\\DeviceClasses\\{6a55b5a4-3f65-11db-b704-0011955c2bdb}\\##?#ROOT#LEGACY_BOGUS#0001#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\00", align 16
@__const.test_device_interface_key.iface = private unnamed_addr constant %struct.TYPE_11__ { i32 4 }, align 4
@__const.test_device_interface_key.devinfo = private unnamed_addr constant %struct.TYPE_10__ { i32 4 }, align 4
@DIGCF_ALLCLASSES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"SetupDiGetClassDevs failed: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0001\00", align 1
@guid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"SetupDiCreateDeviceInfo failed: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SetupDiCreateDeviceInterface failed: %#x\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to open device parent key: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"#\\Device Parameters\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"key shouldn't exist\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"got error %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"key should exist: %u\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"RegQueryValue failed: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"got wrong data %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_interface_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_interface_key() #0 {
  %1 = alloca [152 x i8], align 16
  %2 = alloca %struct.TYPE_11__, align 4
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast [152 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([152 x i8], [152 x i8]* @__const.test_device_interface_key.keypath, i32 0, i32 0), i64 152, i1 false)
  %12 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_11__* @__const.test_device_interface_key.iface to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_10__* @__const.test_device_interface_key.devinfo to i8*), i64 4, i1 false)
  %14 = load i32, i32* @DIGCF_ALLCLASSES, align 4
  %15 = call i64 @SetupDiGetClassDevsA(i32* null, i32* null, i32 0, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @SetupDiCreateDeviceInfoA(i64 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_10__* %3)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @SetupDiCreateDeviceInterfaceA(i64 %27, %struct.TYPE_10__* %3, i32* @guid, i32* null, i32 0, %struct.TYPE_11__* %2)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %33 = getelementptr inbounds [152 x i8], [152 x i8]* %1, i64 0, i64 0
  %34 = call i32 @RegOpenKeyA(i64 %32, i8* %33, i64* %4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @RegOpenKeyA(i64 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64* %5)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %50 = call i64 @SetupDiCreateDeviceInterfaceRegKeyA(i64 %48, %struct.TYPE_11__* %2, i32 0, i32 %49, i32* null, i32* null)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @RegOpenKeyA(i64 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64* %5)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @REG_SZ, align 4
  %67 = call i32 @RegSetValueA(i64 %65, i32* null, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 5)
  store i32 %67, i32* %10, align 4
  store i32 5, i32* %9, align 4
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %70 = call i32 @RegQueryValueA(i64 %68, i32* null, i8* %69, i32* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @RegCloseKey(i64 %84)
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @RegCloseKey(i64 %86)
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @SetupDiDeleteDeviceInterfaceRegKey(i64 %88, %struct.TYPE_11__* %2, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @RegOpenKeyA(i64 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64* %5)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @RegCloseKey(i64 %100)
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @SetupDiRemoveDeviceInterface(i64 %102, %struct.TYPE_11__* %2)
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @SetupDiRemoveDevice(i64 %104, %struct.TYPE_10__* %3)
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @SetupDiDestroyDeviceInfoList(i64 %106)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SetupDiGetClassDevsA(i32*, i32*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i64, i8*, i32*, i32*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @SetupDiCreateDeviceInterfaceA(i64, %struct.TYPE_10__*, i32*, i32*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @RegOpenKeyA(i64, i8*, i64*) #2

declare dso_local i64 @SetupDiCreateDeviceInterfaceRegKeyA(i64, %struct.TYPE_11__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @RegSetValueA(i64, i32*, i32, i8*, i32) #2

declare dso_local i32 @RegQueryValueA(i64, i32*, i8*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @RegCloseKey(i64) #2

declare dso_local i32 @SetupDiDeleteDeviceInterfaceRegKey(i64, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @SetupDiRemoveDeviceInterface(i64, %struct.TYPE_11__*) #2

declare dso_local i32 @SetupDiRemoveDevice(i64, %struct.TYPE_10__*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
