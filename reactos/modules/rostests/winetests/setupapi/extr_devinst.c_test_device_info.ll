; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@test_device_info.deadbeef = internal constant %struct.TYPE_17__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_15__ { i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190, i32 239 } }, align 4
@__const.test_device_info.ret_device = private unnamed_addr constant %struct.TYPE_16__ { i32 16, i32 0, i32 0, i32 0 }, align 4
@MAX_DEVICE_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_DEVINST_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0000\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@guid = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to create device info, error %#x.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@ERROR_CLASS_MISMATCH = common dso_local global i8* null, align 8
@GUID_NULL = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0000\00", align 1
@ERROR_DEVINST_ALREADY_EXISTS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0001\00", align 1
@ERROR_INVALID_USER_BUFFER = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0001\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0002\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Got unexpected class %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0002\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Got unexpected id %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to enumerate devices, error %#x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to delete device, error %#x.\0A\00", align 1
@ERROR_NO_SUCH_DEVINST = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"Expected device node %#x, got %#x.\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Root\\LEGACY_BOGUS\\deadbeef\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\null\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Root\\LEGACY_BOGUS\\testguid\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"ROOT\\LEGACY_BOGUS\\deadbeef\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\null\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"ROOT\\LEGACY_BOGUS\\testguid\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Root\\LEGACY_BOGUS\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_info() #0 {
  %1 = alloca %struct.TYPE_16__, align 4
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_16__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_16__* @__const.test_device_info.ret_device to i8*), i64 16, i1 false)
  %9 = load i32, i32* @MAX_DEVICE_ID_LEN, align 4
  %10 = add nsw i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = call i32 @SetupDiCreateDeviceInfoA(i32* null, i8* null, %struct.TYPE_17__* null, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = call i8* (...) @GetLastError()
  %22 = load i8*, i8** @ERROR_INVALID_DEVINST_NAME, align 8
  %23 = icmp eq i8* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i8* (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = call i32 @SetupDiCreateDeviceInfoA(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* null, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = call i8* (...) @GetLastError()
  %35 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %36 = icmp eq i8* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i8* (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32* @SetupDiCreateDeviceInfoList(%struct.TYPE_17__* @guid, i32* null)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %43 = icmp ne i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i8* (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = call i32 @SetLastError(i32 -559038737)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @SetupDiCreateDeviceInfoA(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* null, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %55 = call i8* (...) @GetLastError()
  %56 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %57 = icmp eq i8* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i8* (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @SetupDiCreateDeviceInfoA(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* @test_device_info.deadbeef, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %69 = call i8* (...) @GetLastError()
  %70 = load i8*, i8** @ERROR_CLASS_MISMATCH, align 8
  %71 = icmp eq i8* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i8* (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @SetupDiCreateDeviceInfoA(i32* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* @GUID_NULL, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %83 = call i8* (...) @GetLastError()
  %84 = load i8*, i8** @ERROR_CLASS_MISMATCH, align 8
  %85 = icmp eq i8* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i8* (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @SetupDiCreateDeviceInfoA(i32* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i8* (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @check_device_info(i32* %94, i32 0, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @check_device_info(i32* %96, i32 1, %struct.TYPE_17__* @guid, i8* null)
  %98 = call i32 @SetLastError(i32 -559038737)
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @SetupDiCreateDeviceInfoA(i32* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* %1)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %106 = call i8* (...) @GetLastError()
  %107 = load i8*, i8** @ERROR_DEVINST_ALREADY_EXISTS, align 8
  %108 = icmp eq i8* %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i8* (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = call i32 @SetLastError(i32 -559038737)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @SetupDiCreateDeviceInfoA(i32* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* %1)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %120 = call i8* (...) @GetLastError()
  %121 = load i8*, i8** @ERROR_INVALID_USER_BUFFER, align 8
  %122 = icmp eq i8* %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i8* (...) @GetLastError()
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @check_device_info(i32* %126, i32 0, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @check_device_info(i32* %128, i32 1, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @check_device_info(i32* %130, i32 2, %struct.TYPE_17__* @guid, i8* null)
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  store i32 16, i32* %132, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @SetupDiCreateDeviceInfoA(i32* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* %1)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i8* (...) @GetLastError()
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %136)
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %139 = call i32 @IsEqualGUID(i32* %138, %struct.TYPE_17__* @guid)
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %141 = call i8* @wine_dbgstr_guid(i32* %140)
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = trunc i64 %11 to i32
  %145 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %143, %struct.TYPE_16__* %1, i8* %13, i32 %144, i32* null)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i8* (...) @GetLastError()
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  %149 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @check_device_info(i32* %154, i32 0, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @check_device_info(i32* %156, i32 1, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @check_device_info(i32* %158, i32 2, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @check_device_info(i32* %160, i32 3, %struct.TYPE_17__* @guid, i8* null)
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @SetupDiEnumDeviceInfo(i32* %162, i32 0, %struct.TYPE_16__* %2)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i8* (...) @GetLastError()
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %165)
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @SetupDiDeleteDeviceInfo(i32* %167, %struct.TYPE_16__* %2)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i8* (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @check_device_info(i32* %172, i32 0, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @check_device_info(i32* %174, i32 1, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @check_device_info(i32* %176, i32 2, %struct.TYPE_17__* @guid, i8* null)
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @SetupDiRemoveDevice(i32* %178, %struct.TYPE_16__* %1)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i8* (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @check_device_info(i32* %183, i32 0, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @SetupDiEnumDeviceInfo(i32* %185, i32 1, %struct.TYPE_16__* %2)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i8* (...) @GetLastError()
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %188)
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %191 = call i32 @IsEqualGUID(i32* %190, %struct.TYPE_17__* @guid)
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %193 = call i8* @wine_dbgstr_guid(i32* %192)
  %194 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %193)
  %195 = load i32*, i32** %5, align 8
  %196 = trunc i64 %11 to i32
  %197 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %195, %struct.TYPE_16__* %2, i8* %13, i32 %196, i32* null)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %203 = call i8* (...) @GetLastError()
  %204 = load i8*, i8** @ERROR_NO_SUCH_DEVINST, align 8
  %205 = icmp eq i8* %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i8* (...) @GetLastError()
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %207)
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %210, %212
  %214 = zext i1 %213 to i32
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %216, i32 %218)
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @check_device_info(i32* %220, i32 2, %struct.TYPE_17__* @guid, i8* null)
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @SetupDiDestroyDeviceInfoList(i32* %222)
  %224 = call i32* @SetupDiCreateDeviceInfoList(%struct.TYPE_17__* null, i32* null)
  store i32* %224, i32** %5, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %227 = icmp ne i32* %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i8* (...) @GetLastError()
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %229)
  %231 = call i32 @SetLastError(i32 -559038737)
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @SetupDiCreateDeviceInfoA(i32* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* null, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %239 = call i8* (...) @GetLastError()
  %240 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %241 = icmp eq i8* %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i8* (...) @GetLastError()
  %244 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %243)
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 @SetupDiCreateDeviceInfoA(i32* %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_17__* @test_device_info.deadbeef, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i8* (...) @GetLastError()
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %248)
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @SetupDiCreateDeviceInfoA(i32* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_17__* @GUID_NULL, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = call i8* (...) @GetLastError()
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %253)
  %255 = load i32*, i32** %5, align 8
  %256 = call i32 @SetupDiCreateDeviceInfoA(i32* %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i8* (...) @GetLastError()
  %259 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %258)
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @check_device_info(i32* %260, i32 0, %struct.TYPE_17__* @test_device_info.deadbeef, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @check_device_info(i32* %262, i32 1, %struct.TYPE_17__* @GUID_NULL, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @check_device_info(i32* %264, i32 2, %struct.TYPE_17__* @guid, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @check_device_info(i32* %266, i32 3, %struct.TYPE_17__* null, i8* null)
  %268 = trunc i64 %11 to i32
  %269 = call i32 @memset(i8* %13, i8 signext 120, i32 %268)
  %270 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %271 = call i32 @memcpy(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %270)
  %272 = load i32, i32* @MAX_DEVICE_ID_LEN, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %13, i64 %274
  store i8 0, i8* %275, align 1
  %276 = call i32 @SetLastError(i32 -559038737)
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @SetupDiCreateDeviceInfoA(i32* %277, i8* %13, %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = icmp ne i32 %279, 0
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %284 = call i8* (...) @GetLastError()
  %285 = load i8*, i8** @ERROR_INVALID_DEVINST_NAME, align 8
  %286 = icmp eq i8* %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i8* (...) @GetLastError()
  %289 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %288)
  %290 = load i32, i32* @MAX_DEVICE_ID_LEN, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %13, i64 %291
  store i8 0, i8* %292, align 1
  %293 = call i32 @SetLastError(i32 -559038737)
  %294 = load i32*, i32** %5, align 8
  %295 = call i32 @SetupDiCreateDeviceInfoA(i32* %294, i8* %13, %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %295, i32* %6, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %301 = call i8* (...) @GetLastError()
  %302 = load i8*, i8** @ERROR_INVALID_DEVINST_NAME, align 8
  %303 = icmp eq i8* %301, %302
  %304 = zext i1 %303 to i32
  %305 = call i8* (...) @GetLastError()
  %306 = call i32 (i32, i8*, ...) @ok(i32 %304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %305)
  %307 = load i32, i32* @MAX_DEVICE_ID_LEN, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %13, i64 %309
  store i8 0, i8* %310, align 1
  %311 = load i32*, i32** %5, align 8
  %312 = call i32 @SetupDiCreateDeviceInfoA(i32* %311, i8* %13, %struct.TYPE_17__* @guid, i32* null, i32* null, i32 0, %struct.TYPE_16__* null)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i8* (...) @GetLastError()
  %315 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %314)
  %316 = load i32*, i32** %5, align 8
  %317 = call i32 @SetupDiDestroyDeviceInfoList(i32* %316)
  %318 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %318)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @SetupDiCreateDeviceInfoA(i32*, i8*, %struct.TYPE_17__*, i32*, i32*, i32, %struct.TYPE_16__*) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i8* @GetLastError(...) #3

declare dso_local i32* @SetupDiCreateDeviceInfoList(%struct.TYPE_17__*, i32*) #3

declare dso_local i32 @check_device_info(i32*, i32, %struct.TYPE_17__*, i8*) #3

declare dso_local i32 @IsEqualGUID(i32*, %struct.TYPE_17__*) #3

declare dso_local i8* @wine_dbgstr_guid(i32*) #3

declare dso_local i32 @SetupDiGetDeviceInstanceIdA(i32*, %struct.TYPE_16__*, i8*, i32, i32*) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @SetupDiEnumDeviceInfo(i32*, i32, %struct.TYPE_16__*) #3

declare dso_local i32 @SetupDiDeleteDeviceInfo(i32*, %struct.TYPE_16__*) #3

declare dso_local i32 @SetupDiRemoveDevice(i32*, %struct.TYPE_16__*) #3

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32*) #3

declare dso_local i32 @memset(i8*, i8 signext, i32) #3

declare dso_local i32 @memcpy(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
