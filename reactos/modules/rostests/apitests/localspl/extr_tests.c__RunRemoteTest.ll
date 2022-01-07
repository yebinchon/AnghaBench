; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/extr_tests.c__RunRemoteTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/extr_tests.c__RunRemoteTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@PRINTER_ENUM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GetModuleFileNameW failed with error %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"File path has no file extension: %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i32] [i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"My DLL file \22%S\22 does not exist!\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i32] [i32 46, i32 101, i32 120, i32 101, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 100, i32 117, i32 109, i32 109, i32 121, i32 0], align 4
@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"OpenSCManagerW failed with error %lu!\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i32] [i32 115, i32 112, i32 111, i32 111, i32 108, i32 101, i32 114, i32 0], align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"OpenServiceW failed for the spooler service with error %lu!\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"QueryServiceStatus failed for the spooler service with error %lu!\0A\00", align 1
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"Spooler Service is not running!\0A\00", align 1
@SERVICE_NAME = common dso_local global i8* null, align 8
@SERVICE_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SERVICE_DOES_NOT_EXIST = common dso_local global i32* null, align 8
@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_DEMAND_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_IGNORE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"CreateServiceW failed with error %lu!\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"OpenServiceW failed with error %lu!\0A\00", align 1
@COMMAND_PIPE_NAME = common dso_local global i32 0, align 4
@PIPE_ACCESS_OUTBOUND = common dso_local global i32 0, align 4
@PIPE_TYPE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_READMODE_MESSAGE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [62 x i8] c"CreateNamedPipeW failed for the command pipe with error %lu!\0A\00", align 1
@OUTPUT_PIPE_NAME = common dso_local global i32 0, align 4
@PIPE_ACCESS_INBOUND = common dso_local global i32 0, align 4
@PIPE_TYPE_BYTE = common dso_local global i32 0, align 4
@PIPE_READMODE_BYTE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [61 x i8] c"CreateNamedPipeW failed for the output pipe with error %lu!\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"StartServiceW failed with error %lu!\0A\00", align 1
@ERROR_PIPE_CONNECTED = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [62 x i8] c"ConnectNamedPipe failed for the command pipe with error %lu!\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"WriteFile failed with error %lu!\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"ConnectNamedPipe failed for the output pipe with error %lu!\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_RunRemoteTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_RunRemoteTest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %20, i64* %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = add nsw i32 %21, 20
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %27 = load i32, i32* @PRINTER_ENUM_NAME, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @EnumPrintersW(i32 %28, i32* null, i32 1, i32* null, i32 0, i64* %5, i64* %6)
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = call i32 @GetModuleFileNameW(i32* null, i32* %25, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = call i32* (...) @GetLastError()
  %35 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %199

36:                                               ; preds = %1
  %37 = call i32 @wcsrchr(i32* %25, i32 46)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  br label %199

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @wcscpy(i32 %43, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %45 = call i64 @FindFirstFileW(i32* %25, i32* %16)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* %25)
  br label %199

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @wcscpy(i32 %52, i8* bitcast ([19 x i32]* @.str.4 to i8*))
  %54 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %55 = call i32* @OpenSCManagerW(i32* null, i32* null, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = call i32* (...) @GetLastError()
  %60 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32* %59)
  br label %199

61:                                               ; preds = %51
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %64 = call i32* @OpenServiceW(i32* %62, i8* bitcast ([8 x i32]* @.str.6 to i8*), i32 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = call i32* (...) @GetLastError()
  %69 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32* %68)
  br label %199

70:                                               ; preds = %61
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @QueryServiceStatus(i32* %71, %struct.TYPE_3__* %13)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call i32* (...) @GetLastError()
  %76 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32* %75)
  br label %199

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SERVICE_RUNNING, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %199

84:                                               ; preds = %77
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @CloseServiceHandle(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i8*, i8** @SERVICE_NAME, align 8
  %89 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %90 = call i32* @OpenServiceW(i32* %87, i8* %88, i32 %89)
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %115, label %93

93:                                               ; preds = %84
  %94 = call i32* (...) @GetLastError()
  %95 = load i32*, i32** @ERROR_SERVICE_DOES_NOT_EXIST, align 8
  %96 = icmp eq i32* %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32*, i32** %11, align 8
  %99 = load i8*, i8** @SERVICE_NAME, align 8
  %100 = load i32, i32* @SERVICE_ALL_ACCESS, align 4
  %101 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %102 = load i32, i32* @SERVICE_DEMAND_START, align 4
  %103 = load i32, i32* @SERVICE_ERROR_IGNORE, align 4
  %104 = call i32* @CreateServiceW(i32* %98, i8* %99, i32* null, i32 %100, i32 %101, i32 %102, i32 %103, i32* %25, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32* %104, i32** %12, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %97
  %108 = call i32* (...) @GetLastError()
  %109 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32* %108)
  br label %199

110:                                              ; preds = %97
  br label %114

111:                                              ; preds = %93
  %112 = call i32* (...) @GetLastError()
  %113 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32* %112)
  br label %199

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %84
  %116 = load i32, i32* @COMMAND_PIPE_NAME, align 4
  %117 = load i32, i32* @PIPE_ACCESS_OUTBOUND, align 4
  %118 = load i32, i32* @PIPE_TYPE_MESSAGE, align 4
  %119 = load i32, i32* @PIPE_READMODE_MESSAGE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PIPE_WAIT, align 4
  %122 = or i32 %120, %121
  %123 = call i64 @CreateNamedPipeW(i32 %116, i32 %117, i32 %122, i32 1, i32 1024, i32 1024, i32 10000, i32* null)
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = call i32* (...) @GetLastError()
  %129 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32* %128)
  br label %199

