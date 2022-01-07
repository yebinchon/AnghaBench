; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumeInformationA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumeInformationA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetVolumeInformationA.Root_Colon = private unnamed_addr constant [3 x i8] c"C:\00", align 1
@__const.test_GetVolumeInformationA.Root_Slash = private unnamed_addr constant [4 x i8] c"C:\\\00", align 1
@__const.test_GetVolumeInformationA.Root_UNC = private unnamed_addr constant [8 x i8] c"\\\\?\\C:\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GetVolumeInformationA not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"windowsdir is abnormally long!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GetWindowsDirectory: error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GetCurrentDirectory: error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SetCurrentDirectory: error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"GetVolumeInformationA root failed, last error %u\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"GetVolumeInformationA did%s fail, last error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Please re-run from another device than %c:\0A\00", align 1
@__const.test_GetVolumeInformationA.Root_Env = private unnamed_addr constant [4 x i8] c"=C:\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"SetEnvironmentVariable %s failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"GetVolumeInformationA with \\ failed, last error %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"GetVolumeInformationA failed, last error %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"GetVolumeInformationA failed on null root dir, last error %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"GetVolumeInformationA failed, root=%s, last error=%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"GetVolumeInformationA did%s fail, root=%s, last error=%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ERROR_DIR_NOT_ROOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"GetVolumeNameForVolumeMountPointA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetVolumeInformationA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetVolumeInformationA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [4 x i8], align 1
  %18 = bitcast [3 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_GetVolumeInformationA.Root_Colon, i32 0, i32 0), i64 3, i1 false)
  %19 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetVolumeInformationA.Root_Slash, i32 0, i32 0), i64 4, i1 false)
  %20 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_GetVolumeInformationA.Root_UNC, i32 0, i32 0), i64 8, i1 false)
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %38 = load i32, i32* @MAX_PATH, align 4
  %39 = add nsw i32 %38, 10
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %15, align 8
  %42 = load i32, i32* @MAX_PATH, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = trunc i64 %40 to i32
  %48 = call i32 @GetWindowsDirectoryA(i8* %41, i32 %47)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, %40
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds i8, i8* %41, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds i8, i8* %41, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %63, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %41, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* @MAX_PATH, align 4
  %69 = call i32 @GetCurrentDirectoryA(i32 %68, i8* %45)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %74 = call i32 @SetCurrentDirectoryA(i8* %73)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @pGetVolumeInformationA(i8* %78, i8* %33, i32 %79, i32* null, i32* null, i32* null, i8* %37, i32 %80)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = call i32 @SetCurrentDirectoryA(i8* %41)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @pGetVolumeInformationA(i8* %90, i8* %33, i32 %91, i32* null, i32* null, i32* null, i8* %37, i32 %92)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %0
  %97 = call i32 (...) @GetLastError()
  %98 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %99 = icmp eq i32 %97, %98
  br label %100

100:                                              ; preds = %96, %0
  %101 = phi i1 [ false, %0 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %1, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %107 = call i32 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %106, i32 %107)
  %109 = call i32 @SetCurrentDirectoryA(i8* %45)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 (...) @GetLastError()
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds i8, i8* %45, i64 0
  %114 = load i8, i8* %113, align 16
  %115 = call i64 @toupper(i8 signext %114)
  %116 = getelementptr inbounds i8, i8* %41, i64 0
  %117 = load i8, i8* %116, align 16
  %118 = call i64 @toupper(i8 signext %117)
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %100
  %121 = getelementptr inbounds i8, i8* %41, i64 0
  %122 = load i8, i8* %121, align 16
  %123 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8 signext %122)
  br label %227

