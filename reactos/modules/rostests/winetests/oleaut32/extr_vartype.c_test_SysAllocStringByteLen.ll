; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_SysAllocStringByteLen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_SysAllocStringByteLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@__const.test_SysAllocStringByteLen.szTest = private unnamed_addr constant [10 x i8] c"Test\00\00\00\00\00\00", align 1
@__const.test_SysAllocStringByteLen.szTestA = private unnamed_addr constant [6 x i8] c"Test\00?", align 1
@.str = private unnamed_addr constant [23 x i8] c"Expected NULL, got %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Expected non-NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"String not empty\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Expected 4, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"String different\0A\00", align 1
@__const.test_SysAllocStringByteLen.szTestTruncA = private unnamed_addr constant [4 x i8] c"Tes\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected 3, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"String not terminated\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Expected 8, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SysAllocStringByteLen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SysAllocStringByteLen() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = bitcast [10 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_SysAllocStringByteLen.szTest, i32 0, i32 0), i64 10, i1 false)
  %13 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_SysAllocStringByteLen.szTestA, i32 0, i32 0), i64 6, i1 false)
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %15 = call i32* @SysAllocStringByteLen(i8* %14, i32 -1)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = call i32* @SysAllocStringByteLen(i8* null, i32 0)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %0
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_3__* @Get(i32* %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @SysFreeString(i32* %49)
  br label %51

51:                                               ; preds = %28, %0
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %53 = call i32* @SysAllocStringByteLen(i8* %52, i32 4)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** %4, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %51
  %61 = load i32*, i32** %4, align 8
  %62 = call %struct.TYPE_3__* @Get(i32* %61)
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %7, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 4
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %77 = call i32 @lstrcmpA(i8* %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  br label %84

84:                                               ; preds = %60, %51
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %86 = call i32* @SysAllocStringByteLen(i8* %85, i32 3)
  store i32* %86, i32** %4, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = icmp ne i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32*, i32** %4, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %127

93:                                               ; preds = %84
  %94 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %94, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_SysAllocStringByteLen.szTestTruncA, i32 0, i32 0), i64 4, i1 false)
  %95 = load i32*, i32** %4, align 8
  %96 = call %struct.TYPE_3__* @Get(i32* %95)
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %9, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 3
  %101 = zext i1 %100 to i32
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %111 = call i32 @lstrcmpA(i8* %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @SysFreeString(i32* %125)
  br label %127

127:                                              ; preds = %93, %84
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %129 = call i32* @SysAllocStringByteLen(i8* %128, i32 8)
  store i32* %129, i32** %4, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32*, i32** %4, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %159

136:                                              ; preds = %127
  %137 = load i32*, i32** %4, align 8
  %138 = call %struct.TYPE_3__* @Get(i32* %137)
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %10, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 8
  %143 = zext i1 %142 to i32
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %152 = call i32 @lstrcmpW(i32* %150, i8* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @SysFreeString(i32* %157)
  br label %159

159:                                              ; preds = %136, %127
  %160 = call i32 (...) @GetProcessHeap()
  %161 = call i8* @HeapAlloc(i32 %160, i32 0, i32 1025)
  store i8* %161, i8** %3, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = icmp ne i8* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %257, %159
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 1024
  br i1 %168, label %169, label %260

169:                                              ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = call i32* @SysAllocStringByteLen(i8* null, i32 %170)
  store i32* %171, i32** %4, align 8
  %172 = load i32*, i32** %4, align 8
  %173 = icmp ne i32* %172, null
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %176 = load i32*, i32** %4, align 8
  %177 = call %struct.TYPE_3__* @Get(i32* %176)
  store %struct.TYPE_3__* %177, %struct.TYPE_3__** %11, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 %193, 4
  %195 = sub i64 %194, 1
  %196 = udiv i64 %195, 4
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @SysFreeString(i32* %203)
  %205 = load i8*, i8** %3, align 8
  %206 = call i32 @memset(i8* %205, i32 170, i32 1025)
  %207 = load i8*, i8** %3, align 8
  %208 = load i32, i32* %5, align 4
  %209 = call i32* @SysAllocStringByteLen(i8* %207, i32 %208)
  store i32* %209, i32** %4, align 8
  %210 = load i32*, i32** %4, align 8
  %211 = icmp ne i32* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %214 = load i32*, i32** %4, align 8
  %215 = call %struct.TYPE_3__* @Get(i32* %214)
  store %struct.TYPE_3__* %215, %struct.TYPE_3__** %11, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %222, i32 %225)
  %227 = load i8*, i8** %3, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  store i8 0, i8* %230, align 1
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast i32* %233 to i8*
  %235 = load i8*, i8** %3, align 8
  %236 = call i32 @lstrcmpA(i8* %234, i8* %235)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = add i64 %245, 4
  %247 = sub i64 %246, 1
  %248 = udiv i64 %247, 4
  %249 = getelementptr inbounds i32, i32* %243, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @SysFreeString(i32* %255)
  br label %257

257:                                              ; preds = %169
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %166

260:                                              ; preds = %166
  %261 = call i32 (...) @GetProcessHeap()
  %262 = load i8*, i8** %3, align 8
  %263 = call i32 @HeapFree(i32 %261, i32 0, i8* %262)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @SysAllocStringByteLen(i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local %struct.TYPE_3__* @Get(i32*) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @lstrcmpW(i32*, i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
