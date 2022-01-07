; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_iface_detail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_device_iface_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@test_device_iface_detail.path = internal constant [66 x i8] c"\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\00", align 16
@__const.test_device_iface_detail.iface = private unnamed_addr constant %struct.TYPE_16__ { i32 4 }, align 4
@__const.test_device_iface_detail.device = private unnamed_addr constant %struct.TYPE_14__ { i32 12, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@guid = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create device list, error %#x.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0000\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to create interface, error %#x.\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_INVALID_USER_BUFFER = common dso_local global i32 0, align 4
@SP_DEVICE_INTERFACE_DETAIL_DATA_W = common dso_local global i32 0, align 4
@DevicePath = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to get interface detail, error %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Got unexpected path %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Got unexpected size %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Got unexpected class %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_iface_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_iface_detail() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = alloca %struct.TYPE_14__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_16__* @__const.test_device_iface_detail.iface to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_14__* @__const.test_device_iface_detail.device to i8*), i64 12, i1 false)
  store i32 0, i32* %4, align 4
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* null, %struct.TYPE_16__* null, %struct.TYPE_15__* null, i32 0, i32* null, i32* null)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @GetLastError()
  %18 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32* @SetupDiCreateDeviceInfoList(i32* @guid, i32* null)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %26 = icmp ne i32* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %31, %struct.TYPE_16__* null, %struct.TYPE_15__* null, i32 0, i32* null, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (...) @GetLastError()
  %39 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SetupDiCreateDeviceInfoA(i32* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_14__* %3)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @SetupDiCreateDeviceInterfaceA(i32* %50, %struct.TYPE_14__* %3, i32* @guid, i32* null, i32 0, %struct.TYPE_16__* %2)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %56, %struct.TYPE_16__* %2, %struct.TYPE_15__* null, i32 0, i32* null, i32* null)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 (...) @GetLastError()
  %64 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = call i32 @SetLastError(i32 -559038737)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %70, %struct.TYPE_16__* %2, %struct.TYPE_15__* null, i32 100, i32* null, i32* null)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 (...) @GetLastError()
  %78 = load i32, i32* @ERROR_INVALID_USER_BUFFER, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = call i32 @SetLastError(i32 -559038737)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %84, %struct.TYPE_16__* %2, %struct.TYPE_15__* null, i32 0, i32* %4, i32* null)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %91 = call i32 (...) @GetLastError()
  %92 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call %struct.TYPE_15__* @heap_alloc(i32 %97)
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %1, align 8
  %99 = load i32, i32* @SP_DEVICE_INTERFACE_DETAIL_DATA_W, align 4
  %100 = load i32*, i32** @DevicePath, align 8
  %101 = call i32 @strlen(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @test_device_iface_detail.path, i64 0, i64 0))
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FIELD_OFFSET(i32 %99, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  %109 = call i32 @SetLastError(i32 -559038737)
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %110, %struct.TYPE_16__* %2, %struct.TYPE_15__* %111, i32 %112, i32* %4, i32* null)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %119 = call i32 (...) @GetLastError()
  %120 = load i32, i32* @ERROR_INVALID_USER_BUFFER, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = call i32 @SetLastError(i32 -559038737)
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %129, %struct.TYPE_16__* %2, %struct.TYPE_15__* %130, i32 %131, i32* %4, i32* null)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %138 = call i32 (...) @GetLastError()
  %139 = load i32, i32* @ERROR_INVALID_USER_BUFFER, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (...) @GetLastError()
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 8, i32* %145, align 4
  %146 = call i32 @SetLastError(i32 -559038737)
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @SetupDiGetDeviceInterfaceDetailA(i32* %147, %struct.TYPE_16__* %2, %struct.TYPE_15__* %148, i32 %149, i32* %4, i32* null)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (...) @GetLastError()
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @strcasecmp(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @test_device_iface_detail.path, i64 0, i64 0), i32 %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @SetupDiGetDeviceInterfaceDetailW(i32* %165, %struct.TYPE_16__* %2, i32* null, i32 0, i32* %4, %struct.TYPE_14__* null)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %172 = call i32 (...) @GetLastError()
  %173 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = call i32 @memset(%struct.TYPE_14__* %3, i32 0, i32 12)
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i32 12, i32* %185, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @SetupDiGetDeviceInterfaceDetailW(i32* %186, %struct.TYPE_16__* %2, i32* null, i32 0, i32* %4, %struct.TYPE_14__* %3)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %193 = call i32 (...) @GetLastError()
  %194 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 (...) @GetLastError()
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %200 = call i32 @IsEqualGUID(i32* %199, i32* @guid)
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %202 = call i32 @wine_dbgstr_guid(i32* %201)
  %203 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %202)
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %205 = call i32 @heap_free(%struct.TYPE_15__* %204)
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @SetupDiDestroyDeviceInfoList(i32* %206)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupDiGetDeviceInterfaceDetailA(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @SetupDiCreateDeviceInfoList(i32*, i32*) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i32*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @SetupDiCreateDeviceInterfaceA(i32*, %struct.TYPE_14__*, i32*, i32*, i32, %struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_15__* @heap_alloc(i32) #2

declare dso_local i32 @FIELD_OFFSET(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcasecmp(i8*, i32) #2

declare dso_local i32 @SetupDiGetDeviceInterfaceDetailW(i32*, %struct.TYPE_16__*, i32*, i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @IsEqualGUID(i32*, i32*) #2

declare dso_local i32 @wine_dbgstr_guid(i32*) #2

declare dso_local i32 @heap_free(%struct.TYPE_15__*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
