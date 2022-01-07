; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_heap_checks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_heap_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_PAGE_ALLOCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"testing heap flags %08x\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"HeapValidate failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Wrong size %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"wrong data %x\0A\00", align 1
@HEAP_TAIL_CHECKING_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"wrong padding %x\0A\00", align 1
@HEAP_REALLOC_IN_PLACE_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"realloc in place failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"HeapFree failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"HeapValidate succeeded\0A\00", align 1
@HEAP_VALIDATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"HeapReAlloc succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"HeapFree succeeded\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"HeapReAlloc failed\0A\00", align 1
@HEAP_FREE_CHECKING_ENABLED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"only %lu tail bytes for size %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_heap_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_heap_checks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 3072037, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @HEAP_PAGE_ALLOCS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %576

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call i32* @HeapAlloc(i32 %18, i32 %19, i32 17)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @HeapValidate(i32 %25, i32 0, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @HeapSize(i32 %30, i32 0, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 17
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 14
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 14
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 15
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 15
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %15
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 17
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 171
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 17
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 18
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 171
  %83 = zext i1 %82 to i32
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 18
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 19
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 171
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 19
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %69, %15
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i32, i32* @HEAP_REALLOC_IN_PLACE_ONLY, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = call i32* @HeapReAlloc(i32 %98, i32 %99, i32* %100, i32 14)
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = icmp eq i32* %102, %103
  br i1 %104, label %105, label %158

105:                                              ; preds = %97
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 14
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 171
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 14
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 15
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 171
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 16
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 171
  %133 = zext i1 %132 to i32
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 16
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  br label %157

138:                                              ; preds = %105
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 14
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 14
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 15
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 15
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %138, %110
  br label %160

158:                                              ; preds = %97
  %159 = call i32 @skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %157
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @HeapFree(i32 %161, i32 0, i32* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %168 = call i32* @HeapAlloc(i32 %166, i32 %167, i32 17)
  store i32* %168, i32** %4, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = icmp ne i32* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 17
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %3, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 17
  store i32 204, i32* %177, align 4
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %251

182:                                              ; preds = %160
  %183 = call i32 (...) @GetProcessHeap()
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @HeapValidate(i32 %183, i32 0, i32* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %191 = load i32, i32* %2, align 4
  %192 = load i32, i32* @HEAP_VALIDATE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %231

195:                                              ; preds = %182
  %196 = call i32 (...) @GetProcessHeap()
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @HeapSize(i32 %196, i32 0, i32* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = icmp eq i32 %202, -1
  %204 = zext i1 %203 to i32
  %205 = call i64 @broken(i32 %204)
  %206 = icmp ne i64 %205, 0
  br label %207

207:                                              ; preds = %201, %195
  %208 = phi i1 [ true, %195 ], [ %206, %201 ]
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  %212 = call i32 (...) @GetProcessHeap()
  %213 = load i32*, i32** %4, align 8
  %214 = call i32* @HeapReAlloc(i32 %212, i32 0, i32* %213, i32 14)
  store i32* %214, i32** %5, align 8
  %215 = load i32*, i32** %5, align 8
  %216 = icmp eq i32* %215, null
  %217 = zext i1 %216 to i32
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %219 = call i32 (...) @GetProcessHeap()
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @HeapFree(i32 %219, i32 0, i32* %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %207
  %225 = call i64 @broken(i32 1)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %224, %207
  %228 = phi i1 [ true, %207 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %231

231:                                              ; preds = %227, %182
  %232 = load i32, i32* %3, align 4
  %233 = load i32*, i32** %4, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 17
  store i32 %232, i32* %234, align 4
  %235 = call i32 (...) @GetProcessHeap()
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @HeapSize(i32 %235, i32 0, i32* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp eq i32 %238, 17
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %8, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  %243 = call i32 (...) @GetProcessHeap()
  %244 = load i32*, i32** %4, align 8
  %245 = call i32* @HeapReAlloc(i32 %243, i32 0, i32* %244, i32 14)
  store i32* %245, i32** %5, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = icmp ne i32* %246, null
  %248 = zext i1 %247 to i32
  %249 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %250 = load i32*, i32** %5, align 8
  store i32* %250, i32** %4, align 8
  br label %251

251:                                              ; preds = %231, %160
  %252 = call i32 (...) @GetProcessHeap()
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @HeapFree(i32 %252, i32 0, i32* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %257 = call i32 (...) @GetProcessHeap()
  %258 = call i32* @HeapAlloc(i32 %257, i32 0, i32 37)
  store i32* %258, i32** %4, align 8
  %259 = load i32*, i32** %4, align 8
  %260 = icmp ne i32* %259, null
  %261 = zext i1 %260 to i32
  %262 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @memset(i32* %263, i32 204, i32 37)
  %265 = call i32 (...) @GetProcessHeap()
  %266 = load i32*, i32** %4, align 8
  %267 = call i32 @HeapFree(i32 %265, i32 0, i32* %266)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* @HEAP_FREE_CHECKING_ENABLED, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %334

274:                                              ; preds = %251
  %275 = load i32*, i32** %4, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 16
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 238
  %279 = zext i1 %278 to i32
  %280 = load i32*, i32** %4, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 16
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %282)
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 17
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 254
  %288 = zext i1 %287 to i32
  %289 = load i32*, i32** %4, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 17
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %291)
  %293 = load i32*, i32** %4, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 18
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 238
  %297 = zext i1 %296 to i32
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 18
  %300 = load i32, i32* %299, align 4
  %301 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %300)
  %302 = load i32*, i32** %4, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 19
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 254
  %306 = zext i1 %305 to i32
  %307 = load i32*, i32** %4, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 19
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32, i8*, ...) @ok(i32 %306, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %309)
  %311 = call i32 (...) @GetProcessHeap()
  %312 = call i32 @HeapValidate(i32 %311, i32 0, i32* null)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %315 = load i32*, i32** %4, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 16
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %3, align 4
  %318 = load i32*, i32** %4, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 16
  store i32 204, i32* %319, align 4
  %320 = call i32 (...) @GetProcessHeap()
  %321 = call i32 @HeapValidate(i32 %320, i32 0, i32* null)
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %327 = load i32, i32* %3, align 4
  %328 = load i32*, i32** %4, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 16
  store i32 %327, i32* %329, align 4
  %330 = call i32 (...) @GetProcessHeap()
  %331 = call i32 @HeapValidate(i32 %330, i32 0, i32* null)
  store i32 %331, i32* %6, align 4
  %332 = load i32, i32* %6, align 4
  %333 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %334

334:                                              ; preds = %274, %251
  %335 = call i32 (...) @GetProcessHeap()
  %336 = load i32, i32* %9, align 4
  %337 = call i32* @HeapAlloc(i32 %335, i32 0, i32 %336)
  store i32* %337, i32** %4, align 8
  %338 = load i32*, i32** %4, align 8
  %339 = icmp ne i32* %338, null
  %340 = zext i1 %339 to i32
  %341 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %342 = call i32 (...) @GetProcessHeap()
  %343 = load i32*, i32** %4, align 8
  %344 = call i32 @HeapValidate(i32 %342, i32 0, i32* %343)
  store i32 %344, i32* %6, align 4
  %345 = load i32, i32* %6, align 4
  %346 = call i32 (i32, i8*, ...) @ok(i32 %345, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %347 = call i32 (...) @GetProcessHeap()
  %348 = load i32*, i32** %4, align 8
  %349 = call i32 @HeapSize(i32 %347, i32 0, i32* %348)
  store i32 %349, i32* %8, align 4
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* %9, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  %354 = load i32, i32* %8, align 4
  %355 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %354)
  %356 = load i32*, i32** %4, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sub nsw i32 %357, 2
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 0
  %363 = zext i1 %362 to i32
  %364 = load i32*, i32** %4, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sub nsw i32 %365, 2
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 (i32, i8*, ...) @ok(i32 %363, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %369)
  %371 = load i32*, i32** %4, align 8
  %372 = load i32, i32* %9, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 0
  %378 = zext i1 %377 to i32
  %379 = load i32*, i32** %4, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sub nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (i32, i8*, ...) @ok(i32 %378, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %384)
  %386 = load i32, i32* %2, align 4
  %387 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %527

390:                                              ; preds = %334
  %391 = load i32*, i32** %4, align 8
  %392 = load i32, i32* %9, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 171
  br i1 %396, label %407, label %397

397:                                              ; preds = %390
  %398 = load i32*, i32** %4, align 8
  %399 = load i32, i32* %9, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 0
  %404 = zext i1 %403 to i32
  %405 = call i64 @broken(i32 %404)
  %406 = icmp ne i64 %405, 0
  br label %407

407:                                              ; preds = %397, %390
  %408 = phi i1 [ true, %390 ], [ %406, %397 ]
  %409 = zext i1 %408 to i32
  %410 = load i32*, i32** %4, align 8
  %411 = load i32, i32* %9, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (i32, i8*, ...) @ok(i32 %409, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %414)
  %416 = load i32*, i32** %4, align 8
  %417 = load i32, i32* %9, align 4
  %418 = add nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %416, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 171
  br i1 %422, label %434, label %423

423:                                              ; preds = %407
  %424 = load i32*, i32** %4, align 8
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, 0
  %431 = zext i1 %430 to i32
  %432 = call i64 @broken(i32 %431)
  %433 = icmp ne i64 %432, 0
  br label %434

434:                                              ; preds = %423, %407
  %435 = phi i1 [ true, %407 ], [ %433, %423 ]
  %436 = zext i1 %435 to i32
  %437 = load i32*, i32** %4, align 8
  %438 = load i32, i32* %9, align 4
  %439 = add nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = call i32 (i32, i8*, ...) @ok(i32 %436, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %442)
  %444 = load i32*, i32** %4, align 8
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 2
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %449, 171
  br i1 %450, label %462, label %451

451:                                              ; preds = %434
  %452 = load i32*, i32** %4, align 8
  %453 = load i32, i32* %9, align 4
  %454 = add nsw i32 %453, 2
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = icmp eq i32 %457, 0
  %459 = zext i1 %458 to i32
  %460 = call i64 @broken(i32 %459)
  %461 = icmp ne i64 %460, 0
  br label %462

462:                                              ; preds = %451, %434
  %463 = phi i1 [ true, %434 ], [ %461, %451 ]
  %464 = zext i1 %463 to i32
  %465 = load i32*, i32** %4, align 8
  %466 = load i32, i32* %9, align 4
  %467 = add nsw i32 %466, 2
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = call i32 (i32, i8*, ...) @ok(i32 %464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %470)
  %472 = load i32*, i32** %4, align 8
  %473 = load i32, i32* %9, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 171
  br i1 %477, label %478, label %526

478:                                              ; preds = %462
  %479 = load i32*, i32** %4, align 8
  %480 = load i32, i32* %9, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  store i32 204, i32* %482, align 4
  %483 = call i32 (...) @GetProcessHeap()
  %484 = load i32*, i32** %4, align 8
  %485 = call i32 @HeapValidate(i32 %483, i32 0, i32* %484)
  store i32 %485, i32* %6, align 4
  %486 = load i32, i32* %6, align 4
  %487 = icmp ne i32 %486, 0
  %488 = xor i1 %487, true
  %489 = zext i1 %488 to i32
  %490 = call i32 (i32, i8*, ...) @ok(i32 %489, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %491 = load i32, i32* %2, align 4
  %492 = load i32, i32* @HEAP_VALIDATE, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %521

495:                                              ; preds = %478
  %496 = call i32 (...) @GetProcessHeap()
  %497 = load i32*, i32** %4, align 8
  %498 = call i32 @HeapSize(i32 %496, i32 0, i32* %497)
  store i32 %498, i32* %8, align 4
  %499 = load i32, i32* %8, align 4
  %500 = icmp eq i32 %499, -1
  %501 = zext i1 %500 to i32
  %502 = load i32, i32* %8, align 4
  %503 = call i32 (i32, i8*, ...) @ok(i32 %501, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %502)
  %504 = call i32 (...) @GetProcessHeap()
  %505 = load i32*, i32** %4, align 8
  %506 = load i32, i32* %9, align 4
  %507 = sub nsw i32 %506, 3
  %508 = call i32* @HeapReAlloc(i32 %504, i32 0, i32* %505, i32 %507)
  store i32* %508, i32** %5, align 8
  %509 = load i32*, i32** %5, align 8
  %510 = icmp eq i32* %509, null
  %511 = zext i1 %510 to i32
  %512 = call i32 (i32, i8*, ...) @ok(i32 %511, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %513 = call i32 (...) @GetProcessHeap()
  %514 = load i32*, i32** %4, align 8
  %515 = call i32 @HeapFree(i32 %513, i32 0, i32* %514)
  store i32 %515, i32* %6, align 4
  %516 = load i32, i32* %6, align 4
  %517 = icmp ne i32 %516, 0
  %518 = xor i1 %517, true
  %519 = zext i1 %518 to i32
  %520 = call i32 (i32, i8*, ...) @ok(i32 %519, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %521

521:                                              ; preds = %495, %478
  %522 = load i32*, i32** %4, align 8
  %523 = load i32, i32* %9, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 171, i32* %525, align 4
  br label %526

526:                                              ; preds = %521, %462
  br label %527

527:                                              ; preds = %526, %334
  %528 = call i32 (...) @GetProcessHeap()
  %529 = load i32*, i32** %4, align 8
  %530 = call i32 @HeapFree(i32 %528, i32 0, i32* %529)
  store i32 %530, i32* %6, align 4
  %531 = load i32, i32* %6, align 4
  %532 = call i32 (i32, i8*, ...) @ok(i32 %531, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %533 = load i32, i32* %2, align 4
  %534 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %576

537:                                              ; preds = %527
  store i32 0, i32* %8, align 4
  br label %538

538:                                              ; preds = %572, %537
  %539 = load i32, i32* %8, align 4
  %540 = icmp slt i32 %539, 64
  br i1 %540, label %541, label %575

541:                                              ; preds = %538
  %542 = call i32 (...) @GetProcessHeap()
  %543 = load i32, i32* %8, align 4
  %544 = call i32* @HeapAlloc(i32 %542, i32 0, i32 %543)
  store i32* %544, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %545

545:                                              ; preds = %559, %541
  %546 = load i32, i32* %7, align 4
  %547 = icmp slt i32 %546, 32
  br i1 %547, label %548, label %562

548:                                              ; preds = %545
  %549 = load i32*, i32** %4, align 8
  %550 = load i32, i32* %8, align 4
  %551 = load i32, i32* %7, align 4
  %552 = add nsw i32 %550, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %549, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = icmp ne i32 %555, 171
  br i1 %556, label %557, label %558

557:                                              ; preds = %548
  br label %562

558:                                              ; preds = %548
  br label %559

559:                                              ; preds = %558
  %560 = load i32, i32* %7, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %7, align 4
  br label %545

562:                                              ; preds = %557, %545
  %563 = load i32, i32* %7, align 4
  %564 = icmp sge i32 %563, 8
  %565 = zext i1 %564 to i32
  %566 = load i32, i32* %7, align 4
  %567 = load i32, i32* %8, align 4
  %568 = call i32 (i32, i8*, ...) @ok(i32 %565, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %566, i32 %567)
  %569 = call i32 (...) @GetProcessHeap()
  %570 = load i32*, i32** %4, align 8
  %571 = call i32 @HeapFree(i32 %569, i32 0, i32* %570)
  br label %572

572:                                              ; preds = %562
  %573 = load i32, i32* %8, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %8, align 4
  br label %538

575:                                              ; preds = %538
  br label %576

576:                                              ; preds = %14, %575, %527
  ret void
}

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @HeapValidate(i32, i32, i32*) #1

declare dso_local i32 @HeapSize(i32, i32, i32*) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