130:                                              ; preds = %115
  %131 = load i32, i32* @OUTPUT_PIPE_NAME, align 4
  %132 = load i32, i32* @PIPE_ACCESS_INBOUND, align 4
  %133 = load i32, i32* @PIPE_TYPE_BYTE, align 4
  %134 = load i32, i32* @PIPE_READMODE_BYTE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @PIPE_WAIT, align 4
  %137 = or i32 %135, %136
  %138 = call i64 @CreateNamedPipeW(i32 %131, i32 %132, i32 %137, i32 1, i32 1024, i32 1024, i32 10000, i32* null)
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = call i32* (...) @GetLastError()
  %144 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32* %143)
  br label %199

145:                                              ; preds = %130
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @StartServiceW(i32* %146, i32 0, i32* null)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = call i32* (...) @GetLastError()
  %151 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32* %150)
  br label %199

152:                                              ; preds = %145
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @ConnectNamedPipe(i64 %153, i32* null)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = call i32* (...) @GetLastError()
  %158 = load i32*, i32** @ERROR_PIPE_CONNECTED, align 8
  %159 = icmp ne i32* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = call i32* (...) @GetLastError()
  %162 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32* %161)
  br label %199

163:                                              ; preds = %156, %152
  %164 = load i64, i64* %7, align 8
  %165 = load i8*, i8** %2, align 8
  %166 = load i8*, i8** %2, align 8
  %167 = call i64 @strlen(i8* %166)
  %168 = add i64 %167, 1
  %169 = call i32 @WriteFile(i64 %164, i8* %165, i64 %168, i64* %6, i32* null)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %163
  %172 = call i32* (...) @GetLastError()
  %173 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32* %172)
  br label %199

174:                                              ; preds = %163
  %175 = load i64, i64* %9, align 8
  %176 = call i32 @ConnectNamedPipe(i64 %175, i32* null)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = call i32* (...) @GetLastError()
  %180 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i32* %179)
  br label %199

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %192, %181
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %185 = call i64 @ReadFile(i64 %183, i8* %184, i32 1024, i64* %5, i32* null)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i64, i64* %5, align 8
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %187, %182
  %191 = phi i1 [ false, %182 ], [ %189, %187 ]
  br i1 %191, label %192, label %197

192:                                              ; preds = %190
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %194 = load i64, i64* %5, align 8
  %195 = load i32, i32* @stdout, align 4
  %196 = call i32 @fwrite(i8* %193, i32 1, i64 %194, i32 %195)
  br label %182

197:                                              ; preds = %190
  %198 = load i64, i64* @TRUE, align 8
  store i64 %198, i64* %3, align 8
  br label %199

199:                                              ; preds = %197, %178, %171, %160, %149, %142, %127, %111, %107, %82, %74, %67, %58, %49, %40, %33
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i64, i64* %7, align 8
  %205 = call i32 @CloseHandle(i64 %204)
  br label %206

206:                                              ; preds = %203, %199
  %207 = load i64, i64* %9, align 8
  %208 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i64, i64* %9, align 8
  %212 = call i32 @CloseHandle(i64 %211)
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i64, i64* %8, align 8
  %215 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @FindClose(i64 %218)
  br label %220

220:                                              ; preds = %217, %213
  %221 = load i32*, i32** %12, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @CloseServiceHandle(i32* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32*, i32** %11, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @CloseServiceHandle(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i64, i64* %3, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 @ExitProcess(i32 0)
  br label %237

237:                                              ; preds = %235, %232
  %238 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %238)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EnumPrintersW(i32, i32*, i32, i32*, i32, i64*, i64*) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i32 @skip(i8*, ...) #2

declare dso_local i32* @GetLastError(...) #2

declare dso_local i32 @wcsrchr(i32*, i32) #2

declare dso_local i32 @wcscpy(i32, i8*) #2

declare dso_local i64 @FindFirstFileW(i32*, i32*) #2

declare dso_local i32* @OpenSCManagerW(i32*, i32*, i32) #2

declare dso_local i32* @OpenServiceW(i32*, i8*, i32) #2

declare dso_local i32 @QueryServiceStatus(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @CloseServiceHandle(i32*) #2

declare dso_local i32* @CreateServiceW(i32*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @CreateNamedPipeW(i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @StartServiceW(i32*, i32, i32*) #2

declare dso_local i32 @ConnectNamedPipe(i64, i32*) #2

declare dso_local i32 @WriteFile(i64, i8*, i64, i64*, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @ReadFile(i64, i8*, i32, i64*, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @ExitProcess(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
