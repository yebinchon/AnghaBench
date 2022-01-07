; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9ImportSubpicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9ImportSubpicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_32__, %struct.TYPE_34__, %struct.TYPE_26__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i64, i64, i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_37__ = type { float, float, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { float, float, i32, %struct.TYPE_33__, %struct.TYPE_30__*, %struct.TYPE_25__* }
%struct.TYPE_33__ = type { i64, i64, float, float, float, float }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_27__ = type { float, float, float, float }

@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to create %dx%d texture for OSD (hr=0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Created %dx%d texture for OSD\00", align 1
@D3DFMT_A8B8G8R8 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to unlock the texture\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to lock the texture\00", align 1
@ORIENT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_35__*, i64*, %struct.TYPE_26__**, %struct.TYPE_37__*)* @Direct3D9ImportSubpicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Direct3D9ImportSubpicture(%struct.TYPE_35__* %0, i64* %1, %struct.TYPE_26__** %2, %struct.TYPE_37__* %3) #0 {
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_26__**, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_28__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca %struct.TYPE_27__, align 4
  %31 = alloca %struct.TYPE_27__, align 4
  %32 = alloca %struct.TYPE_27__, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_26__** %2, %struct.TYPE_26__*** %7, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %8, align 8
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  store %struct.TYPE_36__* %35, %struct.TYPE_36__** %9, align 8
  store i64 0, i64* %10, align 8
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %11, align 8
  br label %39

39:                                               ; preds = %45, %4
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %41 = icmp ne %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %11, align 8
  br label %39

49:                                               ; preds = %39
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call %struct.TYPE_26__* @calloc(i64 %52, i32 40)
  %54 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %7, align 8
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %54, align 8
  %55 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %7, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  %57 = icmp eq %struct.TYPE_26__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64*, i64** %6, align 8
  store i64 0, i64* %59, align 8
  br label %564

60:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  store %struct.TYPE_25__* %63, %struct.TYPE_25__** %13, align 8
  br label %64

64:                                               ; preds = %558, %60
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %66 = icmp ne %struct.TYPE_25__* %65, null
  br i1 %66, label %67, label %564

67:                                               ; preds = %64
  %68 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %7, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i64 %71
  store %struct.TYPE_26__* %72, %struct.TYPE_26__** %14, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  store i64 0, i64* %16, align 8
  br label %75

75:                                               ; preds = %125, %67
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %128

81:                                               ; preds = %75
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i64 %85
  store %struct.TYPE_26__* %86, %struct.TYPE_26__** %17, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %124

91:                                               ; preds = %81
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %91
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %102, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %99
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %120 = bitcast %struct.TYPE_26__* %118 to i8*
  %121 = bitcast %struct.TYPE_26__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 40, i1 false)
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %123 = call i32 @memset(%struct.TYPE_26__* %122, i32 0, i32 40)
  br label %128

124:                                              ; preds = %108, %99, %91, %81
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %16, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %16, align 8
  br label %75

128:                                              ; preds = %117, %75
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %197, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 4
  %168 = call i32 @IDirect3DDevice9_CreateTexture(i32 %154, i64 %157, i64 %160, i32 1, i32 %161, i64 %164, i32 %165, i32** %167, i32* null)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i64 @FAILED(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %133
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 4
  store i32* null, i32** %174, align 8
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (%struct.TYPE_35__*, i8*, ...) @msg_Err(%struct.TYPE_35__* %175, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %178, i64 %181, i32 %182)
  br label %558

184:                                              ; preds = %133
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to float
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 @msg_Dbg(%struct.TYPE_35__* %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), float %190, i32 %195)
  br label %197