124:                                              ; preds = %100
  %125 = bitcast [4 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %125, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetVolumeInformationA.Root_Env, i32 0, i32 0), i64 4, i1 false)
  %126 = getelementptr inbounds i8, i8* %41, i64 0
  %127 = load i8, i8* %126, align 16
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  store i8 %127, i8* %128, align 1
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %130 = call i32 @SetEnvironmentVariableA(i8* %129, i8* %41)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %132)
  %134 = call i32 @SetCurrentDirectoryA(i8* %41)
  store i32 %134, i32* %1, align 4
  %135 = load i32, i32* %1, align 4
  %136 = call i32 (...) @GetLastError()
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = call i32 @SetCurrentDirectoryA(i8* %45)
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* %1, align 4
  %140 = call i32 (...) @GetLastError()
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = call i32 @SetLastError(i32 -559038737)
  %143 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @pGetVolumeInformationA(i8* %143, i8* %33, i32 %144, i32* null, i32* null, i32* null, i8* %37, i32 %145)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* %1, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %124
  %150 = call i32 (...) @GetLastError()
  %151 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %152 = icmp eq i32 %150, %151
  br label %153

153:                                              ; preds = %149, %124
  %154 = phi i1 [ false, %124 ], [ %152, %149 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %1, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %160 = call i32 (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %159, i32 %160)
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @pGetVolumeInformationA(i8* %162, i8* %33, i32 %163, i32* null, i32* null, i32* null, i8* %37, i32 %164)
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %1, align 4
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %167)
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %170 = call i32 @SetCurrentDirectoryA(i8* %169)
  store i32 %170, i32* %1, align 4
  %171 = load i32, i32* %1, align 4
  %172 = call i32 (...) @GetLastError()
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = call i32 @SetCurrentDirectoryA(i8* %45)
  store i32 %174, i32* %1, align 4
  %175 = load i32, i32* %1, align 4
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = call i32 @SetLastError(i32 -559038737)
  %179 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @pGetVolumeInformationA(i8* %179, i8* %33, i32 %180, i32* null, i32* null, i32* null, i8* %37, i32 %181)
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* %1, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %153
  %186 = call i32 (...) @GetLastError()
  %187 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %188 = icmp eq i32 %186, %187
  br label %189

189:                                              ; preds = %185, %153
  %190 = phi i1 [ false, %153 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %1, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %196 = call i32 (...) @GetLastError()
  %197 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %195, i32 %196)
  %198 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %199 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %200 = call i32 @SetEnvironmentVariableA(i8* %198, i8* %199)
  store i32 %200, i32* %1, align 4
  %201 = load i32, i32* %1, align 4
  %202 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %202)
  %204 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @pGetVolumeInformationA(i8* %204, i8* %33, i32 %205, i32* null, i32* null, i32* null, i8* %37, i32 %206)
  store i32 %207, i32* %1, align 4
  %208 = load i32, i32* %1, align 4
  %209 = call i32 (...) @GetLastError()
  %210 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %209)
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %212 = call i32 @SetCurrentDirectoryA(i8* %211)
  store i32 %212, i32* %1, align 4
  %213 = load i32, i32* %1, align 4
  %214 = call i32 (...) @GetLastError()
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %214)
  %216 = call i32 @SetCurrentDirectoryA(i8* %45)
  store i32 %216, i32* %1, align 4
  %217 = load i32, i32* %1, align 4
  %218 = call i32 (...) @GetLastError()
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @pGetVolumeInformationA(i8* %220, i8* %33, i32 %221, i32* null, i32* null, i32* null, i8* %37, i32 %222)
  store i32 %223, i32* %1, align 4
  %224 = load i32, i32* %1, align 4
  %225 = call i32 (...) @GetLastError()
  %226 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %189, %120
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @pGetVolumeInformationA(i8* null, i8* %33, i32 %228, i32* null, i32* null, i32* null, i8* %37, i32 %229)
  store i32 %230, i32* %1, align 4
  %231 = load i32, i32* %1, align 4
  %232 = call i32 (...) @GetLastError()
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 %232)
  %234 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @pGetVolumeInformationA(i8* %234, i8* %33, i32 %235, i32* %9, i32* %10, i32* %11, i8* %37, i32 %236)
  store i32 %237, i32* %1, align 4
  %238 = load i32, i32* %1, align 4
  %239 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %240 = call i32 (...) @GetLastError()
  %241 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %239, i32 %240)
  %242 = call i32 @SetLastError(i32 -559038737)
  %243 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @pGetVolumeInformationA(i8* %243, i8* %33, i32 %244, i32* %9, i32* %10, i32* %11, i8* %37, i32 %245)
  store i32 %246, i32* %1, align 4
  %247 = load i32, i32* %1, align 4
  %248 = load i32, i32* %1, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %252 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %253 = call i32 (...) @GetLastError()
  %254 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i8* %251, i8* %252, i32 %253)
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  store i8 46, i8* %255, align 1
  %256 = call i32 @SetLastError(i32 -559038737)
  %257 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @pGetVolumeInformationA(i8* %257, i8* %33, i32 %258, i32* %9, i32* %10, i32* %11, i8* %37, i32 %259)
  store i32 %260, i32* %1, align 4
  %261 = load i32, i32* %1, align 4
  %262 = load i32, i32* %1, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %266 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %267 = call i32 (...) @GetLastError()
  %268 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i8* %265, i8* %266, i32 %267)
  %269 = call i32 @strlen(i8* %41)
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %41, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 92
  br i1 %275, label %276, label %278

