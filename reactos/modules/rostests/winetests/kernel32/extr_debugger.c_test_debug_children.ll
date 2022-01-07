; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_debug_children.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_debug_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_blackbox = type { i32 }
%struct.TYPE_9__ = type { i64, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"debugger children\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pDebugActiveProcessStop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"DebugActiveProcessStop or CheckRemoteDebuggerPresent not available, skipping test.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %s \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_init\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"OpenEvent failed, last error %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_attach\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"CreateEvent failed, last error %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"CreateProcess failed, last error %d.\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"DebugActiveProcess failed, last error %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"SetEvent failed, last error %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"CheckRemoteDebuggerPresent failed, last error %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Expected debug != 0, got %x.\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"WaitForDebugEvent failed, last error %d.\0A\00", align 1
@EXIT_PROCESS_DEBUG_EVENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DBG_CONTINUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"ContinueDebugEvent failed, last error %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"didn't get any child events (flag: %x).\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"got child event (flag: %x).\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"CloseHandle failed, last error %d.\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Got %d failures from child process.\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"DeleteFileA failed, last error %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @test_debug_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_debug_children(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.child_blackbox, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* @pDebugActiveProcessStop, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = call i32 @win_skip(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %220

35:                                               ; preds = %3
  %36 = call i32 @get_file_name(i8* %26)
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = add nsw i64 %39, %41
  %43 = call i64 @strlen(i8* %26)
  %44 = add nsw i64 %42, %43
  %45 = add nsw i64 %44, 5
  %46 = call i8* @HeapAlloc(i32 %37, i32 0, i64 %45)
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49, i8* %26)
  %51 = call i8* @strrchr(i8* %26, i8 signext 92)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  br label %58

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i8* [ %56, %54 ], [ %26, %57 ]
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strcpy(i8* %29, i8* %60)
  %62 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32* @CreateEventA(i32* null, i32 %63, i32 %64, i8* %29)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = call i8* @strrchr(i8* %26, i8 signext 92)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  br label %78

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i8* [ %76, %74 ], [ %26, %77 ]
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @strcpy(i8* %29, i8* %80)
  %82 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32* @CreateEventA(i32* null, i32 %83, i32 %86, i8* %29)
  store i32* %87, i32** %16, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 (...) @GetLastError()
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 4)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 4, i32* %94, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @CreateProcessA(i32* null, i8* %95, i32* null, i32* null, i32 %96, i32 %97, i32* null, i32* null, %struct.TYPE_8__* %14, %struct.TYPE_9__* %13)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, i8* %103)
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %78
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* @INFINITE, align 4
  %110 = call i32 @WaitForSingleObject(i32* %108, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @DebugActiveProcess(i64 %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @SetEvent(i32* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %107, %78
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @pCheckRemoteDebuggerPresent(i32* %124, i32* %18)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 (...) @GetLastError()
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %175, %122
  %133 = load i32, i32* @INFINITE, align 4
  %134 = call i32 @WaitForDebugEvent(%struct.TYPE_10__* %22, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = call i32 (...) @GetLastError()
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %176

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EXIT_PROCESS_DEBUG_EVENT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %176

153:                                              ; preds = %146, %141
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %20, align 4
  br label %161

161:                                              ; preds = %159, %153
  br label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DBG_CONTINUE, align 4
  %168 = call i32 @ContinueDebugEvent(i64 %164, i32 %166, i32 %167)
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %162
  br label %176

175:                                              ; preds = %162
  br label %132

176:                                              ; preds = %174, %152, %140
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @ok(i32 %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %181)
  br label %190

183:                                              ; preds = %176
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %183, %179
  %191 = load i32*, i32** %15, align 8
  %192 = call i32 @CloseHandle(i32* %191)
  %193 = load i32*, i32** %16, align 8
  %194 = call i32 @CloseHandle(i32* %193)
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @CloseHandle(i32* %196)
  store i32 %197, i32* %19, align 4
  %198 = load i32, i32* %19, align 4
  %199 = call i32 (...) @GetLastError()
  %200 = call i32 @ok(i32 %198, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @CloseHandle(i32* %202)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = call i32 (...) @GetLastError()
  %206 = call i32 @ok(i32 %204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %205)
  %207 = call i32 @load_blackbox(i8* %26, %struct.child_blackbox* %8, i32 4)
  %208 = getelementptr inbounds %struct.child_blackbox, %struct.child_blackbox* %8, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = getelementptr inbounds %struct.child_blackbox, %struct.child_blackbox* %8, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ok(i32 %212, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %214)
  %216 = call i32 @DeleteFileA(i8* %26)
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = call i32 (...) @GetLastError()
  %219 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %218)
  store i32 0, i32* %21, align 4
  br label %220

220:                                              ; preds = %190, %33
  %221 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %21, align 4
  switch i32 %222, label %224 [
    i32 0, label %223
    i32 1, label %223
  ]

223:                                              ; preds = %220, %220
  ret void

224:                                              ; preds = %220
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @get_file_name(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32* @CreateEventA(i32*, i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @WaitForSingleObject(i32*, i32) #2

declare dso_local i32 @DebugActiveProcess(i64) #2

declare dso_local i32 @SetEvent(i32*) #2

declare dso_local i32 @pCheckRemoteDebuggerPresent(i32*, i32*) #2

declare dso_local i32 @WaitForDebugEvent(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @ContinueDebugEvent(i64, i32, i32) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @load_blackbox(i8*, %struct.child_blackbox*, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