197:                                              ; preds = %184, %128
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @IDirect3DTexture9_LockRect(i32* %200, i32 0, %struct.TYPE_28__* %18, i32* null, i32 0)
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i64 @SUCCEEDED(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %409

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %20, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %21, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %22, align 4
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @D3DFMT_A8B8G8R8, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %289

229:                                              ; preds = %205
  %230 = load i32, i32* %20, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %230, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %229
  %240 = load i32*, i32** %19, align 8
  %241 = load i32*, i32** %21, align 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %20, align 4
  %247 = sext i32 %246 to i64
  %248 = mul nsw i64 %245, %247
  %249 = trunc i64 %248 to i32
  %250 = call i32 @memcpy(i32* %240, i32* %241, i32 %249)
  br label %288

251:                                              ; preds = %229
  %252 = load i32, i32* %20, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @__MIN(i32 %252, i32 %259)
  store i32 %260, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %261

261:                                              ; preds = %284, %251
  %262 = load i32, i32* %24, align 4
  %263 = zext i32 %262 to i64
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp slt i64 %263, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %261
  %270 = load i32*, i32** %19, align 8
  %271 = load i32, i32* %24, align 4
  %272 = load i32, i32* %20, align 4
  %273 = mul i32 %271, %272
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  %276 = load i32*, i32** %21, align 8
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* %22, align 4
  %279 = mul i32 %277, %278
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %23, align 4
  %283 = call i32 @memcpy(i32* %275, i32* %281, i32 %282)
  br label %284

284:                                              ; preds = %269
  %285 = load i32, i32* %24, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %24, align 4
  br label %261

287:                                              ; preds = %261
  br label %288

288:                                              ; preds = %287, %239
  br label %397

289:                                              ; preds = %205
  %290 = load i32, i32* %20, align 4
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @__MIN(i32 %290, i32 %297)
  store i32 %298, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %299

299:                                              ; preds = %393, %289
  %300 = load i32, i32* %26, align 4
  %301 = zext i32 %300 to i64
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %301, %305
  br i1 %306, label %307, label %396

307:                                              ; preds = %299
  store i32 0, i32* %27, align 4
  br label %308

308:                                              ; preds = %389, %307
  %309 = load i32, i32* %27, align 4
  %310 = load i32, i32* %25, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %392

312:                                              ; preds = %308
  %313 = load i32*, i32** %21, align 8
  %314 = load i32, i32* %26, align 4
  %315 = load i32, i32* %22, align 4
  %316 = mul i32 %314, %315
  %317 = load i32, i32* %27, align 4
  %318 = add i32 %316, %317
  %319 = add i32 %318, 2
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %313, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %19, align 8
  %324 = load i32, i32* %26, align 4
  %325 = load i32, i32* %20, align 4
  %326 = mul i32 %324, %325
  %327 = load i32, i32* %27, align 4
  %328 = add i32 %326, %327
  %329 = add i32 %328, 0
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %323, i64 %330
  store i32 %322, i32* %331, align 4
  %332 = load i32*, i32** %21, align 8
  %333 = load i32, i32* %26, align 4
  %334 = load i32, i32* %22, align 4
  %335 = mul i32 %333, %334
  %336 = load i32, i32* %27, align 4
  %337 = add i32 %335, %336
  %338 = add i32 %337, 1
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %332, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %19, align 8
  %343 = load i32, i32* %26, align 4
  %344 = load i32, i32* %20, align 4
  %345 = mul i32 %343, %344
  %346 = load i32, i32* %27, align 4
  %347 = add i32 %345, %346
  %348 = add i32 %347, 1
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %342, i64 %349
  store i32 %341, i32* %350, align 4
  %351 = load i32*, i32** %21, align 8
  %352 = load i32, i32* %26, align 4
  %353 = load i32, i32* %22, align 4
  %354 = mul i32 %352, %353
  %355 = load i32, i32* %27, align 4
  %356 = add i32 %354, %355
  %357 = add i32 %356, 0
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %351, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %19, align 8
  %362 = load i32, i32* %26, align 4
  %363 = load i32, i32* %20, align 4
  %364 = mul i32 %362, %363
  %365 = load i32, i32* %27, align 4
  %366 = add i32 %364, %365
  %367 = add i32 %366, 2
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %361, i64 %368
  store i32 %360, i32* %369, align 4
  %370 = load i32*, i32** %21, align 8
  %371 = load i32, i32* %26, align 4
  %372 = load i32, i32* %22, align 4
  %373 = mul i32 %371, %372
  %374 = load i32, i32* %27, align 4
  %375 = add i32 %373, %374
  %376 = add i32 %375, 3
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %370, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %19, align 8
  %381 = load i32, i32* %26, align 4
  %382 = load i32, i32* %20, align 4
  %383 = mul i32 %381, %382
  %384 = load i32, i32* %27, align 4
  %385 = add i32 %383, %384
  %386 = add i32 %385, 3
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %380, i64 %387
  store i32 %379, i32* %388, align 4
  br label %389

389:                                              ; preds = %312
  %390 = load i32, i32* %27, align 4
  %391 = add nsw i32 %390, 4
  store i32 %391, i32* %27, align 4
  br label %308

392:                                              ; preds = %308
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %26, align 4
  %395 = add i32 %394, 1
  store i32 %395, i32* %26, align 4
  br label %299

396:                                              ; preds = %299
  br label %397

397:                                              ; preds = %396, %288
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 4
  %400 = load i32*, i32** %399, align 8
  %401 = call i32 @IDirect3DTexture9_UnlockRect(i32* %400, i32 0)
  store i32 %401, i32* %15, align 4
  %402 = load i32, i32* %15, align 4
  %403 = call i64 @FAILED(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %397
  %406 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %407 = call i32 (%struct.TYPE_35__*, i8*, ...) @msg_Err(%struct.TYPE_35__* %406, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %408

408:                                              ; preds = %405, %397
  br label %412

409:                                              ; preds = %197
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %411 = call i32 (%struct.TYPE_35__*, i8*, ...) @msg_Err(%struct.TYPE_35__* %410, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %408
  %413 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %415, i32 0, i32 3
  %417 = load i64, i64* %416, align 8
  %418 = sitofp i64 %417 to float
  %419 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %419, i32 0, i32 0
  %421 = load float, float* %420, align 8
  %422 = fdiv float %418, %421
  store float %422, float* %28, align 4
  %423 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = sitofp i64 %427 to float
  %429 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %429, i32 0, i32 1
  %431 = load float, float* %430, align 4
  %432 = fdiv float %428, %431
  store float %432, float* %29, align 4
  %433 = load float, float* %28, align 4
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 0
  %436 = load float, float* %435, align 8
  %437 = fmul float %433, %436
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  store float %437, float* %438, align 4
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %440 = load float, float* %439, align 4
  %441 = load float, float* %28, align 4
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %443 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %443, i32 0, i32 2
  %445 = load float, float* %444, align 8
  %446 = fmul float %441, %445
  %447 = fadd float %440, %446
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  store float %447, float* %448, align 4
  %449 = load float, float* %29, align 4
  %450 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %450, i32 0, i32 1
  %452 = load float, float* %451, align 4
  %453 = fmul float %449, %452
  %454 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  store float %453, float* %454, align 4
  %455 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %456 = load float, float* %455, align 4
  %457 = load float, float* %29, align 4
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 3
  %461 = load float, float* %460, align 4
  %462 = fmul float %457, %461
  %463 = fadd float %456, %462
  %464 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 3
  store float %463, float* %464, align 4
  %465 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = sitofp i64 %469 to float
  %471 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %472 = load float, float* %471, align 4
  %473 = fadd float %472, %470
  store float %473, float* %471, align 4
  %474 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = sitofp i64 %478 to float
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %481 = load float, float* %480, align 4
  %482 = fadd float %481, %479
  store float %482, float* %480, align 4
  %483 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = sitofp i64 %487 to float
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %490 = load float, float* %489, align 4
  %491 = fadd float %490, %488
  store float %491, float* %489, align 4
  %492 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %493 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = sitofp i64 %496 to float
  %498 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 3
  %499 = load float, float* %498, align 4
  %500 = fadd float %499, %497
  store float %500, float* %498, align 4
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  store float 0.000000e+00, float* %501, align 4
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = sitofp i64 %505 to float
  %507 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  store float %506, float* %507, align 4
  %508 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 2
  store float 0.000000e+00, float* %508, align 4
  %509 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %509, i32 0, i32 3
  %511 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = sitofp i64 %512 to float
  %514 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 3
  store float %513, float* %514, align 4
  %515 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 3
  %517 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %516, i32 0, i32 4
  %518 = load float, float* %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  store float %518, float* %519, align 4
  %520 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %521 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 4
  %523 = load float, float* %522, align 8
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 3
  %526 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %525, i32 0, i32 2
  %527 = load float, float* %526, align 8
  %528 = fadd float %523, %527
  %529 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  store float %528, float* %529, align 4
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %530, i32 0, i32 3
  %532 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %531, i32 0, i32 5
  %533 = load float, float* %532, align 4
  %534 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 2
  store float %533, float* %534, align 4
  %535 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %536 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %535, i32 0, i32 3
  %537 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %536, i32 0, i32 5
  %538 = load float, float* %537, align 4
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 3
  %541 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %540, i32 0, i32 3
  %542 = load float, float* %541, align 4
  %543 = fadd float %538, %542
  %544 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 3
  store float %543, float* %544, align 4
  %545 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %549 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %552 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = mul nsw i32 %550, %553
  %555 = sdiv i32 %554, 255
  %556 = load i32, i32* @ORIENT_NORMAL, align 4
  %557 = call i32 @Direct3D9SetupVertices(i32 %547, %struct.TYPE_27__* %31, %struct.TYPE_27__* %32, %struct.TYPE_27__* %30, i32 %555, i32 %556)
  br label %558

558:                                              ; preds = %412, %172
  %559 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %560 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %559, i32 0, i32 5
  %561 = load %struct.TYPE_25__*, %struct.TYPE_25__** %560, align 8
  store %struct.TYPE_25__* %561, %struct.TYPE_25__** %13, align 8
  %562 = load i32, i32* %12, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %12, align 4
  br label %64

564:                                              ; preds = %58, %64
  ret void
}

declare dso_local %struct.TYPE_26__* @calloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32, i64, i64, i32, i32, i64, i32, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_35__*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_35__*, i8*, float, i32) #1

declare dso_local i32 @IDirect3DTexture9_LockRect(i32*, i32, %struct.TYPE_28__*, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @IDirect3DTexture9_UnlockRect(i32*, i32) #1

declare dso_local i32 @Direct3D9SetupVertices(i32, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
