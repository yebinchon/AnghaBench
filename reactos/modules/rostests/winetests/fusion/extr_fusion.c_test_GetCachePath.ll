; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_fusion.c_test_GetCachePath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_fusion.c_test_GetCachePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_GetCachePath.backslash = internal constant [2 x i8] c"\\\00", align 1
@test_GetCachePath.nochange = internal constant [9 x i8] c"nochange\00", align 1
@test_GetCachePath.assembly = internal constant [9 x i8] c"assembly\00", align 1
@test_GetCachePath.gac = internal constant [4 x i8] c"GAC\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@ASM_CACHE_GAC = common dso_local global i32 0, align 4
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Expected E_NOT_SUFFICIENT_BUFFER, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Expected %s,  got %s\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@ASM_CACHE_ROOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"NativeImages_\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s\\%s\\%s%s_32\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"NativeImages1_\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s\\%s\\%s%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"assembly\00", align 1
@ASM_CACHE_ZAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetCachePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetCachePath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %1, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %2, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %5, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %6, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = call i32 @GetWindowsDirectoryA(i32* %17, i32 %30)
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = call i32 @MultiByteToWideChar(i32 %32, i32 0, i32* %17, i32 -1, i8* %20, i32 %33)
  %35 = call i32 @lstrcpyW(i8* %23, i8* %20)
  %36 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetCachePath.backslash, i64 0, i64 0))
  %37 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.assembly, i64 0, i64 0))
  %38 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetCachePath.backslash, i64 0, i64 0))
  %39 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetCachePath.gac, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %40 = load i32, i32* @ASM_CACHE_GAC, align 4
  %41 = call i64 @pGetCachePath(i32 %40, i8* null, i64* %7)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, i64, ...) @ok(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @lstrlenW(i8* %23)
  %50 = add nsw i64 %49, 1
  %51 = icmp eq i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @lstrlenW(i8* %23)
  %54 = add nsw i64 %53, 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* @ASM_CACHE_GAC, align 4
  %60 = call i64 @pGetCachePath(i32 %59, i8* null, i64* %7)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %8, align 8
  %66 = call i32 (i32, i8*, i64, ...) @ok(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @lstrlenW(i8* %23)
  %69 = add nsw i64 %68, 1
  %70 = icmp eq i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @lstrlenW(i8* %23)
  %73 = add nsw i64 %72, 1
  %74 = load i64, i64* %7, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %74)
  %76 = load i32, i32* @ASM_CACHE_GAC, align 4
  %77 = call i64 @pGetCachePath(i32 %76, i8* null, i64* null)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @E_INVALIDARG, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %8, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %85 = load i32, i32* @ASM_CACHE_GAC, align 4
  %86 = call i64 @pGetCachePath(i32 %85, i8* %29, i64* null)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @E_INVALIDARG, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %8, align 8
  %92 = call i32 (i32, i8*, i64, ...) @ok(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0), i8* %29)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %98 = call i64 @wine_dbgstr_w(i8* %29)
  %99 = call i32 (i32, i8*, i64, ...) @ok(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %97, i64 %98)
  %100 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %101 = load i32, i32* @MAX_PATH, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %7, align 8
  %103 = load i32, i32* @ASM_CACHE_GAC, align 4
  %104 = call i64 @pGetCachePath(i32 %103, i8* %29, i64* %7)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %8, align 8
  %110 = call i32 (i32, i8*, i64, ...) @ok(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  %111 = call i32 @lstrcmpW(i8* %23, i8* %29)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @wine_dbgstr_w(i8* %23)
  %116 = call i64 @wine_dbgstr_w(i8* %29)
  %117 = call i32 (i32, i8*, i64, ...) @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %115, i64 %116)
  %118 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %119 = call i64 @lstrlenW(i8* %23)
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* @ASM_CACHE_GAC, align 4
  %121 = call i64 @pGetCachePath(i32 %120, i8* %29, i64* %7)
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %8, align 8
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %126)
  %128 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0), i8* %29)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %133 = call i64 @wine_dbgstr_w(i8* %29)
  %134 = call i32 (i32, i8*, i64, ...) @ok(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %132, i64 %133)
  %135 = call i32 @lstrcpyW(i8* %23, i8* %20)
  %136 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetCachePath.backslash, i64 0, i64 0))
  %137 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.assembly, i64 0, i64 0))
  %138 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %139 = load i32, i32* @MAX_PATH, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %7, align 8
  %141 = load i32, i32* @ASM_CACHE_ROOT, align 4
  %142 = call i64 @pGetCachePath(i32 %141, i8* %29, i64* %7)
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %0
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @E_INVALIDARG, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @broken(i32 %150)
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %146, %0
  %154 = phi i1 [ true, %0 ], [ %152, %146 ]
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %8, align 8
  %157 = call i32 (i32, i8*, i64, ...) @ok(i32 %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %156)
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @S_OK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = call i32 @lstrcmpW(i8* %23, i8* %29)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i64 @wine_dbgstr_w(i8* %23)
  %167 = call i64 @wine_dbgstr_w(i8* %29)
  %168 = call i32 (i32, i8*, i64, ...) @ok(i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %166, i64 %167)
  br label %169

