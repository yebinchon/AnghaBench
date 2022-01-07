; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_load_devices_from_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_load_devices_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@software_mmdevapi = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@reg_capture = common dso_local global i32 0, align 4
@key_capture = common dso_local global i32* null, align 8
@reg_render = common dso_local global i32 0, align 4
@key_render = common dso_local global i32* null, align 8
@eCapture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't create key: %u\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@VT_EMPTY = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@eRender = common dso_local global i32 0, align 4
@DEVPKEY_Device_FriendlyName = common dso_local global i32 0, align 4
@VT_LPWSTR = common dso_local global i64 0, align 8
@DEVICE_STATE_NOTPRESENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_devices_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_devices_from_reg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [39 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %13 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %14 = load i32, i32* @software_mmdevapi, align 4
  %15 = load i32, i32* @KEY_WRITE, align 4
  %16 = load i32, i32* @KEY_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @RegCreateKeyExW(i32* %13, i32 %14, i32 0, i32* null, i32 0, i32 %19, i32* null, i32** %3, i32* null)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %0
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @reg_capture, align 4
  %27 = load i32, i32* @KEY_READ, align 4
  %28 = load i32, i32* @KEY_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @RegCreateKeyExW(i32* %25, i32 %26, i32 0, i32* null, i32 0, i32 %31, i32* null, i32** @key_capture, i32* null)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %24, %0
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @reg_render, align 4
  %40 = load i32, i32* @KEY_READ, align 4
  %41 = load i32, i32* @KEY_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @RegCreateKeyExW(i32* %38, i32 %39, i32 0, i32* null, i32 0, i32 %44, i32* null, i32** @key_render, i32* null)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %37, %33
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @RegCloseKey(i32* %47)
  %49 = load i32*, i32** @key_capture, align 8
  store i32* %49, i32** %4, align 8
  %50 = load i32, i32* @eCapture, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32*, i32** @key_capture, align 8
  %56 = call i32 @RegCloseKey(i32* %55)
  store i32* null, i32** @key_capture, align 8
  store i32* null, i32** @key_render, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @E_FAIL, align 4
  store i32 %59, i32* %1, align 4
  br label %137

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %134, %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %63 = load i32, i32* @VT_EMPTY, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %66 = bitcast %struct.TYPE_4__* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %66, i8 0, i64 4, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  %73 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %74 = call i64 @RegEnumKeyExW(i32* %70, i32 %71, i32* %73, i32* %9, i32* null, i32* null, i32* null, i32* null)
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %61
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** @key_capture, align 8
  %81 = icmp eq i32* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** @key_render, align 8
  store i32* %83, i32** %4, align 8
  %84 = load i32, i32* @eRender, align 4
  store i32 %84, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %134

85:                                               ; preds = %78
  br label %135

86:                                               ; preds = %61
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %134

91:                                               ; preds = %86
  %92 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %93 = call i32 @CLSIDFromString(i32* %92, i32* %8)
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @MMDevice_GetPropValue(i32* %8, i32 %97, i32* @DEVPKEY_Device_FriendlyName, %struct.TYPE_5__* %10)
  %99 = call i64 @SUCCEEDED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VT_LPWSTR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @lstrlenW(i32 %109)
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i32, i32* %11, align 4
  %117 = call i32* @HeapAlloc(i32 %115, i32 0, i32 %116)
  store i32* %117, i32** %12, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @memcpy(i32* %118, i32 %121, i32 %122)
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @DEVICE_STATE_NOTPRESENT, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @MMDevice_Create(i32* %124, i32* %8, i32 %125, i32 %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @CoTaskMemFree(i32 %131)
  br label %133

133:                                              ; preds = %106, %101, %96, %91
  br label %134

134:                                              ; preds = %133, %90, %82
  br i1 true, label %61, label %135

135:                                              ; preds = %134, %85
  %136 = load i32, i32* @S_OK, align 4
  store i32 %136, i32* %1, align 4
  br label %137

137:                                              ; preds = %135, %54
  %138 = load i32, i32* %1, align 4
  ret i32 %138
}

declare dso_local i64 @RegCreateKeyExW(i32*, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @RegEnumKeyExW(i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @CLSIDFromString(i32*, i32*) #1

declare dso_local i32 @MMDevice_GetPropValue(i32*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MMDevice_Create(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