276:                                              ; preds = %227
  %277 = call i32 @strcat(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %227
  %279 = call i32 @SetLastError(i32 -559038737)
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @pGetVolumeInformationA(i8* %41, i8* %33, i32 %280, i32* %9, i32* %10, i32* %11, i8* %37, i32 %281)
  store i32 %282, i32* %1, align 4
  %283 = load i32, i32* %1, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %278
  %286 = call i32 (...) @GetLastError()
  %287 = load i32, i32* @ERROR_DIR_NOT_ROOT, align 4
  %288 = icmp eq i32 %286, %287
  br label %289

289:                                              ; preds = %285, %278
  %290 = phi i1 [ false, %278 ], [ %288, %285 ]
  %291 = zext i1 %290 to i32
  %292 = load i32, i32* %1, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %296 = call i32 (...) @GetLastError()
  %297 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i8* %295, i8* %41, i32 %296)
  %298 = call i32 @strlen(i8* %41)
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %41, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 92
  br i1 %304, label %305, label %310

305:                                              ; preds = %289
  %306 = call i32 @strlen(i8* %41)
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %41, i64 %308
  store i8 0, i8* %309, align 1
  br label %310

310:                                              ; preds = %305, %289
  %311 = call i32 @SetLastError(i32 -559038737)
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %12, align 4
  %314 = call i32 @pGetVolumeInformationA(i8* %41, i8* %33, i32 %312, i32* %9, i32* %10, i32* %11, i8* %37, i32 %313)
  store i32 %314, i32* %1, align 4
  %315 = load i32, i32* %1, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %310
  %318 = call i32 (...) @GetLastError()
  %319 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %320 = icmp eq i32 %318, %319
  br label %321

321:                                              ; preds = %317, %310
  %322 = phi i1 [ false, %310 ], [ %320, %317 ]
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %1, align 4
  %325 = icmp ne i32 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %328 = call i32 (...) @GetLastError()
  %329 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i8* %327, i8* %41, i32 %328)
  %330 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %331 = load i32, i32* @MAX_PATH, align 4
  %332 = call i32 @pGetVolumeNameForVolumeMountPointA(i8* %330, i8* %25, i32 %331)
  store i32 %332, i32* %1, align 4
  %333 = load i32, i32* %1, align 4
  %334 = load i32, i32* @TRUE, align 4
  %335 = icmp eq i32 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 (i32, i8*, ...) @ok(i32 %336, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* %12, align 4
  %340 = call i32 @pGetVolumeInformationA(i8* %25, i8* %33, i32 %338, i32* %9, i32* %10, i32* %11, i8* %37, i32 %339)
  store i32 %340, i32* %1, align 4
  %341 = load i32, i32* %1, align 4
  %342 = call i32 (...) @GetLastError()
  %343 = call i32 (i32, i8*, ...) @ok(i32 %341, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %25, i32 %342)
  %344 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %344)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @pGetVolumeInformationA(i8*, i8*, i32, i32*, i32*, i32*, i8*, i32) #3

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #3

declare dso_local i32 @SetCurrentDirectoryA(i8*) #3

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i64 @toupper(i8 signext) #3

declare dso_local i32 @skip(i8*, i8 signext) #3

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @strcat(i8*, i8*) #3

declare dso_local i32 @pGetVolumeNameForVolumeMountPointA(i8*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
