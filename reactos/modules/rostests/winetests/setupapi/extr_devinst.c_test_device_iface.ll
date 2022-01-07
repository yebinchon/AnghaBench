; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_iface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@__const.test_device_iface.iface = private unnamed_addr constant %struct.TYPE_16__ { i32 24, i64 0, i32 0 }, align 8
@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@guid = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create device list, error %#x.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0000\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@ERROR_INVALID_USER_BUFFER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to create interface, error %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Oogah\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\Oogah\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Got unexpected class %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Got unexpected flags %#x.\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Failed to get interface detail, error %#x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\test\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Got unexpected path %s.\0A\00", align 1
@guid2 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [66 x i8] c"\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A5-3F65-11DB-B704-0011955C2BDB}\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to enumerate interfaces, error %#x.\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Failed to remove interface, error %#x.\0A\00", align 1
@SPINT_REMOVED = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Failed to delete interface, error %#x.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Failed to destroy device list, error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_iface() #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  %8 = bitcast i8* %7 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %2, align 8
  %9 = bitcast %struct.TYPE_16__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_16__* @__const.test_device_iface.iface to i8*), i64 24, i1 false)
  %10 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 16, i32* %12, align 8
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = call i32 @SetupDiCreateDeviceInterfaceA(i32* null, %struct.TYPE_14__* null, i32* null, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = call i32 @SetupDiCreateDeviceInterfaceA(i32* null, %struct.TYPE_14__* null, i32* @guid, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = call i32* @SetupDiCreateDeviceInfoList(i32* @guid, i32* null)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %42 = icmp ne i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = call i32 @SetLastError(i32 -559038737)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %47, %struct.TYPE_14__* null, i32* null, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %61, %struct.TYPE_14__* %4, i32* null, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i32 8, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @SetupDiCreateDeviceInfoA(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_14__* %4)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @check_device_iface(i32* %80, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* null)
  %82 = call i32 @SetLastError(i32 -559038737)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %83, %struct.TYPE_14__* %4, i32* null, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %90 = call i64 (...) @GetLastError()
  %91 = load i64, i64* @ERROR_INVALID_USER_BUFFER, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 (...) @GetLastError()
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %96, %struct.TYPE_14__* %4, i32* @guid, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i64 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @check_device_iface(i32* %101, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @check_device_iface(i32* %103, %struct.TYPE_14__* %4, i32* @guid, i32 1, i32 0, i8* null)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %105, %struct.TYPE_14__* %4, i32* @guid, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i64 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @check_device_iface(i32* %110, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @check_device_iface(i32* %112, %struct.TYPE_14__* %4, i32* @guid, i32 1, i32 0, i8* null)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %114, %struct.TYPE_14__* %4, i32* @guid, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0, %struct.TYPE_16__* null)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i64 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @check_device_iface(i32* %119, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @check_device_iface(i32* %121, %struct.TYPE_14__* %4, i32* @guid, i32 1, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @check_device_iface(i32* %123, %struct.TYPE_14__* %4, i32* @guid, i32 2, i32 0, i8* null)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %125, %struct.TYPE_14__* %4, i32* @guid, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, %struct.TYPE_16__* %3)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %131 = call i32 @IsEqualGUID(i32* %130, i32* @guid)
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %133 = call i64 @wine_dbgstr_guid(i32* %132)
  %134 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %133)
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %142, %struct.TYPE_16__* %3, %struct.TYPE_15__* %143, i32 200, i32* null, i32* null)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @strcasecmp(i64 %150, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @check_device_iface(i32* %159, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @check_device_iface(i32* %161, %struct.TYPE_14__* %4, i32* @guid, i32 1, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @check_device_iface(i32* %163, %struct.TYPE_14__* %4, i32* @guid, i32 2, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @check_device_iface(i32* %165, %struct.TYPE_14__* %4, i32* @guid, i32 3, i32 0, i8* null)
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %167, %struct.TYPE_14__* %4, i32* @guid2, i8* null, i32 0, %struct.TYPE_16__* null)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i64 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %170)
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @check_device_iface(i32* %172, %struct.TYPE_14__* %4, i32* @guid2, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i64 0, i64 0))
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @check_device_iface(i32* %174, %struct.TYPE_14__* %4, i32* @guid2, i32 1, i32 0, i8* null)
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @SetupDiEnumDeviceInterfaces(i32* %176, %struct.TYPE_14__* %4, i32* @guid2, i32 0, %struct.TYPE_16__* %3)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i64 (...) @GetLastError()
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i64 %179)
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @SetupDiRemoveDeviceInterface(i32* %181, %struct.TYPE_16__* %3)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i64 (...) @GetLastError()
  %185 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i64 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @SPINT_REMOVED, align 4
  %188 = call i32 @check_device_iface(i32* %186, %struct.TYPE_14__* %4, i32* @guid2, i32 0, i32 %187, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i64 0, i64 0))
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @check_device_iface(i32* %189, %struct.TYPE_14__* %4, i32* @guid2, i32 1, i32 0, i8* null)
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @SetupDiEnumDeviceInterfaces(i32* %191, %struct.TYPE_14__* %4, i32* @guid, i32 0, %struct.TYPE_16__* %3)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i64 (...) @GetLastError()
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i64 %194)
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @SetupDiDeleteDeviceInterfaceData(i32* %196, %struct.TYPE_16__* %3)
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i64 (...) @GetLastError()
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i64 %199)
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @check_device_iface(i32* %201, %struct.TYPE_14__* %4, i32* @guid, i32 0, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 @check_device_iface(i32* %203, %struct.TYPE_14__* %4, i32* @guid, i32 1, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @check_device_iface(i32* %205, %struct.TYPE_14__* %4, i32* @guid, i32 2, i32 0, i8* null)
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @SetupDiDestroyDeviceInfoList(i32* %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i64 (...) @GetLastError()
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i64 %210)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupDiCreateDeviceInterfaceA(i32*, %struct.TYPE_14__*, i32*, i8*, i32, %struct.TYPE_16__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32* @SetupDiCreateDeviceInfoList(i32*, i32*) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i32*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @check_device_iface(i32*, %struct.TYPE_14__*, i32*, i32, i32, i8*) #2

declare dso_local i32 @IsEqualGUID(i32*, i32*) #2

declare dso_local i64 @wine_dbgstr_guid(i32*) #2

declare dso_local i32 @SetupDiGetDeviceInterfaceDetailA(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32*, i32*) #2

declare dso_local i32 @strcasecmp(i64, i8*) #2

declare dso_local i32 @SetupDiEnumDeviceInterfaces(i32*, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_16__*) #2

declare dso_local i32 @SetupDiRemoveDeviceInterface(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @SetupDiDeleteDeviceInterfaceData(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
