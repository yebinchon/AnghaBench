; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SetSearchPathMode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SetSearchPathMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to switch to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"SetSearchPathMode succeeded\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@BASE_SEARCH_PATH_PERMANENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"SearchPathA failed err %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\\kernel32.dll\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"found %s expected %s\0A\00", align 1
@BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"SetSearchPathMode failed err %u\0A\00", align 1
@BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetSearchPathMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetSearchPathMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetCurrentDirectoryA(i32 %22, i8* %12)
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @GetTempPathA(i32 %24, i8* %15)
  %26 = call i32 @GetTempFileNameA(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i8* %18)
  %27 = call i32 @DeleteFileA(i8* %18)
  %28 = call i32 @CreateDirectoryA(i8* %18, i32* null)
  %29 = call i32 @SetCurrentDirectoryA(i8* %18)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %0
  %35 = call i32 @RemoveDirectoryA(i8* %18)
  store i32 1, i32* %8, align 4
  br label %213

36:                                               ; preds = %0
  %37 = load i32, i32* @GENERIC_WRITE, align 4
  %38 = load i32, i32* @CREATE_ALWAYS, align 4
  %39 = call i32 @CreateFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 0, i32* null, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @CloseHandle(i32 %40)
  %42 = call i32 @SetLastError(i32 -559038737)
  %43 = call i32 @pSetSearchPathMode(i32 0)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 (...) @GetLastError()
  %50 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = call i32 @pSetSearchPathMode(i32 128)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 (...) @GetLastError()
  %63 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = call i32 @SetLastError(i32 -559038737)
  %69 = load i32, i32* @BASE_SEARCH_PATH_PERMANENT, align 4
  %70 = call i32 @pSetSearchPathMode(i32 %69)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 (...) @GetLastError()
  %77 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = call i32 @SetLastError(i32 -559038737)
  %83 = load i32, i32* @MAX_PATH, align 4
  %84 = call i32 @SearchPathA(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %83, i8* %15, i32* null)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @MAX_PATH, align 4
  %89 = call i32 @GetCurrentDirectoryA(i32 %88, i8* %21)
  %90 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 @lstrcmpiA(i8* %15, i8* %21)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %15, i8* %21)
  %96 = call i32 @SetLastError(i32 -559038737)
  %97 = load i32, i32* @BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE, align 4
  %98 = call i32 @pSetSearchPathMode(i32 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = load i32, i32* @MAX_PATH, align 4
  %104 = call i32 @SearchPathA(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %103, i8* %15, i32* null)
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @MAX_PATH, align 4
  %109 = call i32 @GetSystemDirectoryA(i8* %21, i32 %108)
  %110 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 @lstrcmpiA(i8* %15, i8* %21)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %15, i8* %21)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i32, i32* @BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE, align 4
  %118 = call i32 @pSetSearchPathMode(i32 %117)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  %122 = call i32 @SetLastError(i32 -559038737)
  %123 = load i32, i32* @MAX_PATH, align 4
  %124 = call i32 @SearchPathA(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %123, i8* %15, i32* null)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = call i32 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = call i32 @GetCurrentDirectoryA(i32 %128, i8* %21)
  %130 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %131 = call i32 @lstrcmpiA(i8* %15, i8* %21)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %15, i8* %21)
  %136 = call i32 @SetLastError(i32 -559038737)
  %137 = load i32, i32* @BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE, align 4
  %138 = load i32, i32* @BASE_SEARCH_PATH_PERMANENT, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @pSetSearchPathMode(i32 %139)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* %1, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %146 = call i32 (...) @GetLastError()
  %147 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 (...) @GetLastError()
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = call i32 @SetLastError(i32 -559038737)
  %153 = load i32, i32* @BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE, align 4
  %154 = load i32, i32* @BASE_SEARCH_PATH_PERMANENT, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @pSetSearchPathMode(i32 %155)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = call i32 (...) @GetLastError()
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  %160 = call i32 @SetLastError(i32 -559038737)
  %161 = load i32, i32* @BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE, align 4
  %162 = call i32 @pSetSearchPathMode(i32 %161)
  store i32 %162, i32* %1, align 4
  %163 = load i32, i32* %1, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 (...) @GetLastError()
  %169 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 (...) @GetLastError()
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = call i32 @SetLastError(i32 -559038737)
  %175 = load i32, i32* @BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE, align 4
  %176 = call i32 @pSetSearchPathMode(i32 %175)
  store i32 %176, i32* %1, align 4
  %177 = load i32, i32* %1, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %182 = call i32 (...) @GetLastError()
  %183 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 (...) @GetLastError()
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  %188 = call i32 @SetLastError(i32 -559038737)
  %189 = load i32, i32* @BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE, align 4
  %190 = load i32, i32* @BASE_SEARCH_PATH_PERMANENT, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @pSetSearchPathMode(i32 %191)
  store i32 %192, i32* %1, align 4
  %193 = load i32, i32* %1, align 4
  %194 = call i32 (...) @GetLastError()
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  %196 = call i32 @SetLastError(i32 -559038737)
  %197 = load i32, i32* @MAX_PATH, align 4
  %198 = call i32 @SearchPathA(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %197, i8* %15, i32* null)
  store i32 %198, i32* %1, align 4
  %199 = load i32, i32* %1, align 4
  %200 = call i32 (...) @GetLastError()
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @MAX_PATH, align 4
  %203 = call i32 @GetSystemDirectoryA(i8* %21, i32 %202)
  %204 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %205 = call i32 @lstrcmpiA(i8* %15, i8* %21)
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %15, i8* %21)
  %210 = call i32 @DeleteFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %211 = call i32 @SetCurrentDirectoryA(i8* %12)
  %212 = call i32 @RemoveDirectoryA(i8* %18)
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %36, %34
  %214 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %8, align 4
  switch i32 %215, label %217 [
    i32 0, label %216
    i32 1, label %216
  ]

216:                                              ; preds = %213, %213
  ret void

217:                                              ; preds = %213
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pSetSearchPathMode(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SearchPathA(i32*, i8*, i32*, i32, i8*, i32*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
