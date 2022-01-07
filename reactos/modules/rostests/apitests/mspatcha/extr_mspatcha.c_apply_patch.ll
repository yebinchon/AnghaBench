; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_apply_patch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_apply_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@__const.apply_patch.wfd = private unnamed_addr constant %struct.TYPE_9__ { i32 16, i64 0 }, align 8
@temp_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"MPO\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GetTempFileNameA failed %lu, %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TestApplyPatchToFileA failed %lu, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"TestApplyPatchToFileA succeeded, %s\0A\00", align 1
@ERROR_PATCH_CORRUPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"TestApplyPatchToFileA GetLastError %lx, %s\0A\00", align 1
@ERROR_PATCH_WRONG_FILE = common dso_local global i64 0, align 8
@APPLY_OPTION_TEST_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"ApplyPatchToFileA failed %lu, %s\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Got a (non-empty) file, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @apply_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_patch(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %24 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_9__* @__const.apply_patch.wfd to i8*), i64 16, i1 false)
  %25 = load i32, i32* @temp_path, align 4
  %26 = call i32 @GetTempFileNameA(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %23)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = call i64 (...) @GetLastError()
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %32)
  store i32 1, i32* %13, align 4
  br label %376

34:                                               ; preds = %1
  %35 = call i32 @DeleteFileA(i8* %23)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = call i32 @extract(i8* %17, %struct.TYPE_10__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  br label %376

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = call i32 @extract(i8* %20, %struct.TYPE_10__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @DeleteFileA(i8* %17)
  store i32 1, i32* %13, align 4
  br label %376

48:                                               ; preds = %41
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i64 @open_file(i8* %17, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i64 @open_file(i8* %20, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @TestApplyPatchToFileByHandles(i64 %53, i64 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @CloseHandle(i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @CloseHandle(i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i64 (...) @GetLastError()
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %61, i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @compare_file(i8* %17, i32 %69, i64 %73, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @compare_file(i8* %20, i32 %81, i64 %85, i32 %88)
  %90 = call i32 @DeleteFileA(i8* %17)
  %91 = call i32 @DeleteFileA(i8* %20)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @extract2(i8* %17, i32 %95, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %48
  store i32 1, i32* %13, align 4
  br label %376

104:                                              ; preds = %48
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = call i32 @extract(i8* %20, %struct.TYPE_10__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = call i32 @DeleteFileA(i8* %17)
  store i32 1, i32* %13, align 4
  br label %376

111:                                              ; preds = %104
  %112 = load i32, i32* @FALSE, align 4
  %113 = call i64 @open_file(i8* %17, i32 %112)
  store i64 %113, i64* %9, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i64 @open_file(i8* %20, i32 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @TestApplyPatchToFileByHandles(i64 %116, i64 %117, i32 0)
  store i32 %118, i32* %7, align 4
  %119 = call i64 (...) @GetLastError()
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @CloseHandle(i64 %120)
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @CloseHandle(i64 %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = call i32 (i32, i8*, i64, ...) @ok(i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @ERROR_PATCH_CORRUPT, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, i64, ...) @ok(i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %137, i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @compare_file(i8* %17, i32 %145, i64 %150, i32 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @compare_file(i8* %20, i32 %158, i64 %162, i32 %165)
  %167 = call i32 @DeleteFileA(i8* %17)
  %168 = call i32 @DeleteFileA(i8* %20)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = call i32 @extract(i8* %17, %struct.TYPE_10__* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %111
  store i32 1, i32* %13, align 4
  br label %376

174:                                              ; preds = %111
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, 1
  %184 = call i32 @extract2(i8* %20, i32 %178, i64 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %174
  %187 = call i32 @DeleteFileA(i8* %17)
  store i32 1, i32* %13, align 4
  br label %376

188:                                              ; preds = %174
  %189 = load i32, i32* @FALSE, align 4
  %190 = call i64 @open_file(i8* %17, i32 %189)
  store i64 %190, i64* %9, align 8
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i64 @open_file(i8* %20, i32 %191)
  store i64 %192, i64* %10, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = call i32 @TestApplyPatchToFileByHandles(i64 %193, i64 %194, i32 0)
  store i32 %195, i32* %7, align 4
  %196 = call i64 (...) @GetLastError()
  store i64 %196, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @CloseHandle(i64 %197)
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @CloseHandle(i64 %199)
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = call i32 (i32, i8*, i64, ...) @ok(i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* @ERROR_PATCH_WRONG_FILE, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %8, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, i64, ...) @ok(i32 %213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %214, i32 %217)
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @compare_file(i8* %17, i32 %222, i64 %226, i32 %229)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %238, 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @compare_file(i8* %20, i32 %234, i64 %239, i32 %242)
  %244 = call i32 @DeleteFileA(i8* %17)
  %245 = call i32 @DeleteFileA(i8* %20)
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = call i32 @extract(i8* %17, %struct.TYPE_10__* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %188
  store i32 1, i32* %13, align 4
  br label %376

251:                                              ; preds = %188
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = call i32 @extract(i8* %20, %struct.TYPE_10__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %251
  %257 = call i32 @DeleteFileA(i8* %17)
  store i32 1, i32* %13, align 4
  br label %376

258:                                              ; preds = %251
  %259 = load i32, i32* @APPLY_OPTION_TEST_ONLY, align 4
  %260 = call i32 @ApplyPatchToFileA(i8* %17, i8* %20, i8* %23, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i64 (...) @GetLastError()
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i32, i8*, i64, ...) @ok(i32 %261, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %262, i32 %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @compare_file(i8* %17, i32 %270, i64 %274, i32 %277)
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @compare_file(i8* %20, i32 %282, i64 %286, i32 %289)
  %291 = call i64 @FindFirstFileA(i8* %23, %struct.TYPE_9__* %12)
  store i64 %291, i64* %11, align 8
  %292 = load i64, i64* %11, align 8
  %293 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %299, label %295

295:                                              ; preds = %258
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br label %299

299:                                              ; preds = %295, %258
  %300 = phi i1 [ true, %258 ], [ %298, %295 ]
  %301 = zext i1 %300 to i32
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = call i32 (i32, i8*, i64, ...) @ok(i32 %301, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %305)
  %307 = load i64, i64* %11, align 8
  %308 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %299
  %311 = load i64, i64* %11, align 8
  %312 = call i32 @FindClose(i64 %311)
  br label %313

313:                                              ; preds = %310, %299
  %314 = call i32 @DeleteFileA(i8* %17)
  %315 = call i32 @DeleteFileA(i8* %20)
  %316 = call i32 @DeleteFileA(i8* %23)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 3
  %319 = call i32 @extract(i8* %17, %struct.TYPE_10__* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %313
  store i32 1, i32* %13, align 4
  br label %376

322:                                              ; preds = %313
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 2
  %325 = call i32 @extract(i8* %20, %struct.TYPE_10__* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %322
  %328 = call i32 @DeleteFileA(i8* %17)
  store i32 1, i32* %13, align 4
  br label %376

329:                                              ; preds = %322
  %330 = call i32 @ApplyPatchToFileA(i8* %17, i8* %20, i8* %23, i32 0)
  store i32 %330, i32* %7, align 4
  %331 = load i32, i32* %7, align 4
  %332 = call i64 (...) @GetLastError()
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i32 (i32, i8*, i64, ...) @ok(i32 %331, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %332, i32 %335)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @compare_file(i8* %17, i32 %340, i64 %344, i32 %347)
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @compare_file(i8* %20, i32 %352, i64 %356, i32 %359)
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @compare_file(i8* %23, i32 %364, i64 %368, i32 %371)
  %373 = call i32 @DeleteFileA(i8* %17)
  %374 = call i32 @DeleteFileA(i8* %20)
  %375 = call i32 @DeleteFileA(i8* %23)
  store i32 0, i32* %13, align 4
  br label %376

376:                                              ; preds = %329, %327, %321, %256, %250, %186, %173, %109, %103, %46, %40, %28
  %377 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %377)
  %378 = load i32, i32* %13, align 4
  switch i32 %378, label %380 [
    i32 0, label %379
    i32 1, label %379
  ]

379:                                              ; preds = %376, %376
  ret void

380:                                              ; preds = %376
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetTempFileNameA(i32, i8*, i32, i8*) #3

declare dso_local i32 @ok(i32, i8*, i64, ...) #3

declare dso_local i64 @GetLastError(...) #3

declare dso_local i32 @DeleteFileA(i8*) #3

declare dso_local i32 @extract(i8*, %struct.TYPE_10__*) #3

declare dso_local i64 @open_file(i8*, i32) #3

declare dso_local i32 @TestApplyPatchToFileByHandles(i64, i64, i32) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @compare_file(i8*, i32, i64, i32) #3

declare dso_local i32 @extract2(i8*, i32, i64) #3

declare dso_local i32 @ApplyPatchToFileA(i8*, i8*, i8*, i32) #3

declare dso_local i64 @FindFirstFileA(i8*, %struct.TYPE_9__*) #3

declare dso_local i32 @FindClose(i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
