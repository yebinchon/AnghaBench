; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_read_device.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_read_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@HID_USAGE_GENERIC_JOYSTICK = common dso_local global i32 0, align 4
@HID_USAGE_GENERIC_GAMEPAD = common dso_local global i32 0, align 4
@HID_USAGE_PAGE_GENERIC = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No device found for reading\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get product string(0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Read tests on device :%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to get preparsed data(0x%x)\0A\00", align 1
@HIDP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get Caps(0x%x)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@READ_MAX_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Test your device for the next %i seconds\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"REMAINING: %d ms\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Input report (%i): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Failed to free preparsed data(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca [128 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [5 x i8], align 1
  store i8* null, i8** %5, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %19 = load i32, i32* @HID_USAGE_GENERIC_JOYSTICK, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @HID_USAGE_GENERIC_GAMEPAD, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* @HID_USAGE_PAGE_GENERIC, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %24 = load i32, i32* @GENERIC_READ, align 4
  %25 = call i64 @get_device(i32 %22, i32* %23, i32 2, i32 %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %0
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = call i64 @get_device(i32 0, i32* null, i32 0, i32 %29)
  store i64 %30, i64* %15, align 8
  br label %31

31:                                               ; preds = %28, %0
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %187

36:                                               ; preds = %31
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %39 = call i32 @HidD_GetProductString(i64 %37, i32* %38, i32 512)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %44 = call i32 @wine_dbgstr_w(i32* %43)
  %45 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @HidD_GetPreparsedData(i64 %46, i32* %1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 (...) @GetLastError()
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @HidP_GetCaps(i32 %51, %struct.TYPE_9__* %2)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @HIDP_STATUS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = call i32 (...) @GetProcessHeap()
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @HeapAlloc(i32 %59, i32 0, i32 %61)
  store i8* %62, i8** %5, align 8
  %63 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 8)
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i64 @CreateEventA(i32* null, i32 %64, i32 %65, i32* null)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @winetest_interactive, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %36
  %71 = load i32, i32* @READ_MAX_TIME, align 4
  store i32 %71, i32* %12, align 4
  store i32 1000, i32* %9, align 4
  br label %73

72:                                               ; preds = %36
  store i32 100, i32* %9, align 4
  store i32 100, i32* %12, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = load i64, i64* @winetest_interactive, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 1000
  %79 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = call i32 (...) @GetProcessHeap()
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 3, %83
  %85 = call i8* @HeapAlloc(i32 %81, i32 0, i32 %84)
  store i8* %85, i8** %13, align 8
  %86 = call i32 (...) @GetTickCount()
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %166, %80
  %88 = load i64, i64* %15, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ReadFile(i64 %88, i8* %89, i32 %91, i32* null, %struct.TYPE_8__* %3)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @WaitForSingleObject(i64 %94, i32 %95)
  %97 = load i64, i64* @WAIT_OBJECT_0, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ResetEvent(i64 %101)
  %103 = call i32 (...) @GetTickCount()
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %166

110:                                              ; preds = %87
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ResetEvent(i64 %112)
  %114 = call i32 (...) @GetTickCount()
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %11, align 4
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32 @GetOverlappedResult(i64 %117, %struct.TYPE_8__* %3, i32* %6, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %110
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 0, i8* %124, align 1
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %148, %122
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* %16, align 4
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %130, %132
  br label %134

134:                                              ; preds = %129, %125
  %135 = phi i1 [ false, %125 ], [ %133, %129 ]
  br i1 %135, label %136, label %151

136:                                              ; preds = %134
  %137 = getelementptr inbounds [5 x i8], [5 x i8]* %17, i64 0, i64 0
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 @sprintf(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds [5 x i8], [5 x i8]* %17, i64 0, i64 0
  %147 = call i32 @strcat(i8* %145, i8* %146)
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %125

151:                                              ; preds = %134
  %152 = load i32, i32* %6, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %152, i8* %153)
  %155 = load i32, i32* %1, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @process_data(i32 %159, i32 %155, i8* %156, i32 %157)
  br label %161

161:                                              ; preds = %151, %110
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %99
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %87, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @CloseHandle(i64 %172)
  %174 = load i32, i32* %1, align 4
  %175 = call i32 @HidD_FreePreparsedData(i32 %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i64 (...) @GetLastError()
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @CloseHandle(i64 %179)
  %181 = call i32 (...) @GetProcessHeap()
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 @HeapFree(i32 %181, i32 0, i8* %182)
  %184 = call i32 (...) @GetProcessHeap()
  %185 = load i8*, i8** %13, align 8
  %186 = call i32 @HeapFree(i32 %184, i32 0, i8* %185)
  br label %187

187:                                              ; preds = %170, %34
  ret void
}

declare dso_local i64 @get_device(i32, i32*, i32, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @HidD_GetProductString(i64, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @HidD_GetPreparsedData(i64, i32*) #1

declare dso_local i64 @HidP_GetCaps(i32, %struct.TYPE_9__*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @CreateEventA(i32*, i32, i32, i32*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @ResetEvent(i64) #1

declare dso_local i32 @GetOverlappedResult(i64, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @process_data(i32, i32, i8*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
