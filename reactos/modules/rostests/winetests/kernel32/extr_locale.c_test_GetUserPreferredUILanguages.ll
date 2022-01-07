; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetUserPreferredUILanguages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetUserPreferredUILanguages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUI_FULL_LANGUAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expected GetUserPreferredUILanguages to fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected error ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@MUI_LANGUAGE_ID = common dso_local global i32 0, align 4
@MUI_MACHINE_LANGUAGE_SETTINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected GetUserPreferredUILanguages to succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Expected count > 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Expected size (%d) %% 5 == 1\0A\00", align 1
@MUI_LANGUAGE_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Expected size (%d) %% 6 == 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"No valid buffer size\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Expected last two WCHARs being empty, got 0x%x 0x%x\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Expected error ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetUserPreferredUILanguages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetUserPreferredUILanguages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 -559038737, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32, i32* @MUI_FULL_LANGUAGE, align 4
  %10 = call i32 @pGetUserPreferredUILanguages(i32 %9, i32* %2, i32* null, i32* %3)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %17 = call i32 (...) @GetLastError()
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 -559038737, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %24 = load i32, i32* @MUI_FULL_LANGUAGE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @pGetUserPreferredUILanguages(i32 %25, i32* %2, i32* null, i32* %3)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %33 = call i32 (...) @GetLastError()
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 -559038737, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %40 = load i32, i32* @MUI_MACHINE_LANGUAGE_SETTINGS, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @pGetUserPreferredUILanguages(i32 %41, i32* %2, i32* null, i32* %3)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 -559038737, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %54 = call i32 @SetLastError(i32 -559038737)
  %55 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %56 = call i32 @pGetUserPreferredUILanguages(i32 %55, i32* %2, i32* null, i32* %3)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %63 = call i32 (...) @GetLastError()
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32 -559038737, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %68 = call i32 @SetLastError(i32 -559038737)
  %69 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %70 = call i32 @pGetUserPreferredUILanguages(i32 %69, i32* %2, i32* null, i32* %4)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = srem i32 %75, 5
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  store i32 -559038737, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %81 = call i32 @SetLastError(i32 -559038737)
  %82 = load i32, i32* @MUI_LANGUAGE_NAME, align 4
  %83 = call i32 @pGetUserPreferredUILanguages(i32 %82, i32* %2, i32* null, i32* %5)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %5, align 4
  %89 = srem i32 %88, 6
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @max(i32 %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %0
  %100 = call i32 @skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %347

101:                                              ; preds = %0
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32* @HeapAlloc(i32 %102, i32 0, i32 %106)
  store i32* %107, i32** %7, align 8
  store i32 -559038737, i32* %2, align 4
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(i32* %109, i32 90, i32 %113)
  %115 = call i32 @SetLastError(i32 -559038737)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @pGetUserPreferredUILanguages(i32 0, i32* %2, i32* %116, i32* %3)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* %2, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* %3, align 4
  %123 = srem i32 %122, 6
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %3, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %1, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %101
  %131 = load i32, i32* %3, align 4
  %132 = srem i32 %131, 6
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %167

134:                                              ; preds = %130
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sub nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %134
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %142, %134
  %152 = phi i1 [ false, %134 ], [ %150, %142 ]
  %153 = zext i1 %152 to i32
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sub nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %159, i32 %165)
  br label %167

167:                                              ; preds = %151, %130, %101
  store i32 -559038737, i32* %2, align 4
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memset(i32* %169, i32 90, i32 %173)
  %175 = call i32 @SetLastError(i32 -559038737)
  %176 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @pGetUserPreferredUILanguages(i32 %176, i32* %2, i32* %177, i32* %3)
  store i32 %178, i32* %1, align 4
  %179 = load i32, i32* %1, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* %2, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i32, i32* %3, align 4
  %184 = srem i32 %183, 5
  %185 = icmp eq i32 %184, 1
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %3, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %1, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %228

191:                                              ; preds = %167
  %192 = load i32, i32* %3, align 4
  %193 = srem i32 %192, 5
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %228

195:                                              ; preds = %191
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sub nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %195
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %203, %195
  %213 = phi i1 [ false, %195 ], [ %211, %203 ]
  %214 = zext i1 %213 to i32
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sub nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %220, i32 %226)
  br label %228

