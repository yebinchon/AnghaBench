; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_test_query_svc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_service.c_test_query_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@spooler = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Spooler service doesn't exist\0A\00", align 1
@ERROR_INVALID_ADDRESS = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unexpected last error %d\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected ERROR_ACCESS_DENIED, got %d\0A\00", align 1
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Expected success, got error %u\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_LEVEL, got %d\0A\00", align 1
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Needed buffersize is wrong : %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [46 x i8] c"Expect a process id for this running service\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Expect no process id for this stopped service\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_svc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = call i32 @QueryServiceStatus(i32* null, i32* null)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @GetLastError()
  %16 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %22 = call i32* @OpenSCManagerA(i32* null, i32* null, i32 %21)
  store i32* %22, i32** %1, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @spooler, align 4
  %25 = load i32, i32* @STANDARD_RIGHTS_READ, align 4
  %26 = call i32* @OpenServiceA(i32* %23, i32 %24, i32 %25)
  store i32* %26, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %0
  %30 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @CloseServiceHandle(i32* %31)
  br label %268

33:                                               ; preds = %0
  %34 = call i32 @SetLastError(i32 -559038737)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @QueryServiceStatus(i32* %35, i32* null)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 (...) @GetLastError()
  %43 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = call i32 (...) @GetLastError()
  %47 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %33
  %50 = phi i1 [ true, %33 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @SetLastError(i32 -559038737)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @QueryServiceStatus(i32* %55, i32* %4)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 (...) @GetLastError()
  %63 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @CloseServiceHandle(i32* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* @spooler, align 4
  %72 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %73 = call i32* @OpenServiceA(i32* %70, i32 %71, i32 %72)
  store i32* %73, i32** %2, align 8
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @QueryServiceStatus(i32* %75, i32* %4)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @CloseServiceHandle(i32* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32, i32* @spooler, align 4
  %84 = load i32, i32* @STANDARD_RIGHTS_READ, align 4
  %85 = call i32* @OpenServiceA(i32* %82, i32 %83, i32 %84)
  store i32* %85, i32** %2, align 8
  %86 = call i32 @SetLastError(i32 -559038737)
  %87 = call i32 @pQueryServiceStatusEx(i32* null, i32 1, i32* null, i32 0, i32* null)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 (...) @GetLastError()
  %94 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = call i32 @SetLastError(i32 -559038737)
  %100 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %101 = call i32 @pQueryServiceStatusEx(i32* null, i32 %100, i32* null, i32 0, i32* %7)
  store i32 %101, i32* %3, align 4
  %102 = call i32 (...) @GetLastError()
  %103 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %49
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %112, 16
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = call i32 (...) @GetLastError()
  %118 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %105, %49
  %124 = call i32 (...) @GetProcessHeap()
  %125 = call %struct.TYPE_4__* @HeapAlloc(i32 %124, i32 0, i32 16)
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %5, align 8
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %6, align 4
  %127 = call i32 @SetLastError(i32 -559038737)
  %128 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = bitcast %struct.TYPE_4__* %129 to i32*
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @pQueryServiceStatusEx(i32* null, i32 %128, i32* %130, i32 %131, i32* %7)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %138 = call i32 (...) @GetLastError()
  %139 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (...) @GetLastError()
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = call i32 (...) @GetProcessHeap()
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = call i32 @HeapFree(i32 %144, i32 0, %struct.TYPE_4__* %145)
  %147 = call i32 @SetLastError(i32 -559038737)
  %148 = load i32*, i32** %2, align 8
  %149 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %150 = call i32 @pQueryServiceStatusEx(i32* %148, i32 %149, i32* null, i32 0, i32* %7)
  store i32 %150, i32* %3, align 4
  %151 = call i32 (...) @GetLastError()
  %152 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %123
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp eq i64 %161, 16
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  %166 = call i32 (...) @GetLastError()
  %167 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %154, %123
  %173 = call i32 (...) @GetProcessHeap()
  %174 = call %struct.TYPE_4__* @HeapAlloc(i32 %173, i32 0, i32 16)
  store %struct.TYPE_4__* %174, %struct.TYPE_4__** %5, align 8
  store i32 16, i32* %6, align 4
  %175 = call i32 @SetLastError(i32 -559038737)
  %176 = load i32*, i32** %2, align 8
  %177 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = bitcast %struct.TYPE_4__* %178 to i32*
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @pQueryServiceStatusEx(i32* %176, i32 %177, i32* %179, i32 %180, i32* %7)
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %187 = call i32 (...) @GetLastError()
  %188 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 (...) @GetLastError()
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %191)
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, %struct.TYPE_4__* %194)
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @CloseServiceHandle(i32* %196)
  %198 = load i32*, i32** %1, align 8
  %199 = load i32, i32* @spooler, align 4
  %200 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %201 = call i32* @OpenServiceA(i32* %198, i32 %199, i32 %200)
  store i32* %201, i32** %2, align 8
  %202 = call i32 (...) @GetProcessHeap()
  %203 = call %struct.TYPE_4__* @HeapAlloc(i32 %202, i32 0, i32 16)
  store %struct.TYPE_4__* %203, %struct.TYPE_4__** %5, align 8
  store i32 16, i32* %6, align 4
  %204 = call i32 @SetLastError(i32 -559038737)
  %205 = load i32*, i32** %2, align 8
  %206 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %208 = bitcast %struct.TYPE_4__* %207 to i32*
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @pQueryServiceStatusEx(i32* %205, i32 %206, i32* %208, i32 %209, i32* %7)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 (...) @GetLastError()
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SERVICE_RUNNING, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %172
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %233

226:                                              ; preds = %172
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  br label %233

233:                                              ; preds = %226, %219
  %234 = call i32 @SetLastError(i32 -559038737)
  %235 = load i32*, i32** %2, align 8
  %236 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = bitcast %struct.TYPE_4__* %237 to i32*
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @pQueryServiceStatusEx(i32* %235, i32 %236, i32* %238, i32 %239, i32* null)
  store i32 %240, i32* %3, align 4
  %241 = load i32, i32* %3, align 4
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %246 = call i32 (...) @GetLastError()
  %247 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i64 @broken(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %233
  %253 = call i32 (...) @GetLastError()
  %254 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  %255 = icmp eq i32 %253, %254
  br label %256

256:                                              ; preds = %252, %233
  %257 = phi i1 [ true, %233 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 (...) @GetLastError()
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %259)
  %261 = call i32 (...) @GetProcessHeap()
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %263 = call i32 @HeapFree(i32 %261, i32 0, %struct.TYPE_4__* %262)
  %264 = load i32*, i32** %2, align 8
  %265 = call i32 @CloseServiceHandle(i32* %264)
  %266 = load i32*, i32** %1, align 8
  %267 = call i32 @CloseServiceHandle(i32* %266)
  br label %268

268:                                              ; preds = %256, %29
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @QueryServiceStatus(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenSCManagerA(i32*, i32*, i32) #1

declare dso_local i32* @OpenServiceA(i32*, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @pQueryServiceStatusEx(i32*, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
