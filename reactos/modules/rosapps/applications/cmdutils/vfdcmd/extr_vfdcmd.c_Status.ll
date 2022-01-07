; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Status.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@driver_state = common dso_local global i32 0, align 4
@VFD_NOT_INSTALLED = common dso_local global i32 0, align 4
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_GET_CONFIG_NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VFD_NG = common dso_local global i32 0, align 4
@MSG_DRIVER_FILE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MSG_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"(debug)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_GET_VERSION_NG = common dso_local global i32 0, align 4
@MSG_START_TYPE = common dso_local global i32 0, align 4
@MSG_START_AUTO = common dso_local global i32 0, align 4
@MSG_START_BOOT = common dso_local global i32 0, align 4
@MSG_START_DEMAND = common dso_local global i32 0, align 4
@MSG_START_DISABLED = common dso_local global i32 0, align 4
@MSG_START_SYSTEM = common dso_local global i32 0, align 4
@MSG_UNKNOWN_LONG = common dso_local global i32 0, align 4
@MSG_DRIVER_STATUS = common dso_local global i32 0, align 4
@MSG_STATUS_STOPPED = common dso_local global i32 0, align 4
@MSG_STATUS_START_P = common dso_local global i32 0, align 4
@MSG_STATUS_STOP_P = common dso_local global i32 0, align 4
@MSG_STATUS_RUNNING = common dso_local global i32 0, align 4
@MSG_STATUS_CONT_P = common dso_local global i32 0, align 4
@MSG_STATUS_PAUSE_P = common dso_local global i32 0, align 4
@MSG_STATUS_PAUSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSG_SHELLEXT_ENABLED = common dso_local global i32 0, align 4
@MSG_SHELLEXT_DISABLED = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i32 0, align 4
@VFD_MAXIMUM_DEVICES = common dso_local global i32 0, align 4
@MSG_ACCESS_NG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Status(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32 @UNREFERENCED_PARAMETER(i8** %17)
  %19 = load i32, i32* @driver_state, align 4
  %20 = load i32, i32* @VFD_NOT_INSTALLED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %24 = call i32 (i32, ...) @PrintMessage(i32 %23)
  br label %134

25:                                               ; preds = %1
  %26 = call i64 @VfdGetDriverConfig(i32* %16, i64* %7)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @MSG_GET_CONFIG_NG, align 4
  %32 = call i32 (i32, ...) @PrintMessage(i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = call i8* @SystemError(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @VFD_NG, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %181

37:                                               ; preds = %25
  %38 = load i32, i32* @MSG_DRIVER_FILE, align 4
  %39 = call i32 (i32, ...) @PrintMessage(i32 %38, i32* %16)
  store i64 0, i64* %8, align 8
  %40 = load i32, i32* @driver_state, align 4
  %41 = icmp eq i32 %40, 132
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = call i64 @VfdOpenDevice(i32 0)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @VfdGetDriverVersion(i64 %48, i64* %8)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i64 @VfdCheckDriverFile(i32* %16, i64* %8)
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* @MSG_DRIVER_VERSION, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @HIWORD(i64 %64)
  %66 = and i32 %65, 32767
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @LOWORD(i64 %67)
  %69 = load i64, i64* %8, align 8
  %70 = and i64 %69, 2147483648
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 (i32, ...) @PrintMessage(i32 %63, i32 %66, i32 %68, i8* %73)
  br label %81

75:                                               ; preds = %58
  %76 = load i32, i32* @MSG_GET_VERSION_NG, align 4
  %77 = call i32 (i32, ...) @PrintMessage(i32 %76)
  %78 = load i64, i64* %10, align 8
  %79 = call i8* @SystemError(i64 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %75, %62
  %82 = load i32, i32* @MSG_START_TYPE, align 4
  %83 = call i32 (i32, ...) @PrintMessage(i32 %82)
  %84 = load i64, i64* %7, align 8
  switch i64 %84, label %100 [
    i64 139, label %85
    i64 138, label %88
    i64 136, label %91
    i64 135, label %94
    i64 128, label %97
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* @MSG_START_AUTO, align 4
  %87 = call i32 (i32, ...) @PrintMessage(i32 %86)
  br label %104

88:                                               ; preds = %81
  %89 = load i32, i32* @MSG_START_BOOT, align 4
  %90 = call i32 (i32, ...) @PrintMessage(i32 %89)
  br label %104

91:                                               ; preds = %81
  %92 = load i32, i32* @MSG_START_DEMAND, align 4
  %93 = call i32 (i32, ...) @PrintMessage(i32 %92)
  br label %104

94:                                               ; preds = %81
  %95 = load i32, i32* @MSG_START_DISABLED, align 4
  %96 = call i32 (i32, ...) @PrintMessage(i32 %95)
  br label %104

97:                                               ; preds = %81
  %98 = load i32, i32* @MSG_START_SYSTEM, align 4
  %99 = call i32 (i32, ...) @PrintMessage(i32 %98)
  br label %104

100:                                              ; preds = %81
  %101 = load i32, i32* @MSG_UNKNOWN_LONG, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 (i32, ...) @PrintMessage(i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %97, %94, %91, %88, %85
  %105 = load i32, i32* @MSG_DRIVER_STATUS, align 4
  %106 = call i32 (i32, ...) @PrintMessage(i32 %105)
  %107 = load i32, i32* @driver_state, align 4
  switch i32 %107, label %129 [
    i32 130, label %108
    i32 131, label %111
    i32 129, label %114
    i32 132, label %117
    i32 137, label %120
    i32 133, label %123
    i32 134, label %126
  ]

108:                                              ; preds = %104
  %109 = load i32, i32* @MSG_STATUS_STOPPED, align 4
  %110 = call i32 (i32, ...) @PrintMessage(i32 %109)
  br label %133

111:                                              ; preds = %104
  %112 = load i32, i32* @MSG_STATUS_START_P, align 4
  %113 = call i32 (i32, ...) @PrintMessage(i32 %112)
  br label %133

114:                                              ; preds = %104
  %115 = load i32, i32* @MSG_STATUS_STOP_P, align 4
  %116 = call i32 (i32, ...) @PrintMessage(i32 %115)
  br label %133

117:                                              ; preds = %104
  %118 = load i32, i32* @MSG_STATUS_RUNNING, align 4
  %119 = call i32 (i32, ...) @PrintMessage(i32 %118)
  br label %133

120:                                              ; preds = %104
  %121 = load i32, i32* @MSG_STATUS_CONT_P, align 4
  %122 = call i32 (i32, ...) @PrintMessage(i32 %121)
  br label %133

123:                                              ; preds = %104
  %124 = load i32, i32* @MSG_STATUS_PAUSE_P, align 4
  %125 = call i32 (i32, ...) @PrintMessage(i32 %124)
  br label %133

126:                                              ; preds = %104
  %127 = load i32, i32* @MSG_STATUS_PAUSED, align 4
  %128 = call i32 (i32, ...) @PrintMessage(i32 %127)
  br label %133

129:                                              ; preds = %104
  %130 = load i32, i32* @MSG_UNKNOWN_LONG, align 4
  %131 = load i32, i32* @driver_state, align 4
  %132 = call i32 (i32, ...) @PrintMessage(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126, %123, %120, %117, %114, %111, %108
  br label %134

134:                                              ; preds = %133, %22
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %136 = call i64 (...) @VfdCheckHandlers()
  %137 = load i64, i64* @ERROR_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @MSG_SHELLEXT_ENABLED, align 4
  %141 = call i32 (i32, ...) @PrintMessage(i32 %140)
  br label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @MSG_SHELLEXT_DISABLED, align 4
  %144 = call i32 (i32, ...) @PrintMessage(i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* @driver_state, align 4
  %147 = icmp ne i32 %146, 132
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @VFD_OK, align 4
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %181

150:                                              ; preds = %145
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %176, %150
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @VFD_MAXIMUM_DEVICES, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %151
  %156 = load i32, i32* %9, align 4
  %157 = call i64 @VfdOpenDevice(i32 %156)
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = call i64 (...) @GetLastError()
  store i64 %162, i64* %10, align 8
  %163 = load i32, i32* @MSG_ACCESS_NG, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 48
  %166 = call i32 (i32, ...) @PrintMessage(i32 %163, i32 %165)
  %167 = load i64, i64* %10, align 8
  %168 = call i8* @SystemError(i64 %167)
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %168)
  %170 = load i32, i32* @VFD_NG, align 4
  store i32 %170, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %181

171:                                              ; preds = %155
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @PrintImageInfo(i64 %172)
  %174 = load i64, i64* %12, align 8
  %175 = call i32 @CloseHandle(i64 %174)
  br label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %151

179:                                              ; preds = %151
  %180 = load i32, i32* @VFD_OK, align 4
  store i32 %180, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %181

181:                                              ; preds = %179, %161, %148, %30
  %182 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNREFERENCED_PARAMETER(i8**) #2

declare dso_local i32 @PrintMessage(i32, ...) #2

declare dso_local i64 @VfdGetDriverConfig(i32*, i64*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @SystemError(i64) #2

declare dso_local i64 @VfdOpenDevice(i32) #2

declare dso_local i64 @VfdGetDriverVersion(i64, i64*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @VfdCheckDriverFile(i32*, i64*) #2

declare dso_local i32 @HIWORD(i64) #2

declare dso_local i32 @LOWORD(i64) #2

declare dso_local i64 @VfdCheckHandlers(...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @PrintImageInfo(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
