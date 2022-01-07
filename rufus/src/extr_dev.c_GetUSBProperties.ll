; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_dev.c_GetUSBProperties.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_dev.c_GetUSBProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i8*, i64, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@CM_Get_DevNode_Registry_PropertyA = common dso_local global i32 0, align 4
@Cfgmgr32 = common dso_local global i32 0, align 4
@CR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Could not get device instance handle for '%s': CR error %d\00", align 1
@CM_DRP_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not get port for '%s': CR error %d\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not open hub %s: %s\00", align 1
@IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Could not get node connection information for '%s': %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@nWindowsVersion = common dso_local global i64 0, align 8
@WINDOWS_8 = common dso_local global i64 0, align 8
@IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX_V2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Could not get node connection information (V2) for device '%s': %s\00", align 1
@USB_SPEED_SUPER_PLUS = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_14__*)* @GetUSBProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetUSBProperties(i8* %0, i8* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* @CM_Get_DevNode_Registry_PropertyA, align 4
  %17 = load i32, i32* @Cfgmgr32, align 4
  %18 = call i32 @PF_INIT(i32 %16, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = icmp eq %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %3
  br label %179

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @CM_Locate_DevNodeA(i32* %11, i8* %29, i32 0)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @CR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @uprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %36)
  br label %179

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  store i32 8, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @CM_DRP_ADDRESS, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = ptrtoint i64* %44 to i32
  %46 = call i64 @pfCM_Get_DevNode_Registry_PropertyA(i32 %41, i32 %42, i32* null, i32 %45, i32* %10, i32 0)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @CR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %51, i64 %52)
  br label %179

54:                                               ; preds = %38
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @GENERIC_WRITE, align 4
  %57 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %58 = load i32, i32* @OPEN_EXISTING, align 4
  %59 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %60 = call i64 @CreateFileA(i8* %55, i32 %56, i32 %57, i32* null, i32 %58, i32 %59, i32* null)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 (...) @WindowsErrorString()
  %67 = call i32 @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %65, i64 %66)
  br label %179

68:                                               ; preds = %54
  store i32 80, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @memset(%struct.TYPE_15__* %12, i32 0, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @DeviceIoControl(i64 %76, i32 %77, %struct.TYPE_15__* %12, i32 %78, %struct.TYPE_15__* %12, i32 %79, i32* %10, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %68
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 (...) @WindowsErrorString()
  %85 = call i32 @uprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %83, i64 %84)
  br label %179

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91, %86
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %96, %91
  %114 = load i64, i64* @nWindowsVersion, align 8
  %115 = load i64, i64* @WINDOWS_8, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %178

117:                                              ; preds = %113
  store i32 80, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @memset(%struct.TYPE_15__* %13, i32 0, i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i8* %123, i8** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* @IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX_V2, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @DeviceIoControl(i64 %129, i32 %130, %struct.TYPE_15__* %13, i32 %131, %struct.TYPE_15__* %13, i32 %132, i32* %10, i32* null)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %117
  %136 = load i8*, i8** %5, align 8
  %137 = call i64 (...) @WindowsErrorString()
  %138 = call i32 @uprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8* %136, i64 %137)
  br label %177

139:                                              ; preds = %117
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i64, i64* @USB_SPEED_SUPER_PLUS, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  br label %176

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* @USB_SPEED_SUPER, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  br label %175

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  store i32 2, i32* %164, align 8
  br label %174

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %165
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %153
  br label %176

176:                                              ; preds = %175, %144
  br label %177

177:                                              ; preds = %176, %135
  br label %178

178:                                              ; preds = %177, %113
  br label %179

179:                                              ; preds = %178, %82, %64, %50, %34, %27
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @safe_closehandle(i64 %180)
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local i32 @PF_INIT(i32, i32) #1

declare dso_local i64 @CM_Locate_DevNodeA(i32*, i8*, i32) #1

declare dso_local i32 @uprintf(i8*, i8*, i64) #1

declare dso_local i64 @pfCM_Get_DevNode_Registry_PropertyA(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @WindowsErrorString(...) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @DeviceIoControl(i64, i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @safe_closehandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
