; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrintProcessorDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrintProcessorDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"returned %d with %d (expected '!= 0')\0A\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER or with ERROR_INVALID_PARAMETER)\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"returned %d with %d (expected '0' with ERROR_INVALID_LEVEL)\0A\00", align 1
@empty = common dso_local global i32* null, align 8
@env_win9x_case = common dso_local global i32* null, align 8
@env_x86 = common dso_local global i32* null, align 8
@ERROR_INVALID_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"returned %d with %d (expected '!= 0' or '0' with ERROR_INVALID_ENVIRONMENT)\0A\00", align 1
@invalid_env = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"returned %d with %d (expected '0' with ERROR_INVALID_ENVIRONMENT)\0A\00", align 1
@server_does_not_exist = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"expected failure\0A\00", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@RPC_S_INVALID_NET_ADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"unexpected last error %d\0A\00", align 1
@ERROR_INVALID_USER_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetPrintProcessorDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetPrintProcessorDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* null, i32 0, i32* %2)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (...) @GetLastError()
  %9 = call i64 @is_spooler_deactivated(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %292

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @GetLastError()
  %17 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %27)
  store i8* %28, i8** %1, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %292

32:                                               ; preds = %19
  %33 = load i8*, i8** %1, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = load i8*, i8** %1, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* %36, i32 %37, i32* %3)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = load i8*, i8** %1, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %1, align 8
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* %46, i32 %48, i32* %3)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i8*, i8** %1, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i8*, i8** %1, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* %57, i32 %59, i32* %3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %32
  %64 = call i32 (...) @GetLastError()
  %65 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %32
  %68 = phi i1 [ false, %32 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 0, i8* %74, align 1
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i8*, i8** %1, align 8
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* %76, i32 %77, i32* null)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %67
  %82 = call i32 (...) @GetLastError()
  %83 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = call i32 (...) @GetLastError()
  %87 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ true, %81 ], [ %88, %85 ]
  br label %91

91:                                               ; preds = %89, %67
  %92 = phi i1 [ false, %67 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i8*, i8** %1, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 1
  %99 = call i32 @SetLastError(i32 -559038737)
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 1, i8* null, i32 %100, i32* null)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %91
  %105 = call i32 (...) @GetLastError()
  %106 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = call i32 (...) @GetLastError()
  %110 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ true, %104 ], [ %111, %108 ]
  br label %114

114:                                              ; preds = %112, %91
  %115 = phi i1 [ false, %91 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i8*, i8** %1, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 0, i8* %121, align 1
  %122 = call i32 @SetLastError(i32 -559038737)
  %123 = load i8*, i8** %1, align 8
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 0, i8* %123, i32 %124, i32* %3)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %114
  %129 = call i32 (...) @GetLastError()
  %130 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %146, label %132

132:                                              ; preds = %128, %114
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** %1, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i1 [ false, %132 ], [ %140, %135 ]
  %143 = zext i1 %142 to i32
  %144 = call i64 @broken(i32 %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %141, %128
  %147 = phi i1 [ true, %128 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %4, align 4
  %150 = call i32 (...) @GetLastError()
  %151 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i8*, i8** %1, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 0, i8* %153, align 1
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i8*, i8** %1, align 8
  %156 = load i32, i32* %2, align 4
  %157 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* null, i32 2, i8* %155, i32 %156, i32* %3)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %146
  %161 = call i32 (...) @GetLastError()
  %162 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %178, label %164

164:                                              ; preds = %160, %146
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i8*, i8** %1, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br label %173

173:                                              ; preds = %167, %164
  %174 = phi i1 [ false, %164 ], [ %172, %167 ]
  %175 = zext i1 %174 to i32
  %176 = call i64 @broken(i32 %175)
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %173, %160
  %179 = phi i1 [ true, %160 ], [ %177, %173 ]
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %4, align 4
  %182 = call i32 (...) @GetLastError()
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i8*, i8** %1, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 0, i8* %185, align 1
  %186 = call i32 @SetLastError(i32 -559038737)
  %187 = load i32*, i32** @empty, align 8
  %188 = load i8*, i8** %1, align 8
  %189 = load i32, i32* %2, align 4
  %190 = mul nsw i32 %189, 2
  %191 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* %187, i32 1, i8* %188, i32 %190, i32* %3)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (...) @GetLastError()
  %195 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i8*, i8** %1, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  store i8 0, i8* %197, align 1
  %198 = call i32 @SetLastError(i32 -559038737)
  %199 = load i32*, i32** @env_win9x_case, align 8
  %200 = load i8*, i8** %1, align 8
  %201 = load i32, i32* %2, align 4
  %202 = mul nsw i32 %201, 2
  %203 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* %199, i32 1, i8* %200, i32 %202, i32* %3)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = call i32 (...) @GetLastError()
  %207 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load i8*, i8** %1, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  store i8 0, i8* %209, align 1
  %210 = call i32 @SetLastError(i32 -559038737)
  %211 = load i32*, i32** @env_x86, align 8
  %212 = load i8*, i8** %1, align 8
  %213 = load i32, i32* %2, align 4
  %214 = mul nsw i32 %213, 2
  %215 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* %211, i32 1, i8* %212, i32 %214, i32* %3)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %178
  %219 = call i32 (...) @GetLastError()
  %220 = load i32, i32* @ERROR_INVALID_ENVIRONMENT, align 4
  %221 = icmp eq i32 %219, %220
  br label %222

