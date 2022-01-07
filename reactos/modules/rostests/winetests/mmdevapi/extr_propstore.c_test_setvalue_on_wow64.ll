; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_setvalue_on_wow64.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_setvalue_on_wow64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i32 }

@test_setvalue_on_wow64.PKEY_Bogus = internal constant %struct.TYPE_16__ { i32 497408003, %struct.TYPE_12__ { i32 127, i32 0, i32 0, %struct.TYPE_13__ zeroinitializer } }, align 4
@test_setvalue_on_wow64.bogusW = internal constant [43 x i8] c"{1DA5D803-D492-4EDD-8C23-E0C0FFEE7F00},127\00", align 16
@VT_EMPTY = common dso_local global i32 0, align 4
@PKEY_AudioEndpoint_GUID = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to get Endpoint GUID: %08x\0A\00", align 1
@VT_UI4 = common dso_local global i32 0, align 4
@E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"SetValue failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Missing permission to write to registry\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GetValue failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Got wrong value: 0x%x\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@software_renderW = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Couldn't open mmdevices Render key: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Couldn't open mmdevice guid key: %u\0A\00", align 1
@propertiesW = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Couldn't open mmdevice property key: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Couldn't get bogus propertykey value: %u\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Got wrong value type: %u\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"Wrong error when opening mmdevices Render key: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_setvalue_on_wow64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setvalue_on_wow64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = call i32 @PropVariantInit(%struct.TYPE_15__* %3)
  %14 = load i32, i32* @VT_EMPTY, align 4
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IPropertyStore_GetValue(i32* %16, %struct.TYPE_16__* @PKEY_AudioEndpoint_GUID, %struct.TYPE_15__* %3)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i32, i32* @VT_UI4, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  store i32 171, i32* %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @IPropertyStore_SetValue(i32* %32, %struct.TYPE_16__* @test_setvalue_on_wow64.PKEY_Bogus, %struct.TYPE_15__* %3)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %1
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @E_ACCESSDENIED, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %1
  %42 = phi i1 [ true, %1 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %147

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @IPropertyStore_GetValue(i32* %55, %struct.TYPE_16__* @test_setvalue_on_wow64.PKEY_Bogus, %struct.TYPE_15__* %3)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 171
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %74 = load i8*, i8** @software_renderW, align 8
  %75 = load i32, i32* @KEY_READ, align 4
  %76 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @RegOpenKeyExW(i32 %73, i8* %74, i32 0, i32 %77, i32* %7)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @ERROR_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @KEY_READ, align 4
  %88 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @RegOpenKeyExW(i32 %85, i8* %86, i32 0, i32 %89, i32* %9)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @ERROR_SUCCESS, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** @propertiesW, align 8
  %99 = load i32, i32* @KEY_READ, align 4
  %100 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @RegOpenKeyExW(i32 %97, i8* %98, i32 0, i32 %101, i32* %8)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @ERROR_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  store i32 4, i32* %12, align 4
  %109 = load i32, i32* %8, align 4
  %110 = ptrtoint i32* %11 to i32
  %111 = call i32 @RegQueryValueExW(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @test_setvalue_on_wow64.bogusW, i64 0, i64 0), i32* null, i32* %10, i32 %110, i32* %12)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ERROR_SUCCESS, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @REG_DWORD, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 171
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @RegCloseKey(i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @RegCloseKey(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @RegCloseKey(i32 %133)
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @CoTaskMemFree(i8* %135)
  %137 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %138 = load i8*, i8** @software_renderW, align 8
  %139 = load i32, i32* @KEY_READ, align 4
  %140 = call i32 @RegOpenKeyExW(i32 %137, i8* %138, i32 0, i32 %139, i32* %7)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %52, %50
  ret void
}

declare dso_local i32 @PropVariantInit(%struct.TYPE_15__*) #1

declare dso_local i64 @IPropertyStore_GetValue(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @IPropertyStore_SetValue(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