169:                                              ; preds = %161, %153
  br i1 true, label %170, label %222

170:                                              ; preds = %169
  %171 = load i32, i32* @MAX_PATH, align 4
  %172 = zext i32 %171 to i64
  %173 = call i8* @llvm.stacksave()
  store i8* %173, i8** %9, align 8
  %174 = alloca i32, i64 %172, align 16
  store i64 %172, i64* %10, align 8
  %175 = load i32, i32* @MAX_PATH, align 4
  %176 = zext i32 %175 to i64
  %177 = alloca i32, i64 %176, align 16
  store i64 %176, i64* %11, align 8
  %178 = load i32, i32* @MAX_PATH, align 4
  %179 = zext i32 %178 to i64
  %180 = alloca i32, i64 %179, align 16
  store i64 %179, i64* %12, align 8
  %181 = load i32, i32* @MAX_PATH, align 4
  %182 = zext i32 %181 to i64
  %183 = alloca i32, i64 %182, align 16
  store i64 %182, i64* %13, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @S_OK, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %170
  %188 = call i32 @lstrcpyA(i32* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %189 = call i32 @lstrcpyA(i32* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %193

190:                                              ; preds = %170
  %191 = call i32 @lstrcpyA(i32* %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %192 = call i32 @lstrcpyA(i32* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @MAX_PATH, align 4
  %195 = call i32 @pGetCORVersion(i8* %26, i32 %194, i64* %7)
  %196 = load i32, i32* @CP_ACP, align 4
  %197 = load i32, i32* @MAX_PATH, align 4
  %198 = call i32 @WideCharToMultiByte(i32 %196, i32 0, i8* %26, i32 -1, i32* %174, i32 %197, i32 0, i32 0)
  %199 = call i32 @wsprintfA(i32* %177, i32* %183, i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %180, i32* %174)
  %200 = load i32, i32* @CP_ACP, align 4
  %201 = load i32, i32* @MAX_PATH, align 4
  %202 = call i32 @MultiByteToWideChar(i32 %200, i32 0, i32* %177, i32 -1, i8* %23, i32 %201)
  %203 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %204 = load i32, i32* @MAX_PATH, align 4
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %7, align 8
  %206 = load i32, i32* @ASM_CACHE_ZAP, align 4
  %207 = call i64 @pGetCachePath(i32 %206, i8* %29, i64* %7)
  store i64 %207, i64* %8, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load i64, i64* @S_OK, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i64, i64* %8, align 8
  %213 = call i32 (i32, i8*, i64, ...) @ok(i32 %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %212)
  %214 = call i32 @lstrcmpW(i8* %23, i8* %29)
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i64 @wine_dbgstr_w(i8* %23)
  %219 = call i64 @wine_dbgstr_w(i8* %29)
  %220 = call i32 (i32, i8*, i64, ...) @ok(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %218, i64 %219)
  %221 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %221)
  br label %222

222:                                              ; preds = %193, %169
  %223 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %224 = load i32, i32* @MAX_PATH, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %7, align 8
  %226 = load i32, i32* @ASM_CACHE_GAC, align 4
  %227 = load i32, i32* @ASM_CACHE_ROOT, align 4
  %228 = or i32 %226, %227
  %229 = call i64 @pGetCachePath(i32 %228, i8* %29, i64* %7)
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %8, align 8
  %231 = load i64, i64* @E_INVALIDARG, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i64, i64* %8, align 8
  %235 = call i32 (i32, i8*, i64, ...) @ok(i32 %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %234)
  %236 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0), i8* %29)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetCachePath.nochange, i64 0, i64 0))
  %241 = call i64 @wine_dbgstr_w(i8* %29)
  %242 = call i32 (i32, i8*, i64, ...) @ok(i32 %239, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %240, i64 %241)
  %243 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %243)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryA(i32*, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i8*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @pGetCachePath(i32, i8*, i64*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i64 @wine_dbgstr_w(i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @pGetCORVersion(i8*, i32, i64*) #2

declare dso_local i32 @lstrcpyA(i32*, i8*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @wsprintfA(i32*, i32*, i32*, i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
