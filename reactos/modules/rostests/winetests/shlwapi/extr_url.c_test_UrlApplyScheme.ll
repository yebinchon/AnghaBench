; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlApplyScheme.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlApplyScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32, i32 }

@TEST_APPLY_MAX_LENGTH = common dso_local global i32 0, align 4
@TEST_APPLY = common dso_local global %struct.TYPE_3__* null, align 8
@untouchedA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"#%dA: got HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"#%dA: got len %d (expected %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"#%dA: got '%s' (expected '%s')\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"#%dW: got HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"#%dW: got len %d (expected %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"#%dW: got '%s' (expected '%s')\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"got HRESULT 0x%x (expected E_POINTER)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"got len %d (expected %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"got '%s' (expected '%s')\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"got HRESULT 0x%x (expected E_INVALIDARG)\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"got len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UrlApplyScheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UrlApplyScheme() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %159, %0
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %162

23:                                               ; preds = %18
  %24 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* @untouchedA, align 4
  %27 = call i32 @lstrcpyA(i32* %11, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pUrlApplySchemeA(i32* %32, i32* %11, i64* %6, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %39, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %48, i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64, i64 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @lstrcmpA(i32* %11, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, i64, ...) @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %80, i32* %11, i32 %85)
  %87 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %6, align 8
  %89 = load i32, i32* @untouchedA, align 4
  %90 = call i32 @lstrcpyA(i32* %11, i32 %89)
  %91 = load i32, i32* @CP_ACP, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @MultiByteToWideChar(i32 %91, i32 0, i32* %11, i32 -1, i32* %17, i64 %92)
  %94 = load i32, i32* @CP_ACP, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @MultiByteToWideChar(i32 %94, i32 0, i32* %99, i32 -1, i32* %14, i64 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pUrlApplySchemeW(i32* %14, i32* %17, i64* %6, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @CP_ACP, align 4
  %109 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %110 = call i32 @WideCharToMultiByte(i32 %108, i32 0, i32* %17, i32 -1, i32* %11, i32 %109, i32* null, i32* null)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %111, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i64, ...) @ok(i32 %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %119, i32 %120, i32 %125)
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %127, %132
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %135, i64 %136, i64 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @lstrcmpA(i32* %11, i32 %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i32, i8*, i64, ...) @ok(i32 %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %152, i32* %11, i32 %157)
  br label %159

159:                                              ; preds = %23
  %160 = load i64, i64* %7, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %7, align 8
  br label %18

162:                                              ; preds = %18
  %163 = load i32, i32* @untouchedA, align 4
  %164 = call i32 @lstrcpyA(i32* %11, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @lstrlenA(i32 %168)
  store i64 %169, i64* %6, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @pUrlApplySchemeA(i32* %173, i32* %11, i64* %6, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @E_POINTER, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 (i32, i8*, i64, ...) @ok(i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @lstrlenA(i32 %189)
  %191 = add i64 %190, 1
  store i64 %191, i64* %7, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i64, i64* %6, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i32 (i32, i8*, i64, ...) @ok(i32 %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %196, i64 %197)
  %199 = load i32, i32* @untouchedA, align 4
  %200 = call i32 @lstrcmpA(i32* %11, i32 %199)
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = ptrtoint i32* %11 to i64
  %205 = load i32, i32* @untouchedA, align 4
  %206 = call i32 (i32, i8*, i64, ...) @ok(i32 %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %204, i32 %205)
  %207 = load i32, i32* @untouchedA, align 4
  %208 = call i32 @lstrcpyA(i32* %11, i32 %207)
  %209 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %6, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @pUrlApplySchemeA(i32* null, i32* %11, i64* %6, i32 %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @E_INVALIDARG, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = call i32 (i32, i8*, i64, ...) @ok(i32 %219, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %221)
  %223 = load i64, i64* %6, align 8
  %224 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp eq i64 %223, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %6, align 8
  %229 = call i32 (i32, i8*, i64, ...) @ok(i32 %227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %228)
  %230 = load i32, i32* @untouchedA, align 4
  %231 = call i32 @lstrcmpA(i32* %11, i32 %230)
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = ptrtoint i32* %11 to i64
  %236 = load i32, i32* @untouchedA, align 4
  %237 = call i32 (i32, i8*, i64, ...) @ok(i32 %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %235, i32 %236)
  %238 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %6, align 8
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @pUrlApplySchemeA(i32* %243, i32* null, i64* %6, i32 %247)
  store i32 %248, i32* %5, align 4
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @E_INVALIDARG, align 4
  %251 = icmp eq i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = call i32 (i32, i8*, i64, ...) @ok(i32 %252, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %254)
  %256 = load i64, i64* %6, align 8
  %257 = load i32, i32* @TEST_APPLY_MAX_LENGTH, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp eq i64 %256, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %6, align 8
  %262 = call i32 (i32, i8*, i64, ...) @ok(i32 %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %261)
  %263 = load i32, i32* @untouchedA, align 4
  %264 = call i32 @lstrcpyA(i32* %11, i32 %263)
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_APPLY, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @pUrlApplySchemeA(i32* %268, i32* %11, i64* null, i32 %272)
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* @E_INVALIDARG, align 4
  %276 = icmp eq i32 %274, %275
  %277 = zext i1 %276 to i32
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = call i32 (i32, i8*, i64, ...) @ok(i32 %277, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %279)
  %281 = load i32, i32* @untouchedA, align 4
  %282 = call i32 @lstrcmpA(i32* %11, i32 %281)
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = ptrtoint i32* %11 to i64
  %287 = load i32, i32* @untouchedA, align 4
  %288 = call i32 (i32, i8*, i64, ...) @ok(i32 %285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %286, i32 %287)
  %289 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %289)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @lstrcpyA(i32*, i32) #2

declare dso_local i32 @pUrlApplySchemeA(i32*, i32*, i64*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @lstrcmpA(i32*, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i64) #2

declare dso_local i32 @pUrlApplySchemeW(i32*, i32*, i64*, i32) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i64 @lstrlenA(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
