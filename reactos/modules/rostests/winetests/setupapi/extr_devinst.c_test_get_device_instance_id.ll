; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_get_device_instance_id.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_devinst.c_test_get_device_instance_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Got unexpected error %#x.\0A\00", align 1
@guid = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create device list, error %#x.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Root\\LEGACY_BOGUS\\0000\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create device, error %#x.\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to get device id, error %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0000\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Got unexpected id %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"LEGACY_BOGUS\00", align 1
@DICD_GENERATE_ID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"SetupDiCreateDeviceInfoA failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ROOT\\LEGACY_BOGUS\\0001\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_device_instance_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_device_instance_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca [200 x i8], align 16
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = call i32 @SetupDiGetDeviceInstanceIdA(i32* null, %struct.TYPE_4__* null, i8* null, i32 0, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* (...) @GetLastError()
  %15 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %16 = icmp eq i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i8* (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = call i32 @SetupDiGetDeviceInstanceIdA(i32* null, %struct.TYPE_4__* %3, i8* null, i32 0, i32* null)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = call i8* (...) @GetLastError()
  %28 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %29 = icmp eq i8* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i8* (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32* @SetupDiCreateDeviceInfoList(i32* @guid, i32* null)
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %36 = icmp ne i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i8* (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %41, %struct.TYPE_4__* null, i8* null, i32 0, i32* null)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = call i8* (...) @GetLastError()
  %49 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i8* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i8* (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = call i32 @SetLastError(i32 -559038737)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %55, %struct.TYPE_4__* %3, i8* null, i32 0, i32* null)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = call i8* (...) @GetLastError()
  %63 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %64 = icmp eq i8* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i8* (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 @SetLastError(i32 -559038737)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %69, %struct.TYPE_4__* %3, i8* null, i32 0, i32* %5)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %76 = call i8* (...) @GetLastError()
  %77 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %78 = icmp eq i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i8* (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 8, i32* %82, align 4
  %83 = call i32 @SetLastError(i32 -559038737)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %84, %struct.TYPE_4__* %3, i8* null, i32 0, i32* %5)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %91 = call i8* (...) @GetLastError()
  %92 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %93 = icmp eq i8* %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i8* (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @SetupDiCreateDeviceInfoA(i32* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 0, %struct.TYPE_4__* %3)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i8* (...) @GetLastError()
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %103, %struct.TYPE_4__* %3, i8* null, i32 0, i32* %5)
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* %1, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %110 = call i8* (...) @GetLastError()
  %111 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %112 = icmp eq i8* %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i8* (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  %116 = load i32*, i32** %2, align 8
  %117 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %118 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %116, %struct.TYPE_4__* %3, i8* %117, i32 200, i32* null)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = call i8* (...) @GetLastError()
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %127)
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @DICD_GENERATE_ID, align 4
  %131 = call i32 @SetupDiCreateDeviceInfoA(i32* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* @guid, i32* null, i32* null, i32 %130, %struct.TYPE_4__* %3)
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* %1, align 4
  %133 = call i8* (...) @GetLastError()
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  %135 = load i32*, i32** %2, align 8
  %136 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %137 = call i32 @SetupDiGetDeviceInstanceIdA(i32* %135, %struct.TYPE_4__* %3, i8* %136, i32 200, i32* null)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i8* (...) @GetLastError()
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  %141 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @SetupDiDestroyDeviceInfoList(i32* %148)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupDiGetDeviceInstanceIdA(i32*, %struct.TYPE_4__*, i8*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i32* @SetupDiCreateDeviceInfoList(i32*, i32*) #2

declare dso_local i32 @SetupDiCreateDeviceInfoA(i32*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
