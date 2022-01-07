; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiPolyPolyDraw.c_Test_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiPolyPolyDraw.c_Test_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Test_Params.Count1 = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 4, i32 3], align 16
@__const.Test_Params.Count2 = private unnamed_addr constant [2 x i32] [i32 0, i32 3], align 4
@__const.Test_Params.Count4 = private unnamed_addr constant [2 x i32] [i32 1, i32 3], align 4
@__const.Test_Params.Count5 = private unnamed_addr constant [2 x i32] [i32 -2147483647, i32 -2147483647], align 4
@__const.Test_Params.Points = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 3, i32 -2, i32 4, i32 2], align 16
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@GDI_HANDLE_BASETYPE_MASK = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_REGION = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_Params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_Params() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.Test_Params.Count1 to i8*), i64 16, i1 false)
  %10 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.Test_Params.Count2 to i8*), i64 8, i1 false)
  %11 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([2 x i32]* @__const.Test_Params.Count4 to i8*), i64 8, i1 false)
  %13 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.Test_Params.Count5 to i8*), i64 8, i1 false)
  %14 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([6 x i32]* @__const.Test_Params.Points to i8*), i64 24, i1 false)
  %15 = call i32 @SetLastError(i32 0)
  %16 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST(i32 %19)
  %21 = call i32 (...) @GetLastError()
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST(i32 %23)
  %25 = call i32 @SetLastError(i32 0)
  %26 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 1)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST(i32 %29)
  %31 = call i32 (...) @GetLastError()
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST(i32 %33)
  %35 = call i32 @SetLastError(i32 0)
  %36 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 2)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST(i32 %39)
  %41 = call i32 (...) @GetLastError()
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST(i32 %43)
  %45 = call i32 @SetLastError(i32 0)
  %46 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 3)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST(i32 %49)
  %51 = call i32 (...) @GetLastError()
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST(i32 %53)
  %55 = call i32 @SetLastError(i32 0)
  %56 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 4)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST(i32 %59)
  %61 = call i32 (...) @GetLastError()
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST(i32 %63)
  %65 = call i32 @SetLastError(i32 0)
  %66 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 5)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST(i32 %69)
  %71 = call i32 (...) @GetLastError()
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @TEST(i32 %73)
  %75 = call i32 @SetLastError(i32 0)
  %76 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* null, i32* null, i32 0, i32 6)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST(i32 %79)
  %81 = call i32 (...) @GetLastError()
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @TEST(i32 %83)
  %85 = call i32 @SetLastError(i32 0)
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %88 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* %86, i32* %87, i32 2, i32 1)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @TEST(i32 %91)
  %93 = call i32 (...) @GetLastError()
  %94 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST(i32 %96)
  store i32* inttoptr (i64 74565 to i32*), i32** %8, align 8
  %98 = call i32 @SetLastError(i32 0)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %102 = call i32 @NtGdiPolyPolyDraw(i32* %99, i32* %100, i32* %101, i32 2, i32 0)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST(i32 %105)
  %107 = call i32 (...) @GetLastError()
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST(i32 %109)
  %111 = call i32 @SetLastError(i32 0)
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %115 = call i32 @NtGdiPolyPolyDraw(i32* %112, i32* %113, i32* %114, i32 2, i32 1)
  store i32 %115, i32* %1, align 4
  %116 = load i32, i32* %1, align 4
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @TEST(i32 %118)
  %120 = call i32 (...) @GetLastError()
  %121 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @TEST(i32 %123)
  %125 = call i32 @SetLastError(i32 0)
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %129 = call i32 @NtGdiPolyPolyDraw(i32* %126, i32* %127, i32* %128, i32 2, i32 2)
  store i32 %129, i32* %1, align 4
  %130 = load i32, i32* %1, align 4
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @TEST(i32 %132)
  %134 = call i32 (...) @GetLastError()
  %135 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @TEST(i32 %137)
  %139 = call i32 @SetLastError(i32 0)
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %143 = call i32 @NtGdiPolyPolyDraw(i32* %140, i32* %141, i32* %142, i32 2, i32 3)
  store i32 %143, i32* %1, align 4
  %144 = load i32, i32* %1, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @TEST(i32 %146)
  %148 = call i32 (...) @GetLastError()
  %149 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @TEST(i32 %151)
  %153 = call i32 @SetLastError(i32 0)
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %157 = call i32 @NtGdiPolyPolyDraw(i32* %154, i32* %155, i32* %156, i32 2, i32 4)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @TEST(i32 %160)
  %162 = call i32 (...) @GetLastError()
  %163 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @TEST(i32 %165)
  %167 = call i32 @SetLastError(i32 0)
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %171 = call i32 @NtGdiPolyPolyDraw(i32* %168, i32* %169, i32* %170, i32 2, i32 5)
  store i32 %171, i32* %1, align 4
  %172 = load i32, i32* %1, align 4
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @TEST(i32 %174)
  %176 = call i32 (...) @GetLastError()
  %177 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @TEST(i32 %179)
  %181 = call i32 @SetLastError(i32 0)
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %185 = call i32 @NtGdiPolyPolyDraw(i32* %182, i32* %183, i32* %184, i32 2, i32 6)
  store i32 %185, i32* %1, align 4
  %186 = load i32, i32* %1, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @TEST(i32 %188)
  %190 = call i32 (...) @GetLastError()
  %191 = icmp eq i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @TEST(i32 %192)
  %194 = call i32 @SetLastError(i32 0)
  %195 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %197 = call i32 @NtGdiPolyPolyDraw(i32* inttoptr (i64 1 to i32*), i32* %195, i32* %196, i32 1, i32 6)
  store i32 %197, i32* %1, align 4
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* @GDI_HANDLE_BASETYPE_MASK, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* @GDI_OBJECT_TYPE_REGION, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @TEST(i32 %203)
  %205 = call i32 (...) @GetLastError()
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @TEST(i32 %207)
  %209 = call i32 @SetLastError(i32 0)
  %210 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %212 = call i32 @NtGdiPolyPolyDraw(i32* null, i32* %210, i32* %211, i32 1, i32 6)
  store i32 %212, i32* %1, align 4
  %213 = load i32, i32* %1, align 4
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @TEST(i32 %215)
  %217 = call i32 (...) @GetLastError()
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @TEST(i32 %219)
  %221 = call i32 @SetLastError(i32 0)
  %222 = load i32*, i32** %8, align 8
  %223 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %225 = call i32 @NtGdiPolyPolyDraw(i32* %222, i32* %223, i32* %224, i32 0, i32 1)
  store i32 %225, i32* %1, align 4
  %226 = load i32, i32* %1, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @TEST(i32 %228)
  %230 = call i32 (...) @GetLastError()
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @TEST(i32 %232)
  %234 = call i32 @SetLastError(i32 0)
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %238 = call i32 @NtGdiPolyPolyDraw(i32* %235, i32* %236, i32* %237, i32 2, i32 1)
  store i32 %238, i32* %1, align 4
  %239 = load i32, i32* %1, align 4
  %240 = icmp eq i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = call i32 @TEST(i32 %241)
  %243 = call i32 (...) @GetLastError()
  %244 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @TEST(i32 %246)
  %248 = call i32 @SetLastError(i32 0)
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %251 = call i32 @NtGdiPolyPolyDraw(i32* %249, i32* %250, i32* null, i32 2, i32 1)
  store i32 %251, i32* %1, align 4
  %252 = load i32, i32* %1, align 4
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @TEST(i32 %254)
  %256 = call i32 (...) @GetLastError()
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @TEST(i32 %258)
  %260 = call i32 @SetLastError(i32 0)
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %263 = call i32 @NtGdiPolyPolyDraw(i32* %261, i32* %262, i32* inttoptr (i64 2164260864 to i32*), i32 2, i32 1)
  store i32 %263, i32* %1, align 4
  %264 = load i32, i32* %1, align 4
  %265 = icmp eq i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i32 @TEST(i32 %266)
  %268 = call i32 (...) @GetLastError()
  %269 = icmp eq i32 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @TEST(i32 %270)
  %272 = call i32 @SetLastError(i32 0)
  %273 = load i32*, i32** %8, align 8
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %275 = call i32 @NtGdiPolyPolyDraw(i32* %273, i32* null, i32* %274, i32 2, i32 1)
  store i32 %275, i32* %1, align 4
  %276 = load i32, i32* %1, align 4
  %277 = icmp eq i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @TEST(i32 %278)
  %280 = call i32 (...) @GetLastError()
  %281 = icmp eq i32 %280, 0
  %282 = zext i1 %281 to i32
  %283 = call i32 @TEST(i32 %282)
  %284 = call i32 @SetLastError(i32 0)
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %287 = call i32 @NtGdiPolyPolyDraw(i32* %285, i32* inttoptr (i64 2164260864 to i32*), i32* %286, i32 2, i32 1)
  store i32 %287, i32* %1, align 4
  %288 = load i32, i32* %1, align 4
  %289 = icmp eq i32 %288, 0
  %290 = zext i1 %289 to i32
  %291 = call i32 @TEST(i32 %290)
  %292 = call i32 (...) @GetLastError()
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @TEST(i32 %294)
  %296 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %296, i32** %8, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 @ASSERT(i32* %297)
  %299 = call i32 @SetLastError(i32 0)
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %303 = call i32 @NtGdiPolyPolyDraw(i32* %300, i32* %301, i32* %302, i32 2, i32 0)
  store i32 %303, i32* %1, align 4
  %304 = load i32, i32* %1, align 4
  %305 = icmp eq i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = call i32 @TEST(i32 %306)
  %308 = call i32 (...) @GetLastError()
  %309 = icmp eq i32 %308, 0
  %310 = zext i1 %309 to i32
  %311 = call i32 @TEST(i32 %310)
  %312 = call i32 @SetLastError(i32 0)
  %313 = load i32*, i32** %8, align 8
  %314 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %316 = call i32 @NtGdiPolyPolyDraw(i32* %313, i32* %314, i32* %315, i32 2, i32 1)
  store i32 %316, i32* %1, align 4
  %317 = load i32, i32* %1, align 4
  %318 = icmp eq i32 %317, 1
  %319 = zext i1 %318 to i32
  %320 = call i32 @TEST(i32 %319)
  %321 = call i32 (...) @GetLastError()
  %322 = icmp eq i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = call i32 @TEST(i32 %323)
  %325 = call i32 @SetLastError(i32 0)
  %326 = load i32*, i32** %8, align 8
  %327 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %329 = call i32 @NtGdiPolyPolyDraw(i32* %326, i32* %327, i32* %328, i32 2, i32 2)
  store i32 %329, i32* %1, align 4
  %330 = load i32, i32* %1, align 4
  %331 = icmp eq i32 %330, 1
  %332 = zext i1 %331 to i32
  %333 = call i32 @TEST(i32 %332)
  %334 = call i32 (...) @GetLastError()
  %335 = icmp eq i32 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @TEST(i32 %336)
  %338 = call i32 @SetLastError(i32 0)
  %339 = load i32*, i32** %8, align 8
  %340 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %342 = call i32 @NtGdiPolyPolyDraw(i32* %339, i32* %340, i32* %341, i32 2, i32 1)
  store i32 %342, i32* %1, align 4
  %343 = load i32, i32* %1, align 4
  %344 = icmp eq i32 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @TEST(i32 %345)
  %347 = call i32 (...) @GetLastError()
  %348 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %349 = icmp eq i32 %347, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @TEST(i32 %350)
  %352 = call i32 @SetLastError(i32 0)
  %353 = load i32*, i32** %8, align 8
  %354 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %356 = call i32 @NtGdiPolyPolyDraw(i32* %353, i32* %354, i32* %355, i32 2, i32 1)
  store i32 %356, i32* %1, align 4
  %357 = load i32, i32* %1, align 4
  %358 = icmp eq i32 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @TEST(i32 %359)
  %361 = call i32 (...) @GetLastError()
  %362 = icmp eq i32 %361, 0
  %363 = zext i1 %362 to i32
  %364 = call i32 @TEST(i32 %363)
  %365 = call i32 @SetLastError(i32 0)
  %366 = load i32*, i32** %8, align 8
  %367 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %369 = call i32 @NtGdiPolyPolyDraw(i32* %366, i32* %367, i32* %368, i32 2, i32 1)
  store i32 %369, i32* %1, align 4
  %370 = load i32, i32* %1, align 4
  %371 = icmp eq i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = call i32 @TEST(i32 %372)
  %374 = call i32 (...) @GetLastError()
  %375 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %376 = icmp eq i32 %374, %375
  %377 = zext i1 %376 to i32
  %378 = call i32 @TEST(i32 %377)
  %379 = call i32 @SetLastError(i32 0)
  %380 = load i32*, i32** %8, align 8
  %381 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %383 = call i32 @NtGdiPolyPolyDraw(i32* %380, i32* %381, i32* %382, i32 2, i32 1)
  store i32 %383, i32* %1, align 4
  %384 = load i32, i32* %1, align 4
  %385 = icmp eq i32 %384, 0
  %386 = zext i1 %385 to i32
  %387 = call i32 @TEST(i32 %386)
  %388 = call i32 (...) @GetLastError()
  %389 = icmp eq i32 %388, 87
  %390 = zext i1 %389 to i32
  %391 = call i32 @TEST(i32 %390)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @NtGdiPolyPolyDraw(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @TEST(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @CreateCompatibleDC(i32*) #2

declare dso_local i32 @ASSERT(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
