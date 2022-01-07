; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_MeshBuilder3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_MeshBuilder3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@D3DRM_OK = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot get IDirect3DRM interface (hr = %x)\0A\00", align 1
@IID_IDirect3DRM3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Cannot get IDirect3DRM3 interface (hr = %x), skipping tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Cannot get IDirect3DRMMeshBuilder3 interface (hr = %x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Builder\00", align 1
@data_bad_version = common dso_local global i8* null, align 8
@D3DRMLOAD_FROMMEMORY = common dso_local global i32 0, align 4
@D3DRMERR_BADFILE = common dso_local global float 0.000000e+00, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Should have returned D3DRMERR_BADFILE (hr = %x)\0A\00", align 1
@data_no_mesh = common dso_local global i8* null, align 8
@D3DRMERR_NOTFOUND = common dso_local global float 0.000000e+00, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Should have returned D3DRMERR_NOTFOUND (hr = %x)\0A\00", align 1
@data_ok = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Cannot load mesh data (hr = %x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Wrong number of vertices %d (must be 4)\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Wrong number of faces %d (must be 3)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Cannot get vertices information (hr = %x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Cannot get texture coordinates (hr = %x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Wrong coordinate %f (must be 0.0)\0A\00", align 1
@D3DRMERR_BADVALUE = common dso_local global float 0.000000e+00, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"Should fail and return D3DRM_BADVALUE (hr = %x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Cannot set texture coordinates (hr = %x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Wrong coordinate %f (must be 1.23)\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Wrong coordinate %f (must be 3.21)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MeshBuilder3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MeshBuilder3() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = call float @Direct3DRMCreate(i32** %2)
  store float %10, float* %1, align 4
  %11 = load float, float* %1, align 4
  %12 = load float, float* @D3DRM_OK, align 4
  %13 = fcmp oeq float %11, %12
  %14 = zext i1 %13 to i32
  %15 = load float, float* %1, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), float %15)
  %17 = load i32*, i32** %2, align 8
  %18 = bitcast i32** %3 to i8**
  %19 = call float @IDirect3DRM_QueryInterface(i32* %17, i32* @IID_IDirect3DRM3, i8** %18)
  store float %19, float* %1, align 4
  %20 = call i64 @FAILED(float %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %0
  %23 = load float, float* %1, align 4
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), float %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @IDirect3DRM_Release(i32* %25)
  br label %236

27:                                               ; preds = %0
  %28 = load i32*, i32** %3, align 8
  %29 = call float @IDirect3DRM3_CreateMeshBuilder(i32* %28, i32** %4)
  store float %29, float* %1, align 4
  %30 = load float, float* %1, align 4
  %31 = load float, float* @D3DRM_OK, align 4
  %32 = fcmp oeq float %30, %31
  %33 = zext i1 %32 to i32
  %34 = load float, float* %1, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), float %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @test_class_name(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @test_object_name(i32* %38)
  %40 = load i8*, i8** @data_bad_version, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** @data_bad_version, align 8
  %43 = call i8* @strlen(i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @D3DRMLOAD_FROMMEMORY, align 4
  %47 = call float @IDirect3DRMMeshBuilder3_Load(i32* %45, %struct.TYPE_3__* %5, i32* null, i32 %46, i32* null, i32* null)
  store float %47, float* %1, align 4
  %48 = load float, float* %1, align 4
  %49 = load float, float* @D3DRMERR_BADFILE, align 4
  %50 = fcmp oeq float %48, %49
  %51 = zext i1 %50 to i32
  %52 = load float, float* %1, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), float %52)
  %54 = load i8*, i8** @data_no_mesh, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @data_no_mesh, align 8
  %57 = call i8* @strlen(i8* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @D3DRMLOAD_FROMMEMORY, align 4
  %61 = call float @IDirect3DRMMeshBuilder3_Load(i32* %59, %struct.TYPE_3__* %5, i32* null, i32 %60, i32* null, i32* null)
  store float %61, float* %1, align 4
  %62 = load float, float* %1, align 4
  %63 = load float, float* @D3DRMERR_NOTFOUND, align 4
  %64 = fcmp oeq float %62, %63
  %65 = zext i1 %64 to i32
  %66 = load float, float* %1, align 4
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), float %66)
  %68 = load i8*, i8** @data_ok, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** @data_ok, align 8
  %71 = call i8* @strlen(i8* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @D3DRMLOAD_FROMMEMORY, align 4
  %75 = call float @IDirect3DRMMeshBuilder3_Load(i32* %73, %struct.TYPE_3__* %5, i32* null, i32 %74, i32* null, i32* null)
  store float %75, float* %1, align 4
  %76 = load float, float* %1, align 4
  %77 = load float, float* @D3DRM_OK, align 4
  %78 = fcmp oeq float %76, %77
  %79 = zext i1 %78 to i32
  %80 = load float, float* %1, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), float %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @IDirect3DRMMeshBuilder3_GetVertexCount(i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 4
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = sitofp i32 %87 to float
  %89 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), float %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @IDirect3DRMMeshBuilder3_GetFaceCount(i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 3
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = sitofp i32 %95 to float
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), float %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call float @IDirect3DRMMeshBuilder3_GetVertices(i32* %98, i32 0, i32* %7, i32* null)
  store float %99, float* %1, align 4
  %100 = load float, float* %1, align 4
  %101 = load float, float* @D3DRM_OK, align 4
  %102 = fcmp oeq float %100, %101
  %103 = zext i1 %102 to i32
  %104 = load float, float* %1, align 4
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), float %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 4
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %7, align 4
  %110 = sitofp i32 %109 to float
  %111 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), float %110)
  store float 0x3FF3AE1480000000, float* %8, align 4
  store float 0x4009AE1480000000, float* %9, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %112, i32 0, float* %8, float* %9)
  store float %113, float* %1, align 4
  %114 = load float, float* %1, align 4
  %115 = load float, float* @D3DRM_OK, align 4
  %116 = fcmp oeq float %114, %115
  %117 = zext i1 %116 to i32
  %118 = load float, float* %1, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), float %118)
  %120 = load float, float* %8, align 4
  %121 = fcmp oeq float %120, 0.000000e+00
  %122 = zext i1 %121 to i32
  %123 = load float, float* %8, align 4
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %123)
  %125 = load float, float* %9, align 4
  %126 = fcmp oeq float %125, 0.000000e+00
  %127 = zext i1 %126 to i32
  %128 = load float, float* %9, align 4
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %128)
  store float 0x3FF3AE1480000000, float* %8, align 4
  store float 0x4009AE1480000000, float* %9, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %130, i32 1, float* %8, float* %9)
  store float %131, float* %1, align 4
  %132 = load float, float* %1, align 4
  %133 = load float, float* @D3DRM_OK, align 4
  %134 = fcmp oeq float %132, %133
  %135 = zext i1 %134 to i32
  %136 = load float, float* %1, align 4
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), float %136)
  %138 = load float, float* %8, align 4
  %139 = fcmp oeq float %138, 0.000000e+00
  %140 = zext i1 %139 to i32
  %141 = load float, float* %8, align 4
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %141)
  %143 = load float, float* %9, align 4
  %144 = fcmp oeq float %143, 0.000000e+00
  %145 = zext i1 %144 to i32
  %146 = load float, float* %9, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %146)
  store float 0x3FF3AE1480000000, float* %8, align 4
  store float 0x4009AE1480000000, float* %9, align 4
  %148 = load i32*, i32** %4, align 8
  %149 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %148, i32 2, float* %8, float* %9)
  store float %149, float* %1, align 4
  %150 = load float, float* %1, align 4
  %151 = load float, float* @D3DRM_OK, align 4
  %152 = fcmp oeq float %150, %151
  %153 = zext i1 %152 to i32
  %154 = load float, float* %1, align 4
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), float %154)
  %156 = load float, float* %8, align 4
  %157 = fcmp oeq float %156, 0.000000e+00
  %158 = zext i1 %157 to i32
  %159 = load float, float* %8, align 4
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %159)
  %161 = load float, float* %9, align 4
  %162 = fcmp oeq float %161, 0.000000e+00
  %163 = zext i1 %162 to i32
  %164 = load float, float* %9, align 4
  %165 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %164)
  store float 0x3FF3AE1480000000, float* %8, align 4
  store float 0x4009AE1480000000, float* %9, align 4
  %166 = load i32*, i32** %4, align 8
  %167 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %166, i32 3, float* %8, float* %9)
  store float %167, float* %1, align 4
  %168 = load float, float* %1, align 4
  %169 = load float, float* @D3DRM_OK, align 4
  %170 = fcmp oeq float %168, %169
  %171 = zext i1 %170 to i32
  %172 = load float, float* %1, align 4
  %173 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), float %172)
  %174 = load float, float* %8, align 4
  %175 = fcmp oeq float %174, 0.000000e+00
  %176 = zext i1 %175 to i32
  %177 = load float, float* %8, align 4
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %177)
  %179 = load float, float* %9, align 4
  %180 = fcmp oeq float %179, 0.000000e+00
  %181 = zext i1 %180 to i32
  %182 = load float, float* %9, align 4
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), float %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %184, i32 4, float* %8, float* %9)
  store float %185, float* %1, align 4
  %186 = load float, float* %1, align 4
  %187 = load float, float* @D3DRMERR_BADVALUE, align 4
  %188 = fcmp oeq float %186, %187
  %189 = zext i1 %188 to i32
  %190 = load float, float* %1, align 4
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), float %190)
  store float 0x3FF3AE1480000000, float* %8, align 4
  store float 0x4009AE1480000000, float* %9, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = load float, float* %8, align 4
  %194 = load float, float* %9, align 4
  %195 = call float @IDirect3DRMMeshBuilder3_SetTextureCoordinates(i32* %192, i32 0, float %193, float %194)
  store float %195, float* %1, align 4
  %196 = load float, float* %1, align 4
  %197 = load float, float* @D3DRM_OK, align 4
  %198 = fcmp oeq float %196, %197
  %199 = zext i1 %198 to i32
  %200 = load float, float* %1, align 4
  %201 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), float %200)
  %202 = load i32*, i32** %4, align 8
  %203 = load float, float* %8, align 4
  %204 = load float, float* %9, align 4
  %205 = call float @IDirect3DRMMeshBuilder3_SetTextureCoordinates(i32* %202, i32 4, float %203, float %204)
  store float %205, float* %1, align 4
  %206 = load float, float* %1, align 4
  %207 = load float, float* @D3DRMERR_BADVALUE, align 4
  %208 = fcmp oeq float %206, %207
  %209 = zext i1 %208 to i32
  %210 = load float, float* %1, align 4
  %211 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), float %210)
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = call float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32* %212, i32 0, float* %8, float* %9)
  store float %213, float* %1, align 4
  %214 = load float, float* %1, align 4
  %215 = load float, float* @D3DRM_OK, align 4
  %216 = fcmp oeq float %214, %215
  %217 = zext i1 %216 to i32
  %218 = load float, float* %1, align 4
  %219 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), float %218)
  %220 = load float, float* %8, align 4
  %221 = fcmp oeq float %220, 0x3FF3AE1480000000
  %222 = zext i1 %221 to i32
  %223 = load float, float* %8, align 4
  %224 = call i32 @ok(i32 %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), float %223)
  %225 = load float, float* %9, align 4
  %226 = fcmp oeq float %225, 0x4009AE1480000000
  %227 = zext i1 %226 to i32
  %228 = load float, float* %9, align 4
  %229 = call i32 @ok(i32 %227, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), float %228)
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @IDirect3DRMMeshBuilder3_Release(i32* %230)
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @IDirect3DRM3_Release(i32* %232)
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @IDirect3DRM_Release(i32* %234)
  br label %236

