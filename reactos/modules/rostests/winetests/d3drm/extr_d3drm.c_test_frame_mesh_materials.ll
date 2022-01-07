; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_frame_mesh_materials.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_frame_mesh_materials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IID_IDirect3DRMFrame = common dso_local global i32 0, align 4
@__const.test_frame_mesh_materials.req_refiids = private unnamed_addr constant [1 x i32*] [i32* @IID_IDirect3DRMFrame], align 8
@D3DRM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Direct3DRMCreate returned %x\0A\00", align 1
@data_frame_mesh_materials = common dso_local global i32 0, align 4
@D3DRMLOAD_FROMMEMORY = common dso_local global i32 0, align 4
@object_load_callback_frame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot load data (hr = %x)\0A\00", align 1
@mesh_builder = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"IDirect3DRMMeshBuilder_CreateMesh returned %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Wrong size %u returned, expected 3\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Group %d: IDirect3DRMMesh_GetGroup returned %x\0A\00", align 1
@groups = common dso_local global %struct.TYPE_5__* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Group %d: Wrong vertex count %d, expected %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Group %d: Wrong face count %d; expected %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Group %d: Wrong vertex per face %d, expected %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Group %d: Wrong face data size %d, expected %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Group %d: Wrong color %x, expected %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Group %d: IDirect3DRMMesh_GetGroupMaterial returned %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Group %d: No material\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Group %d: Wrong power %f, expected %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Group %d: IDirect3DRMMaterial_GetSpecular returned %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Group %d: Wrong specular red %f, expected %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Group %d: Wrong specular green %f, pD3DRMexpected %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Group %d: Wrong specular blue %f, expected %f\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Group %d: IDirect3DRMMaterial_GetEmissive returned %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Group %d: Wrong emissive red %f, expected %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Group %d: Wrong emissive green %f, expected %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Group %d: Wrong emissive blue %f, expected %f\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Group %d: IDirect3DRMMesh_GetGroupTexture returned %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Group %d: Unexpected texture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_frame_mesh_materials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_frame_mesh_materials() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca [1 x i32*], align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast [1 x i32*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast ([1 x i32*]* @__const.test_frame_mesh_materials.req_refiids to i8*), i64 8, i1 false)
  %20 = call i32 @Direct3DRMCreate(i32** %2)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @D3DRM_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @data_frame_mesh_materials, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @data_frame_mesh_materials, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds [1 x i32*], [1 x i32*]* %4, i64 0, i64 0
  %34 = load i32, i32* @D3DRMLOAD_FROMMEMORY, align 4
  %35 = load i32, i32* @object_load_callback_frame, align 4
  %36 = call i32 @IDirect3DRM_Load(i32* %32, %struct.TYPE_4__* %3, i32* null, i32** %33, i32 1, i32 %34, i32 %35, i8* inttoptr (i64 3735928559 to i8*), i32* null, i32* null, i32* null)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @D3DRM_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %1, align 4
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @mesh_builder, align 4
  %44 = call i32 @IDirect3DRMMeshBuilder_CreateMesh(i32 %43, i32** %5)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @D3DRM_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @IDirect3DRMMesh_GetGroupCount(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 3
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %379, %0
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %382

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @IDirect3DRMMesh_GetGroup(i32* %63, i32 %64, i32* %15, i32* %16, i32* %17, i32* %18, i32* null)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @D3DRM_OK, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %73, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %91, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %101, i32 %107)
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %109, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %118, i32 %119, i32 %125)
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %127, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %136, i32 %137, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @IDirect3DRMMesh_GetGroupColor(i32* %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %148, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, i32, ...) @ok(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %157, i32 %158, i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @IDirect3DRMMesh_GetGroupMaterial(i32* %166, i32 %167, i32** %7)
  store i32 %168, i32* %1, align 4
  %169 = load i32, i32* %1, align 4
  %170 = load i32, i32* @D3DRM_OK, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %1, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %172, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = icmp ne i32* %176, null
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @IDirect3DRMMaterial_GetPower(i32* %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %183, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i32, i8*, i32, ...) @ok(i32 %191, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %192, i32 %193, i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @IDirect3DRMMaterial_GetSpecular(i32* %201, i32* %10, i32* %11, i32* %12)
  store i32 %202, i32* %1, align 4
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* @D3DRM_OK, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %1, align 4
  %209 = call i32 (i32, i8*, i32, ...) @ok(i32 %206, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 %207, i32 %208)
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %210, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i8*, i32, ...) @ok(i32 %220, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %221, i32 %222, i32 %230)
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %232, %240
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i32, i8*, i32, ...) @ok(i32 %242, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %243, i32 %244, i32 %252)
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %254, %262
  %264 = zext i1 %263 to i32
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i32, i8*, i32, ...) @ok(i32 %264, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %265, i32 %266, i32 %274)
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @IDirect3DRMMaterial_GetEmissive(i32* %276, i32* %10, i32* %11, i32* %12)
  store i32 %277, i32* %1, align 4
  %278 = load i32, i32* %1, align 4
  %279 = load i32, i32* @D3DRM_OK, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* %1, align 4
  %284 = call i32 (i32, i8*, i32, ...) @ok(i32 %281, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 %282, i32 %283)
  %285 = load i32, i32* %10, align 4
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %285, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, i32, ...) @ok(i32 %295, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %296, i32 %297, i32 %305)
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %307, %315
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %11, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32, i8*, i32, ...) @ok(i32 %317, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32 %318, i32 %319, i32 %327)
  %329 = load i32, i32* %12, align 4
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 3
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %329, %337
  %339 = zext i1 %338 to i32
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** @groups, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 3
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32, i8*, i32, ...) @ok(i32 %339, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0), i32 %340, i32 %341, i32 %349)
  %351 = load i32*, i32** %5, align 8
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @IDirect3DRMMesh_GetGroupTexture(i32* %351, i32 %352, i32** %8)
  store i32 %353, i32* %1, align 4
  %354 = load i32, i32* %1, align 4
  %355 = load i32, i32* @D3DRM_OK, align 4
  %356 = icmp eq i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %1, align 4
  %360 = call i32 (i32, i8*, i32, ...) @ok(i32 %357, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 %358, i32 %359)
  %361 = load i32*, i32** %8, align 8
  %362 = icmp ne i32* %361, null
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* %9, align 4
  %366 = call i32 (i32, i8*, i32, ...) @ok(i32 %364, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i32 %365)
  %367 = load i32*, i32** %7, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %62
  %370 = load i32*, i32** %7, align 8
  %371 = call i32 @IDirect3DRMMaterial_Release(i32* %370)
  br label %372

