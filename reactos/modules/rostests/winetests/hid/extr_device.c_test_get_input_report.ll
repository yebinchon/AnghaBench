; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_get_input_report.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_get_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HID_USAGE_GENERIC_JOYSTICK = common dso_local global i32 0, align 4
@HID_USAGE_GENERIC_GAMEPAD = common dso_local global i32 0, align 4
@HID_USAGE_PAGE_GENERIC = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No device found for testing\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get product string(0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"HidD_GetInputRpeort tests on device :%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to get preparsed data(0x%x)\0A\00", align 1
@HIDP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get Caps(0x%x)\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@READ_MAX_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Test your device for the next %i seconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Report ID (0) is not the first byte of the data\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Input report (%i): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to get Input Report, (%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"REMAINING: %d ms\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to free preparsed data(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_input_report() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [128 x i32], align 16
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8], align 1
  store i64* null, i64** %4, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %16 = load i32, i32* @HID_USAGE_GENERIC_JOYSTICK, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @HID_USAGE_GENERIC_GAMEPAD, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @HID_USAGE_PAGE_GENERIC, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %21 = load i32, i32* @GENERIC_READ, align 4
  %22 = call i64 @get_device(i32 %19, i32* %20, i32 2, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* @GENERIC_READ, align 4
  %27 = call i64 @get_device(i32 0, i32* null, i32 0, i32 %26)
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %25, %0
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %161

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %36 = call i32 @HidD_GetProductString(i64 %34, i32* %35, i32 512)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %41 = call i32 @wine_dbgstr_w(i32* %40)
  %42 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @HidD_GetPreparsedData(i64 %43, i32* %1)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i64 @HidP_GetCaps(i32 %48, %struct.TYPE_4__* %2)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @HIDP_STATUS_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = call i32 (...) @GetProcessHeap()
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @HeapAlloc(i32 %56, i32 0, i32 %58)
  %60 = bitcast i8* %59 to i64*
  store i64* %60, i64** %4, align 8
  %61 = load i64, i64* @winetest_interactive, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %33
  %64 = load i32, i32* @READ_MAX_TIME, align 4
  store i32 %64, i32* %7, align 4
  br label %66

65:                                               ; preds = %33
  store i32 100, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %63
  %67 = load i64, i64* @winetest_interactive, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 1000
  %72 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = call i32 (...) @GetProcessHeap()
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 3, %76
  %78 = call i8* @HeapAlloc(i32 %74, i32 0, i32 %77)
  store i8* %78, i8** %8, align 8
  %79 = call i32 (...) @GetTickCount()
  store i32 %79, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %143, %73
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @HidD_GetInputReport(i64 %83, i64* %84, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = call i32 (...) @GetTickCount()
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %134

93:                                               ; preds = %80
  %94 = load i64*, i64** %4, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 0, i8* %101, align 1
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %119, %93
  %103 = load i32, i32* %13, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %109 = load i64*, i64** %4, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %118 = call i32 @strcat(i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %102

122:                                              ; preds = %102
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %124, i8* %125)
  %127 = load i32, i32* %1, align 4
  %128 = load i64*, i64** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @process_data(i32 %132, i32 %127, i64* %128, i32 %130)
  br label %137

134:                                              ; preds = %80
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %122
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = call i32 @Sleep(i32 500)
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %80, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %1, align 4
  %149 = call i32 @HidD_FreePreparsedData(i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i64 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @CloseHandle(i64 %153)
  %155 = call i32 (...) @GetProcessHeap()
  %156 = load i64*, i64** %4, align 8
  %157 = call i32 (i32, i32, ...) @HeapFree(i32 %155, i32 0, i64* %156)
  %158 = call i32 (...) @GetProcessHeap()
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 (i32, i32, ...) @HeapFree(i32 %158, i32 0, i8* %159)
  br label %161

161:                                              ; preds = %147, %31
  ret void
}

declare dso_local i64 @get_device(i32, i32*, i32, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @HidD_GetProductString(i64, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @HidD_GetPreparsedData(i64, i32*) #1

declare dso_local i64 @HidP_GetCaps(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @HidD_GetInputReport(i64, i64*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @process_data(i32, i32, i64*, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @HeapFree(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
