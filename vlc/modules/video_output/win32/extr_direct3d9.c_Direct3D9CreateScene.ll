; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9CreateScene.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9CreateScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, i32*, i64, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@D3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create texture. (hr=0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Direct3D created texture: %ix%i\00", align 1
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@D3DFVF_CUSTOMVERTEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to create vertex buffer. (hr=0x%lX)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed SetFVF: 0x%lX\00", align 1
@D3DSAMP_ADDRESSU = common dso_local global i32 0, align 4
@D3DTADDRESS_CLAMP = common dso_local global i32 0, align 4
@D3DSAMP_ADDRESSV = common dso_local global i32 0, align 4
@D3DPTFILTERCAPS_MINFLINEAR = common dso_local global i32 0, align 4
@D3DSAMP_MINFILTER = common dso_local global i32 0, align 4
@D3DTEXF_LINEAR = common dso_local global i32 0, align 4
@D3DTEXF_POINT = common dso_local global i32 0, align 4
@D3DPTFILTERCAPS_MAGFLINEAR = common dso_local global i32 0, align 4
@D3DSAMP_MAGFILTER = common dso_local global i32 0, align 4
@D3DRS_AMBIENT = common dso_local global i32 0, align 4
@D3DRS_CULLMODE = common dso_local global i32 0, align 4
@D3DCULL_NONE = common dso_local global i32 0, align 4
@D3DRS_ZENABLE = common dso_local global i32 0, align 4
@D3DZB_FALSE = common dso_local global i32 0, align 4
@D3DRS_LIGHTING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@D3DRS_DITHERENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3DRS_STENCILENABLE = common dso_local global i32 0, align 4
@D3DRS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@D3DRS_SRCBLEND = common dso_local global i32 0, align 4
@D3DBLEND_SRCALPHA = common dso_local global i32 0, align 4
@D3DRS_DESTBLEND = common dso_local global i32 0, align 4
@D3DBLEND_INVSRCALPHA = common dso_local global i32 0, align 4
@D3DPCMPCAPS_GREATER = common dso_local global i32 0, align 4
@D3DRS_ALPHATESTENABLE = common dso_local global i32 0, align 4
@D3DRS_ALPHAREF = common dso_local global i32 0, align 4
@D3DRS_ALPHAFUNC = common dso_local global i32 0, align 4
@D3DCMP_GREATER = common dso_local global i32 0, align 4
@D3DTSS_COLOROP = common dso_local global i32 0, align 4
@D3DTOP_SELECTARG1 = common dso_local global i32 0, align 4
@D3DTSS_COLORARG1 = common dso_local global i32 0, align 4
@D3DTA_TEXTURE = common dso_local global i32 0, align 4
@D3DTSS_ALPHAOP = common dso_local global i32 0, align 4
@D3DTOP_MODULATE = common dso_local global i32 0, align 4
@D3DTSS_ALPHAARG1 = common dso_local global i32 0, align 4
@D3DTSS_ALPHAARG2 = common dso_local global i32 0, align 4
@D3DTA_DIFFUSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Direct3D9 scene created successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)* @Direct3D9CreateScene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D9CreateScene(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i64 @UpdateOutput(%struct.TYPE_13__* %20, %struct.TYPE_15__* %21)
  %23 = load i64, i64* @VLC_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %244

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @D3DUSAGE_RENDERTARGET, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = call i32 @IDirect3DDevice9_CreateTexture(i32* %48, i32 %49, i32 %50, i32 1, i32 %51, i32 %54, i32 %55, i32** %57, i32* null)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @msg_Err(%struct.TYPE_13__* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %66, i32* %3, align 4
  br label %244

67:                                               ; preds = %47
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Dbg(%struct.TYPE_13__* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %78 = load i32, i32* @D3DUSAGE_WRITEONLY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @D3DFVF_CUSTOMVERTEX, align 4
  %81 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  %84 = call i32 @IDirect3DDevice9_CreateVertexBuffer(i32* %76, i32 16, i32 %79, i32 %80, i32 %81, i32* %83, i32* null)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %67
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @msg_Err(%struct.TYPE_13__* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @IDirect3DTexture9_Release(i32* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %98, i32* %3, align 4
  br label %244

99:                                               ; preds = %67
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @D3DFVF_CUSTOMVERTEX, align 4
  %102 = call i32 @IDirect3DDevice9_SetFVF(i32* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @FAILED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Dbg(%struct.TYPE_13__* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  store i32 -1, i32* %3, align 4
  br label %244

110:                                              ; preds = %99
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* @D3DSAMP_ADDRESSU, align 4
  %119 = load i32, i32* @D3DTADDRESS_CLAMP, align 4
  %120 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %117, i32 0, i32 %118, i32 %119)
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* @D3DSAMP_ADDRESSV, align 4
  %123 = load i32, i32* @D3DTADDRESS_CLAMP, align 4
  %124 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %121, i32 0, i32 %122, i32 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @D3DPTFILTERCAPS_MINFLINEAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %110
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @D3DSAMP_MINFILTER, align 4
  %136 = load i32, i32* @D3DTEXF_LINEAR, align 4
  %137 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %134, i32 0, i32 %135, i32 %136)
  br label %143

138:                                              ; preds = %110
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @D3DSAMP_MINFILTER, align 4
  %141 = load i32, i32* @D3DTEXF_POINT, align 4
  %142 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %139, i32 0, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @D3DPTFILTERCAPS_MAGFLINEAR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @D3DSAMP_MAGFILTER, align 4
  %155 = load i32, i32* @D3DTEXF_LINEAR, align 4
  %156 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %153, i32 0, i32 %154, i32 %155)
  br label %162

157:                                              ; preds = %143
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @D3DSAMP_MAGFILTER, align 4
  %160 = load i32, i32* @D3DTEXF_POINT, align 4
  %161 = call i32 @IDirect3DDevice9_SetSamplerState(i32* %158, i32 0, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* @D3DRS_AMBIENT, align 4
  %165 = call i32 @D3DCOLOR_XRGB(i32 255, i32 255, i32 255)
  %166 = call i32 @IDirect3DDevice9_SetRenderState(i32* %163, i32 %164, i32 %165)
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* @D3DRS_CULLMODE, align 4
  %169 = load i32, i32* @D3DCULL_NONE, align 4
  %170 = call i32 @IDirect3DDevice9_SetRenderState(i32* %167, i32 %168, i32 %169)
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* @D3DRS_ZENABLE, align 4
  %173 = load i32, i32* @D3DZB_FALSE, align 4
  %174 = call i32 @IDirect3DDevice9_SetRenderState(i32* %171, i32 %172, i32 %173)
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* @D3DRS_LIGHTING, align 4
  %177 = load i32, i32* @FALSE, align 4
  %178 = call i32 @IDirect3DDevice9_SetRenderState(i32* %175, i32 %176, i32 %177)
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* @D3DRS_DITHERENABLE, align 4
  %181 = load i32, i32* @TRUE, align 4
  %182 = call i32 @IDirect3DDevice9_SetRenderState(i32* %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* @D3DRS_STENCILENABLE, align 4
  %185 = load i32, i32* @FALSE, align 4
  %186 = call i32 @IDirect3DDevice9_SetRenderState(i32* %183, i32 %184, i32 %185)
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* @D3DRS_ALPHABLENDENABLE, align 4
  %189 = load i32, i32* @FALSE, align 4
  %190 = call i32 @IDirect3DDevice9_SetRenderState(i32* %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* @D3DRS_SRCBLEND, align 4
  %193 = load i32, i32* @D3DBLEND_SRCALPHA, align 4
  %194 = call i32 @IDirect3DDevice9_SetRenderState(i32* %191, i32 %192, i32 %193)
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @D3DRS_DESTBLEND, align 4
  %197 = load i32, i32* @D3DBLEND_INVSRCALPHA, align 4
  %198 = call i32 @IDirect3DDevice9_SetRenderState(i32* %195, i32 %196, i32 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @D3DPCMPCAPS_GREATER, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %162
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* @D3DRS_ALPHATESTENABLE, align 4
  %210 = load i32, i32* @TRUE, align 4
  %211 = call i32 @IDirect3DDevice9_SetRenderState(i32* %208, i32 %209, i32 %210)
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* @D3DRS_ALPHAREF, align 4
  %214 = call i32 @IDirect3DDevice9_SetRenderState(i32* %212, i32 %213, i32 0)
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* @D3DRS_ALPHAFUNC, align 4
  %217 = load i32, i32* @D3DCMP_GREATER, align 4
  %218 = call i32 @IDirect3DDevice9_SetRenderState(i32* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %207, %162
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* @D3DTSS_COLOROP, align 4
  %222 = load i32, i32* @D3DTOP_SELECTARG1, align 4
  %223 = call i32 @IDirect3DDevice9_SetTextureStageState(i32* %220, i32 0, i32 %221, i32 %222)
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* @D3DTSS_COLORARG1, align 4
  %226 = load i32, i32* @D3DTA_TEXTURE, align 4
  %227 = call i32 @IDirect3DDevice9_SetTextureStageState(i32* %224, i32 0, i32 %225, i32 %226)
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* @D3DTSS_ALPHAOP, align 4
  %230 = load i32, i32* @D3DTOP_MODULATE, align 4
  %231 = call i32 @IDirect3DDevice9_SetTextureStageState(i32* %228, i32 0, i32 %229, i32 %230)
  %232 = load i32*, i32** %8, align 8
  %233 = load i32, i32* @D3DTSS_ALPHAARG1, align 4
  %234 = load i32, i32* @D3DTA_TEXTURE, align 4
  %235 = call i32 @IDirect3DDevice9_SetTextureStageState(i32* %232, i32 0, i32 %233, i32 %234)
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* @D3DTSS_ALPHAARG2, align 4
  %238 = load i32, i32* @D3DTA_DIFFUSE, align 4
  %239 = call i32 @IDirect3DDevice9_SetTextureStageState(i32* %236, i32 0, i32 %237, i32 %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Dbg(%struct.TYPE_13__* %240, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %242 = load i64, i64* @VLC_SUCCESS, align 8
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %219, %106, %88, %62, %25
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i64 @UpdateOutput(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32*, i32, i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @IDirect3DDevice9_CreateVertexBuffer(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IDirect3DTexture9_Release(i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetFVF(i32*, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetSamplerState(i32*, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetRenderState(i32*, i32, i32) #1

declare dso_local i32 @D3DCOLOR_XRGB(i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetTextureStageState(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