228:                                              ; preds = %212, %191, %167
  store i32 -559038737, i32* %2, align 4
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %3, align 4
  %230 = call i32 @SetLastError(i32 -559038737)
  %231 = load i32, i32* @MUI_LANGUAGE_NAME, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @pGetUserPreferredUILanguages(i32 %231, i32* %2, i32* %232, i32* %3)
  store i32 %233, i32* %1, align 4
  %234 = load i32, i32* %1, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %236 = load i32, i32* %2, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %238 = load i32, i32* %3, align 4
  %239 = srem i32 %238, 6
  %240 = icmp eq i32 %239, 1
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %3, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %1, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %283

246:                                              ; preds = %228
  %247 = load i32, i32* %3, align 4
  %248 = srem i32 %247, 5
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %283

250:                                              ; preds = %246
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* %3, align 4
  %253 = sub nsw i32 %252, 2
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %250
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  br label %267

267:                                              ; preds = %258, %250
  %268 = phi i1 [ false, %250 ], [ %266, %258 ]
  %269 = zext i1 %268 to i32
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sub nsw i32 %271, 2
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %275, i32 %281)
  br label %283

283:                                              ; preds = %267, %246, %228
  store i32 -559038737, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %284 = call i32 @SetLastError(i32 -559038737)
  %285 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @pGetUserPreferredUILanguages(i32 %285, i32* %2, i32* %286, i32* %3)
  store i32 %287, i32* %1, align 4
  %288 = load i32, i32* %1, align 4
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %293 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %294 = call i32 (...) @GetLastError()
  %295 = icmp eq i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 (...) @GetLastError()
  %298 = call i32 (i32, i8*, ...) @ok(i32 %296, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %297)
  store i32 -559038737, i32* %2, align 4
  %299 = load i32, i32* %4, align 4
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* %3, align 4
  %301 = load i32*, i32** %7, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = mul i64 %303, 4
  %305 = trunc i64 %304 to i32
  %306 = call i32 @memset(i32* %301, i32 90, i32 %305)
  %307 = call i32 @SetLastError(i32 -559038737)
  %308 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @pGetUserPreferredUILanguages(i32 %308, i32* %2, i32* %309, i32* %3)
  store i32 %310, i32* %1, align 4
  %311 = load i32, i32* %1, align 4
  %312 = icmp ne i32 %311, 0
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %316 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %317 = call i32 (...) @GetLastError()
  %318 = icmp eq i32 %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 (...) @GetLastError()
  %321 = call i32 (i32, i8*, ...) @ok(i32 %319, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %320)
  store i32 -559038737, i32* %2, align 4
  %322 = load i32, i32* %4, align 4
  %323 = sub nsw i32 %322, 2
  store i32 %323, i32* %3, align 4
  %324 = load i32*, i32** %7, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = mul i64 %326, 4
  %328 = trunc i64 %327 to i32
  %329 = call i32 @memset(i32* %324, i32 90, i32 %328)
  %330 = call i32 @SetLastError(i32 -559038737)
  %331 = load i32*, i32** %7, align 8
  %332 = call i32 @pGetUserPreferredUILanguages(i32 0, i32* %2, i32* %331, i32* %3)
  store i32 %332, i32* %1, align 4
  %333 = load i32, i32* %1, align 4
  %334 = icmp ne i32 %333, 0
  %335 = xor i1 %334, true
  %336 = zext i1 %335 to i32
  %337 = call i32 (i32, i8*, ...) @ok(i32 %336, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %338 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %339 = call i32 (...) @GetLastError()
  %340 = icmp eq i32 %338, %339
  %341 = zext i1 %340 to i32
  %342 = call i32 (...) @GetLastError()
  %343 = call i32 (i32, i8*, ...) @ok(i32 %341, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %342)
  %344 = call i32 (...) @GetProcessHeap()
  %345 = load i32*, i32** %7, align 8
  %346 = call i32 @HeapFree(i32 %344, i32 0, i32* %345)
  br label %347

347:                                              ; preds = %283, %99
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetUserPreferredUILanguages(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
