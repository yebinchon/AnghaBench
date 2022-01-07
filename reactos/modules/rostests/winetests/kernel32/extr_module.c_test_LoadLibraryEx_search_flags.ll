; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_test_LoadLibraryEx_search_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_test_LoadLibraryEx_search_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [4 x i32], i32, i32 }

@test_LoadLibraryEx_search_flags.tests = internal constant [9 x %struct.anon] [%struct.anon { [4 x i32] [i32 1, i32 2, i32 3, i32 0], i32 4, i32 3 }, %struct.anon { [4 x i32] [i32 1, i32 3, i32 2, i32 0], i32 4, i32 2 }, %struct.anon { [4 x i32] [i32 3, i32 1, i32 0, i32 0], i32 4, i32 1 }, %struct.anon { [4 x i32] [i32 5, i32 6, i32 0, i32 0], i32 4, i32 4 }, %struct.anon { [4 x i32] [i32 5, i32 2, i32 0, i32 0], i32 4, i32 2 }, %struct.anon { [4 x i32] zeroinitializer, i32 4, i32 4 }, %struct.anon zeroinitializer, %struct.anon { [4 x i32] [i32 6, i32 5, i32 0, i32 0], i32 5, i32 0 }, %struct.anon { [4 x i32] [i32 1, i32 1, i32 2, i32 0], i32 0, i32 2 }], align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CreateDirectory failed err %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\\%u\\winetestdll.dll\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"winetestdll.dll\00", align 1
@LOAD_LIBRARY_SEARCH_APPLICATION_DIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"LoadLibrary succeeded\0A\00", align 1
@ERROR_MOD_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@LOAD_LIBRARY_SEARCH_USER_DIRS = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@LOAD_LIBRARY_SEARCH_SYSTEM32 = common dso_local global i32 0, align 4
@LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"foo\\winetestdll.dll\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\\windows\\winetestdll.dll\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"failed to add %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%u: LoadLibrary failed err %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%u: wrong module %s expected %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%u: LoadLibrary succeeded\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%u: wrong error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadLibraryEx_search_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadLibraryEx_search_flags() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i32*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %22 = trunc i64 %13 to i32
  %23 = call i32 @GetTempPathA(i32 %22, i8* %15)
  %24 = call i32 @GetTempFileNameA(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %18)
  %25 = call i32 @DeleteFileA(i8* %18)
  %26 = call i32 @CreateDirectoryA(i8* %18, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @strlen(i8* %18)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %18, i64 %31
  store i8* %32, i8** %1, align 8
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %52, %0
  %34 = load i32, i32* %7, align 4
  %35 = icmp ule i32 %34, 6
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i8*, i8** %1, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @CreateDirectoryA(i8* %18, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp uge i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %52

47:                                               ; preds = %36
  %48 = load i8*, i8** %1, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = call i32 @create_test_dll(i8* %18)
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %33
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i32, i32* @LOAD_LIBRARY_SEARCH_APPLICATION_DIR, align 4
  %58 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 (...) @GetLastError()
  %65 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i32, i32* @LOAD_LIBRARY_SEARCH_USER_DIRS, align 4
  %72 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %71)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 (...) @GetLastError()
  %79 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %55
  %82 = call i32 (...) @GetLastError()
  %83 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %81, %55
  %89 = phi i1 [ true, %55 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = call i32 @SetLastError(i32 -559038737)
  %94 = load i32, i32* @LOAD_LIBRARY_SEARCH_SYSTEM32, align 4
  %95 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %94)
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 (...) @GetLastError()
  %102 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = load i32, i32* @LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR, align 4
  %109 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %108)
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = icmp ne i32* %110, null
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 (...) @GetLastError()
  %116 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = load i32, i32* @LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR, align 4
  %123 = load i32, i32* @LOAD_LIBRARY_SEARCH_SYSTEM32, align 4
  %124 = or i32 %122, %123
  %125 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %124)
  store i32* %125, i32** %11, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = icmp ne i32* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 (...) @GetLastError()
  %132 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 (...) @GetLastError()
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = call i32 @SetLastError(i32 -559038737)
  %138 = load i32, i32* @LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR, align 4
  %139 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %138)
  store i32* %139, i32** %11, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = icmp ne i32* %140, null
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %145 = call i32 (...) @GetLastError()
  %146 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %149)
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = load i32, i32* @LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR, align 4
  %153 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %152)
  store i32* %153, i32** %11, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = icmp ne i32* %154, null
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %159 = call i32 (...) @GetLastError()
  %160 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 (...) @GetLastError()
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %305, %88
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = icmp ult i64 %167, 9
  br i1 %168, label %169, label %308

169:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %205, %169
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 0
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %174, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %208

