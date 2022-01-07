; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_get_device.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@DIGCF_DEVICEINTERFACE = common dso_local global i32 0, align 4
@DIGCF_PRESENT = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Not enough permissions to read device %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"got error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get preparsed data(0x%x)\0A\00", align 1
@HIDP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get Caps(0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to free preparsed data(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32, i32)* @get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_device(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = call i32 @HidD_GetHidGuid(i32* %10)
  %27 = call i32 @ZeroMemory(%struct.TYPE_12__* %13, i32 4)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_11__* @HeapAlloc(i32 %29, i32 0, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %15, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 8, i32* %36, align 4
  %37 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %38 = load i32, i32* @DIGCF_PRESENT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @SetupDiGetClassDevsW(i32* %10, i32* null, i32* null, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %159, %75, %4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @SetupDiEnumDeviceInterfaces(i32 %42, i32* null, i32* %10, i32 %43, %struct.TYPE_12__* %13)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %160

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @SetupDiGetDeviceInterfaceDetailW(i32 %49, %struct.TYPE_12__* %13, %struct.TYPE_11__* %50, i32 %54, i32* null, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %159

57:                                               ; preds = %46
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @FILE_SHARE_READ, align 4
  %63 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @OPEN_EXISTING, align 4
  %66 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %67 = call i64 @CreateFileW(i32 %60, i32 %61, i32 %64, i32* null, i32 %65, i32 %66, i32 0)
  store i64 %67, i64* %20, align 8
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @wine_dbgstr_w(i32 %78)
  %80 = call i32 @trace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %41

81:                                               ; preds = %71, %57
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 (...) @GetLastError()
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %20, align 8
  %89 = call i32 @HidD_GetPreparsedData(i64 %88, i32* %18)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* %18, align 4
  %94 = call i64 @HidP_GetCaps(i32 %93, %struct.TYPE_13__* %19)
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @HIDP_STATUS_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @HidD_FreePreparsedData(i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i64 (...) @GetLastError()
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %81
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %108, %81
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %119 = call i32 @HeapFree(i32 %117, i32 0, %struct.TYPE_11__* %118)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @SetupDiDestroyDeviceInfoList(i32 %120)
  %122 = load i64, i64* %20, align 8
  store i64 %122, i64* %5, align 8
  br label %166

123:                                              ; preds = %113
  store i32 0, i32* %21, align 4
  br label %124

124:                                              ; preds = %152, %123
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %124
  %129 = load i64*, i64** %7, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i64*, i64** %7, align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %135, %128
  %145 = call i32 (...) @GetProcessHeap()
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %147 = call i32 @HeapFree(i32 %145, i32 0, %struct.TYPE_11__* %146)
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @SetupDiDestroyDeviceInfoList(i32 %148)
  %150 = load i64, i64* %20, align 8
  store i64 %150, i64* %5, align 8
  br label %166

151:                                              ; preds = %135
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %21, align 4
  br label %124

155:                                              ; preds = %124
  br label %156

156:                                              ; preds = %155, %108
  %157 = load i64, i64* %20, align 8
  %158 = call i32 @CloseHandle(i64 %157)
  br label %159

159:                                              ; preds = %156, %46
  br label %41

160:                                              ; preds = %41
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %163 = call i32 @HeapFree(i32 %161, i32 0, %struct.TYPE_11__* %162)
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @SetupDiDestroyDeviceInfoList(i32 %164)
  store i64 0, i64* %5, align 8
  br label %166

166:                                              ; preds = %160, %144, %116
  %167 = load i64, i64* %5, align 8
  ret i64 %167
}

declare dso_local i32 @HidD_GetHidGuid(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetupDiGetClassDevsW(i32*, i32*, i32*, i32) #1

declare dso_local i64 @SetupDiEnumDeviceInterfaces(i32, i32*, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @SetupDiGetDeviceInterfaceDetailW(i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @HidD_GetPreparsedData(i64, i32*) #1

declare dso_local i64 @HidP_GetCaps(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