236:                                              ; preds = %27, %22
  ret void
}

declare dso_local float @Direct3DRMCreate(i32**) #1

declare dso_local i32 @ok(i32, i8*, float) #1

declare dso_local i64 @FAILED(float) #1

declare dso_local float @IDirect3DRM_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*, float) #1

declare dso_local i32 @IDirect3DRM_Release(i32*) #1

declare dso_local float @IDirect3DRM3_CreateMeshBuilder(i32*, i32**) #1

declare dso_local i32 @test_class_name(i32*, i8*) #1

declare dso_local i32 @test_object_name(i32*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local float @IDirect3DRMMeshBuilder3_Load(i32*, %struct.TYPE_3__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @IDirect3DRMMeshBuilder3_GetVertexCount(i32*) #1

declare dso_local i32 @IDirect3DRMMeshBuilder3_GetFaceCount(i32*) #1

declare dso_local float @IDirect3DRMMeshBuilder3_GetVertices(i32*, i32, i32*, i32*) #1

declare dso_local float @IDirect3DRMMeshBuilder3_GetTextureCoordinates(i32*, i32, float*, float*) #1

declare dso_local float @IDirect3DRMMeshBuilder3_SetTextureCoordinates(i32*, i32, float, float) #1

declare dso_local i32 @IDirect3DRMMeshBuilder3_Release(i32*) #1

declare dso_local i32 @IDirect3DRM3_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