180:                                              ; preds = %170
  %181 = load i8*, i8** %1, align 8
  %182 = load i32, i32* %8, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %184, i32 0, i32 0
  %186 = load i32, i32* %9, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %185, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sprintf(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @CP_ACP, align 4
  %192 = load i32, i32* @MAX_PATH, align 4
  %193 = call i32 @MultiByteToWideChar(i32 %191, i32 0, i8* %18, i32 -1, i32* %21, i32 %192)
  %194 = call i32* @pAddDllDirectory(i32* %21)
  %195 = load i32, i32* %9, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 %196
  store i32* %194, i32** %197, align 8
  %198 = load i32, i32* %9, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %18)
  br label %205

205:                                              ; preds = %180
  %206 = load i32, i32* %9, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %170

208:                                              ; preds = %170
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load i8*, i8** %1, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @sprintf(i8* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %221)
  %223 = call i32 @pSetDllDirectoryA(i8* %18)
  br label %226

224:                                              ; preds = %208
  %225 = call i32 @pSetDllDirectoryA(i8* null)
  br label %226

226:                                              ; preds = %224, %215
  %227 = call i32 @SetLastError(i32 -559038737)
  %228 = load i32, i32* @LOAD_LIBRARY_SEARCH_USER_DIRS, align 4
  %229 = call i32* @LoadLibraryExA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %228)
  store i32* %229, i32** %11, align 8
  %230 = load i32, i32* %8, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %231
  %233 = getelementptr inbounds %struct.anon, %struct.anon* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %259

236:                                              ; preds = %226
  %237 = load i32*, i32** %11, align 8
  %238 = icmp ne i32* %237, null
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %8, align 4
  %241 = call i32 (...) @GetLastError()
  %242 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* @MAX_PATH, align 4
  %245 = call i32 @GetModuleFileNameA(i32* %243, i8* %15, i32 %244)
  %246 = load i8*, i8** %1, align 8
  %247 = load i32, i32* %8, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @sprintf(i8* %246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %251)
  %253 = call i32 @lstrcmpiA(i8* %15, i8* %18)
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %8, align 4
  %258 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %257, i8* %15, i8* %18)
  br label %282

259:                                              ; preds = %226
  %260 = load i32*, i32** %11, align 8
  %261 = icmp ne i32* %260, null
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %8, align 4
  %265 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %264)
  %266 = call i32 (...) @GetLastError()
  %267 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %276, label %269

269:                                              ; preds = %259
  %270 = call i32 (...) @GetLastError()
  %271 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %272 = icmp eq i32 %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i64 @broken(i32 %273)
  %275 = icmp ne i64 %274, 0
  br label %276

276:                                              ; preds = %269, %259
  %277 = phi i1 [ true, %259 ], [ %275, %269 ]
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %8, align 4
  %280 = call i32 (...) @GetLastError()
  %281 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %276, %236
  %283 = load i32*, i32** %11, align 8
  %284 = call i32 @FreeLibrary(i32* %283)
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %301, %282
  %286 = load i32, i32* %8, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_LoadLibraryEx_search_flags.tests, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.anon, %struct.anon* %288, i32 0, i32 0
  %290 = load i32, i32* %9, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %289, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %285
  %296 = load i32, i32* %9, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @pRemoveDllDirectory(i32* %299)
  br label %301

301:                                              ; preds = %295
  %302 = load i32, i32* %9, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %285

304:                                              ; preds = %285
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %8, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %8, align 4
  br label %165

308:                                              ; preds = %165
  store i32 1, i32* %7, align 4
  br label %309

309:                                              ; preds = %321, %308
  %310 = load i32, i32* %7, align 4
  %311 = icmp ule i32 %310, 6
  br i1 %311, label %312, label %324

312:                                              ; preds = %309
  %313 = load i8*, i8** %1, align 8
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @sprintf(i8* %313, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %314)
  %316 = call i32 @DeleteFileA(i8* %18)
  %317 = load i8*, i8** %1, align 8
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @sprintf(i8* %317, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %318)
  %320 = call i32 @RemoveDirectoryA(i8* %18)
  br label %321

321:                                              ; preds = %312
  %322 = load i32, i32* %7, align 4
  %323 = add i32 %322, 1
  store i32 %323, i32* %7, align 4
  br label %309

324:                                              ; preds = %309
  %325 = load i8*, i8** %1, align 8
  store i8 0, i8* %325, align 1
  %326 = call i32 @RemoveDirectoryA(i8* %18)
  %327 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %327)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @create_test_dll(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @LoadLibraryExA(i8*, i32, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32* @pAddDllDirectory(i32*) #2

declare dso_local i32 @pSetDllDirectoryA(i8*) #2

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i32 @pRemoveDllDirectory(i32*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
