; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SearchPathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SearchPathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SearchPathA.testdepA = internal constant [12 x i8] c"testdep.dll\00", align 1
@test_SearchPathA.testdeprelA = internal constant [14 x i8] c"./testdep.dll\00", align 1
@test_SearchPathA.kernel32A = internal constant [13 x i8] c"kernel32.dll\00", align 1
@test_SearchPathA.fileA = internal constant [1 x i8] zeroinitializer, align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Expected failure, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_dep = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"main.manifest\00", align 1
@manifest_main = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to activate context, %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"testdep.dll\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".ext\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"testdep\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".dll\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"got wrong path %s, %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to deactivate context, %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to obtain working directory.\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"failed to copy test executable to temp directory, %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"failed to copy test executable to launch directory, %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"failed to change working directory\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"failed to reset working directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SearchPathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SearchPathA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %3, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %4, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %5, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %32 = udiv i64 %14, 1
  %33 = trunc i64 %32 to i32
  %34 = call i32 @GetWindowsDirectoryA(i8* %16, i32 %33)
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = udiv i64 %18, 1
  %37 = trunc i64 %36 to i32
  %38 = call i32 @pSearchPathA(i8* %16, i8* null, i8* null, i32 %37, i8* %19, i8** %8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 (...) @GetLastError()
  %45 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = udiv i64 %18, 1
  %52 = trunc i64 %51 to i32
  %53 = call i32 @pSearchPathA(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SearchPathA.fileA, i64 0, i64 0), i8* null, i32 %52, i8* %19, i8** %8)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 (...) @GetLastError()
  %60 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @manifest_dep, align 4
  %66 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @manifest_main, align 4
  %68 = call i32 @create_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = call i32 @test_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %69, i32* %10, align 4
  %70 = call i32 @delete_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @delete_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %72 = udiv i64 %18, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathA.testdepA, i64 0, i64 0), i8* null, i32 %73, i8* %19, i8** null)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = udiv i64 %21, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0), i8* null, i32 %81, i8* %22, i8** null)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %0
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @strlen(i8* %22)
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %0
  %90 = phi i1 [ false, %0 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pActivateActCtx(i32 %94, i32* %9)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = udiv i64 %18, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathA.testdepA, i64 0, i64 0), i8* null, i32 %100, i8* %19, i8** null)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %89
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @strlen(i8* %19)
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %89
  %109 = phi i1 [ false, %89 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = udiv i64 %18, 1
  %114 = trunc i64 %113 to i32
  %115 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %114, i8* %19, i8** null)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @strlen(i8* %19)
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %118, %108
  %123 = phi i1 [ false, %108 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = udiv i64 %18, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %128, i8* %19, i8** null)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @strlen(i8* %19)
  %135 = icmp eq i32 %133, %134
  br label %136

136:                                              ; preds = %132, %122
  %137 = phi i1 [ false, %122 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %12, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = udiv i64 %18, 1
  %142 = trunc i64 %141 to i32
  %143 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %142, i8* %19, i8** null)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %12, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = udiv i64 %18, 1
  %151 = trunc i64 %150 to i32
  %152 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SearchPathA.testdeprelA, i64 0, i64 0), i8* null, i32 %151, i8* %19, i8** null)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %12, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = udiv i64 %18, 1
  %160 = trunc i64 %159 to i32
  %161 = call i32 @pSearchPathA(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathA.testdepA, i64 0, i64 0), i8* null, i32 %160, i8* %19, i8** null)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %12, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = udiv i64 %18, 1
  %169 = trunc i64 %168 to i32
  %170 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0), i8* null, i32 %169, i8* %19, i8** null)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %136
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @strlen(i8* %19)
  %176 = icmp eq i32 %174, %175
  br label %177

177:                                              ; preds = %173, %136
  %178 = phi i1 [ false, %136 ], [ %176, %173 ]
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %12, align 4
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = call i32 @strcmp(i8* %19, i8* %22)
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %19, i8* %22)
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @pDeactivateActCtx(i32 0, i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 (...) @GetLastError()
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @pReleaseActCtx(i32 %189)
  %191 = trunc i64 %30 to i32
  %192 = call i32 @GetTempPathA(i32 %191, i8* %31)
  %193 = load i32, i32* @MAX_PATH, align 4
  %194 = call i32 @GetCurrentDirectoryA(i32 %193, i8* %28)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %197 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0))
  %198 = udiv i64 %21, 1
  %199 = trunc i64 %198 to i32
  %200 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0), i8* null, i32 %199, i8* %22, i8** null)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %177
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @strlen(i8* %22)
  %206 = icmp eq i32 %204, %205
  br label %207

207:                                              ; preds = %203, %177
  %208 = phi i1 [ false, %177 ], [ %206, %203 ]
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %12, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @FALSE, align 4
  %213 = call i32 @CopyFileA(i8* %22, i8* %16, i32 %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 (...) @GetLastError()
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %217)
  %219 = call i32 @strlen(i8* %28)
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %28, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 92
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %228 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %28, i8* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0))
  %229 = load i32, i32* @FALSE, align 4
  %230 = call i32 @CopyFileA(i8* %22, i8* %25, i32 %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 (...) @GetLastError()
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 %234)
  %236 = call i32 @SetCurrentDirectoryA(i8* %31)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  %239 = trunc i64 %18 to i32
  %240 = call i32 @pSearchPathA(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathA.kernel32A, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %239, i8* %19, i8** null)
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %207
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @strlen(i8* %19)
  %246 = icmp eq i32 %244, %245
  br label %247

247:                                              ; preds = %243, %207
  %248 = phi i1 [ false, %207 ], [ %246, %243 ]
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %12, align 4
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = call i32 @strcmp(i8* %19, i8* %25)
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %25, i8* %19)
  %256 = call i32 @SetCurrentDirectoryA(i8* %28)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %259 = call i32 @DeleteFileA(i8* %25)
  %260 = call i32 @DeleteFileA(i8* %16)
  %261 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %261)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pSearchPathA(i8*, i8*, i8*, i32, i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @create_manifest_file(i8*, i32) #2

declare dso_local i32 @test_create(i8*) #2

declare dso_local i32 @delete_manifest_file(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pActivateActCtx(i32, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @pDeactivateActCtx(i32, i32) #2

declare dso_local i32 @pReleaseActCtx(i32) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @CopyFileA(i8*, i8*, i32) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

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