222:                                              ; preds = %218, %178
  %223 = phi i1 [ true, %178 ], [ %221, %218 ]
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %4, align 4
  %226 = call i32 (...) @GetLastError()
  %227 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load i8*, i8** %1, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 0
  store i8 0, i8* %229, align 1
  %230 = call i32 @SetLastError(i32 -559038737)
  %231 = load i32*, i32** @invalid_env, align 8
  %232 = load i8*, i8** %1, align 8
  %233 = load i32, i32* %2, align 4
  %234 = mul nsw i32 %233, 2
  %235 = call i32 @GetPrintProcessorDirectoryA(i32* null, i32* %231, i32 1, i8* %232, i32 %234, i32* %3)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %222
  %239 = call i32 (...) @GetLastError()
  %240 = load i32, i32* @ERROR_INVALID_ENVIRONMENT, align 4
  %241 = icmp eq i32 %239, %240
  br label %242

242:                                              ; preds = %238, %222
  %243 = phi i1 [ false, %222 ], [ %241, %238 ]
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %4, align 4
  %246 = call i32 (...) @GetLastError()
  %247 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %245, i32 %246)
  %248 = load i8*, i8** %1, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  store i8 0, i8* %249, align 1
  %250 = call i32 @SetLastError(i32 -559038737)
  %251 = load i32*, i32** @empty, align 8
  %252 = load i8*, i8** %1, align 8
  %253 = load i32, i32* %2, align 4
  %254 = mul nsw i32 %253, 2
  %255 = call i32 @GetPrintProcessorDirectoryA(i32* %251, i32* null, i32 1, i8* %252, i32 %254, i32* %3)
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = call i32 (...) @GetLastError()
  %259 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i8*, i8** %1, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  store i8 0, i8* %261, align 1
  %262 = call i32 @SetLastError(i32 -559038737)
  %263 = load i32*, i32** @server_does_not_exist, align 8
  %264 = load i8*, i8** %1, align 8
  %265 = load i32, i32* %2, align 4
  %266 = mul nsw i32 %265, 2
  %267 = call i32 @GetPrintProcessorDirectoryA(i32* %263, i32* null, i32 1, i8* %264, i32 %266, i32* %3)
  store i32 %267, i32* %4, align 4
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %273 = call i32 (...) @GetLastError()
  %274 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %284, label %276

276:                                              ; preds = %242
  %277 = call i32 (...) @GetLastError()
  %278 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = call i32 (...) @GetLastError()
  %282 = load i32, i32* @RPC_S_INVALID_NET_ADDR, align 4
  %283 = icmp eq i32 %281, %282
  br label %284

284:                                              ; preds = %280, %276, %242
  %285 = phi i1 [ true, %276 ], [ true, %242 ], [ %283, %280 ]
  %286 = zext i1 %285 to i32
  %287 = call i32 (...) @GetLastError()
  %288 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %287)
  %289 = call i32 (...) @GetProcessHeap()
  %290 = load i8*, i8** %1, align 8
  %291 = call i32 @HeapFree(i32 %289, i32 0, i8* %290)
  br label %292

292:                                              ; preds = %284, %31, %11
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetPrintProcessorDirectoryA(i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