372:                                              ; preds = %369, %62
  %373 = load i32*, i32** %8, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i32*, i32** %8, align 8
  %377 = call i32 @IDirect3DRMTexture_Release(i32* %376)
  br label %378

378:                                              ; preds = %375, %372
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %9, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %9, align 4
  br label %58

382:                                              ; preds = %58
  %383 = load i32*, i32** %5, align 8
  %384 = call i32 @IDirect3DRMMesh_Release(i32* %383)
  %385 = load i32, i32* @mesh_builder, align 4
  %386 = call i32 @IDirect3DRMMeshBuilder_Release(i32 %385)
  %387 = load i32*, i32** %2, align 8
  %388 = call i32 @IDirect3DRM_Release(i32* %387)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Direct3DRMCreate(i32**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @IDirect3DRM_Load(i32*, %struct.TYPE_4__*, i32*, i32**, i32, i32, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DRMMeshBuilder_CreateMesh(i32, i32**) #2

declare dso_local i32 @IDirect3DRMMesh_GetGroupCount(i32*) #2

declare dso_local i32 @IDirect3DRMMesh_GetGroup(i32*, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DRMMesh_GetGroupColor(i32*, i32) #2

declare dso_local i32 @IDirect3DRMMesh_GetGroupMaterial(i32*, i32, i32**) #2

declare dso_local i32 @IDirect3DRMMaterial_GetPower(i32*) #2

declare dso_local i32 @IDirect3DRMMaterial_GetSpecular(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DRMMaterial_GetEmissive(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DRMMesh_GetGroupTexture(i32*, i32, i32**) #2

declare dso_local i32 @IDirect3DRMMaterial_Release(i32*) #2

declare dso_local i32 @IDirect3DRMTexture_Release(i32*) #2

declare dso_local i32 @IDirect3DRMMesh_Release(i32*) #2

declare dso_local i32 @IDirect3DRMMeshBuilder_Release(i32) #2

declare dso_local i32 @IDirect3DRM_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
