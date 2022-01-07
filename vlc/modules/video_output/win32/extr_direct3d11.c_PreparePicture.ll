; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_PreparePicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_PreparePicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_57__ = type { %struct.TYPE_53__, %struct.TYPE_58__* }
%struct.TYPE_53__ = type { i64 }
%struct.TYPE_58__ = type { i32, %struct.TYPE_47__, %struct.TYPE_42__, i64, i32, %struct.TYPE_40__**, i32, %struct.TYPE_56__, i64, %struct.TYPE_52__, i32, %struct.TYPE_51__, %struct.TYPE_46__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_42__ = type { i64, i64, %struct.TYPE_55__*, %struct.TYPE_54__ }
%struct.TYPE_55__ = type { i64 }
%struct.TYPE_54__ = type { i32** }
%struct.TYPE_56__ = type { i32**, i32*, i32* }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_51__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i64, i64 }
%struct.TYPE_46__ = type { i32, i32, i32* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_49__, i64, i32* }
%struct.TYPE_49__ = type { i32, %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_41__ = type { i32**, i32*, i32, i32* }
%struct.TYPE_43__ = type { i64, i64, i32 }
%struct.TYPE_45__ = type { i32, i32, i32, i32, i32 }

@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@D3D11_MAP_WRITE_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to map the %4.4s staging picture. (hr=0x%lX)\00", align 1
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@PROJECTION_MODE_RECTANGULAR = common dso_local global i64 0, align 8
@SelectRenderPlane = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_57__*, %struct.TYPE_40__*, i32*)* @PreparePicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PreparePicture(%struct.TYPE_57__* %0, %struct.TYPE_40__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_57__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_58__*, align 8
  %8 = alloca %struct.TYPE_44__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_44__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_41__*, align 8
  %17 = alloca %struct.TYPE_43__, align 8
  %18 = alloca %struct.TYPE_43__, align 8
  %19 = alloca %struct.TYPE_45__, align 4
  %20 = alloca %struct.TYPE_43__, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_40__**, align 8
  %23 = alloca i32**, align 8
  %24 = alloca %struct.TYPE_41__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_42__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_57__* %0, %struct.TYPE_57__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  store i32* %2, i32** %6, align 8
  %28 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_58__*, %struct.TYPE_58__** %29, align 8
  store %struct.TYPE_58__* %30, %struct.TYPE_58__** %7, align 8
  %31 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_55__*, %struct.TYPE_55__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %160

39:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %104, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %40
  %47 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %60 = call i32 @ID3D11DeviceContext_Map(i32 %50, i32 %58, i32 0, i32 %59, i32 0, %struct.TYPE_44__* %8)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @FAILED(i32 %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %9, align 4
  %69 = icmp sgt i32 %67, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ID3D11DeviceContext_Unmap(i32 %74, i32 %82, i32 0)
  br label %66

84:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %107

85:                                               ; preds = %46
  %86 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %88, i32 0, i32 12
  %90 = load %struct.TYPE_46__*, %struct.TYPE_46__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %93, i32 0, i32 0
  store i32 %87, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %97, i32 0, i32 12
  %99 = load %struct.TYPE_46__*, %struct.TYPE_46__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %102, i32 0, i32 2
  store i32* %96, i32** %103, align 8
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %40

107:                                              ; preds = %84, %40
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %159

110:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %118, i32 0, i32 12
  %120 = load %struct.TYPE_46__*, %struct.TYPE_46__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %120, i64 %122
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @plane_CopyPixels(%struct.TYPE_46__* %123, i32* %129)
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %111

134:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %155, %134
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %135
  %142 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ID3D11DeviceContext_Unmap(i32 %145, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %135

158:                                              ; preds = %135
  br label %159

159:                                              ; preds = %158, %107
  br label %397

160:                                              ; preds = %3
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @is_d3d11_opaque(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %268, label %167

167:                                              ; preds = %160
  %168 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %179 = call i32 @ID3D11DeviceContext_Map(i32 %171, i32 %177, i32 0, i32 %178, i32 0, %struct.TYPE_44__* %12)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @FAILED(i32 %180)
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %167
  %185 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %187, i32 0, i32 0
  %189 = bitcast i32* %188 to i8*
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @msg_Err(%struct.TYPE_57__* %185, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %189, i32 %190)
  br label %267

192:                                              ; preds = %167
  %193 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %12, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %252, %192
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %255

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %12, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %204, i32 0, i32 12
  %206 = load %struct.TYPE_46__*, %struct.TYPE_46__** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %209, i32 0, i32 0
  store i32 %203, i32* %210, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %212, i32 0, i32 12
  %214 = load %struct.TYPE_46__*, %struct.TYPE_46__** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %217, i32 0, i32 2
  store i32* %211, i32** %218, align 8
  %219 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %219, i32 0, i32 12
  %221 = load %struct.TYPE_46__*, %struct.TYPE_46__** %220, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %221, i64 %223
  %225 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32 @plane_CopyPixels(%struct.TYPE_46__* %224, i32* %230)
  %232 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %232, i32 0, i32 12
  %234 = load %struct.TYPE_46__*, %struct.TYPE_46__** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %240, i32 0, i32 12
  %242 = load %struct.TYPE_46__*, %struct.TYPE_46__** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %239, %247
  %249 = load i32*, i32** %14, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %14, align 8
  br label %252

252:                                              ; preds = %201
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %195

255:                                              ; preds = %195
  %256 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @ID3D11DeviceContext_Unmap(i32 %259, i32 %265, i32 0)
  br label %267

267:                                              ; preds = %255, %184
  br label %396

268:                                              ; preds = %160
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %270 = call %struct.TYPE_41__* @ActiveD3D11PictureSys(%struct.TYPE_40__* %269)
  store %struct.TYPE_41__* %270, %struct.TYPE_41__** %16, align 8
  %271 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %271, i32 0, i32 1
  %273 = call i32 @d3d11_device_lock(%struct.TYPE_47__* %272)
  %274 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %329

278:                                              ; preds = %268
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ID3D11Texture2D_GetDesc(i32 %284, %struct.TYPE_43__* %17)
  %286 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %286, i32 0, i32 7
  %288 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @ID3D11Texture2D_GetDesc(i32 %291, %struct.TYPE_43__* %18)
  %293 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 0
  store i32 1, i32* %293, align 4
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %17, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %18, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @__MIN(i64 %296, i64 %298)
  store i32 %299, i32* %294, align 4
  %300 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 2
  store i32 0, i32* %300, align 4
  %301 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %17, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %18, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @__MIN(i64 %303, i64 %305)
  store i32 %306, i32* %301, align 4
  %307 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 4
  store i32 0, i32* %307, align 4
  %308 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %312, i32 0, i32 7
  %314 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %311, i32 %318, i32 0, i32 0, i32 0, i32 0, i32 %324, i32 %327, %struct.TYPE_45__* %19)
  br label %395

329:                                              ; preds = %268
  %330 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @ID3D11Texture2D_GetDesc(i32 %334, %struct.TYPE_43__* %20)
  %336 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %329
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %342, i32 0, i32 0
  %344 = load i32**, i32*** %343, align 8
  %345 = getelementptr inbounds i32*, i32** %344, i64 0
  %346 = load i32*, i32** %345, align 8
  %347 = icmp ne i32* %346, null
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  br label %350

350:                                              ; preds = %341, %329
  %351 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %354, %356
  br i1 %357, label %366, label %358

358:                                              ; preds = %350
  %359 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %362, %364
  br i1 %365, label %366, label %394

366:                                              ; preds = %358, %350
  %367 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %370, i32 0, i32 0
  store i64 %368, i64* %371, align 8
  %372 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %372, i32 0, i32 11
  %374 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %374, i32 0, i32 0
  store i64 %368, i64* %375, align 8
  %376 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %20, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %379, i32 0, i32 1
  store i64 %377, i64* %380, align 8
  %381 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %381, i32 0, i32 11
  %383 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %383, i32 0, i32 1
  store i64 %377, i64* %384, align 8
  %385 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %386 = call i32 @VLC_OBJECT(%struct.TYPE_57__* %385)
  %387 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %387, i32 0, i32 11
  %389 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %389, i32 0, i32 10
  %391 = call i32 @CommonPlacePicture(i32 %386, %struct.TYPE_51__* %388, i32* %390)
  %392 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %393 = call i32 @UpdateSize(%struct.TYPE_57__* %392)
  br label %394

394:                                              ; preds = %366, %358
  br label %395

395:                                              ; preds = %394, %278
  br label %396

396:                                              ; preds = %395, %267
  br label %397

397:                                              ; preds = %396, %159
  %398 = load i32*, i32** %6, align 8
  %399 = icmp ne i32* %398, null
  br i1 %399, label %400, label %417

400:                                              ; preds = %397
  store i32 0, i32* %21, align 4
  store %struct.TYPE_40__** null, %struct.TYPE_40__*** %22, align 8
  %401 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %402 = load i32*, i32** %6, align 8
  %403 = call i32 @Direct3D11MapSubpicture(%struct.TYPE_57__* %401, i32* %21, %struct.TYPE_40__*** %22, i32* %402)
  %404 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %407, i32 0, i32 5
  %409 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %408, align 8
  %410 = call i32 @Direct3D11DeleteRegions(i32 %406, %struct.TYPE_40__** %409)
  %411 = load i32, i32* %21, align 4
  %412 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 8
  %414 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %22, align 8
  %415 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %415, i32 0, i32 5
  store %struct.TYPE_40__** %414, %struct.TYPE_40__*** %416, align 8
  br label %417

417:                                              ; preds = %400, %397
  %418 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %442

424:                                              ; preds = %417
  %425 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %426 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %428, i32 0, i32 2
  %430 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %430, i32 0, i32 9
  %432 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = sitofp i64 %433 to float
  %435 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %436 = call i32 @VLC_OBJECT(%struct.TYPE_57__* %435)
  %437 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i32 0, i32 1
  %439 = call float @GetFormatLuminance(i32 %436, %struct.TYPE_49__* %438)
  %440 = fdiv float %434, %439
  %441 = call i32 @D3D11_UpdateQuadLuminanceScale(%struct.TYPE_57__* %425, %struct.TYPE_47__* %427, %struct.TYPE_42__* %429, float %440)
  br label %442

442:                                              ; preds = %424, %417
  %443 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i64 @is_d3d11_opaque(i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %442
  %450 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %450, i32 0, i32 8
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %449, %442
  %455 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %455, i32 0, i32 7
  %457 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %456, i32 0, i32 0
  %458 = load i32**, i32*** %457, align 8
  store i32** %458, i32*** %23, align 8
  br label %465

459:                                              ; preds = %449
  %460 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %461 = call %struct.TYPE_41__* @ActiveD3D11PictureSys(%struct.TYPE_40__* %460)
  store %struct.TYPE_41__* %461, %struct.TYPE_41__** %24, align 8
  %462 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %463 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %462, i32 0, i32 0
  %464 = load i32**, i32*** %463, align 8
  store i32** %464, i32*** %23, align 8
  br label %465

465:                                              ; preds = %459, %454
  %466 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %468, i32 0, i32 2
  %470 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @PROJECTION_MODE_RECTANGULAR, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %465
  %477 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %477, i32 0, i32 4
  br label %482

479:                                              ; preds = %465
  %480 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %480, i32 0, i32 6
  br label %482

482:                                              ; preds = %479, %476
  %483 = phi i32* [ %478, %476 ], [ %481, %479 ]
  %484 = load i32**, i32*** %23, align 8
  %485 = load i32, i32* @SelectRenderPlane, align 4
  %486 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %487 = call i32 @D3D11_RenderQuad(%struct.TYPE_47__* %467, %struct.TYPE_42__* %469, i32* %483, i32** %484, i32 %485, %struct.TYPE_58__* %486)
  %488 = load i32*, i32** %6, align 8
  %489 = icmp ne i32* %488, null
  br i1 %489, label %490, label %534

490:                                              ; preds = %482
  store i32 0, i32* %25, align 4
  br label %491

491:                                              ; preds = %530, %490
  %492 = load i32, i32* %25, align 4
  %493 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = icmp slt i32 %492, %495
  br i1 %496, label %497, label %533

497:                                              ; preds = %491
  %498 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %498, i32 0, i32 5
  %500 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %499, align 8
  %501 = load i32, i32* %25, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %500, i64 %502
  %504 = load %struct.TYPE_40__*, %struct.TYPE_40__** %503, align 8
  %505 = icmp ne %struct.TYPE_40__* %504, null
  br i1 %505, label %506, label %529

506:                                              ; preds = %497
  %507 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %507, i32 0, i32 5
  %509 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %508, align 8
  %510 = load i32, i32* %25, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %509, i64 %511
  %513 = load %struct.TYPE_40__*, %struct.TYPE_40__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %513, i32 0, i32 2
  %515 = load i64, i64* %514, align 8
  %516 = inttoptr i64 %515 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %516, %struct.TYPE_42__** %26, align 8
  %517 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %517, i32 0, i32 1
  %519 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %520 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %520, i32 0, i32 4
  %522 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %523 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %522, i32 0, i32 3
  %524 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %523, i32 0, i32 0
  %525 = load i32**, i32*** %524, align 8
  %526 = load i32, i32* @SelectRenderPlane, align 4
  %527 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %528 = call i32 @D3D11_RenderQuad(%struct.TYPE_47__* %518, %struct.TYPE_42__* %519, i32* %521, i32** %525, i32 %526, %struct.TYPE_58__* %527)
  br label %529

529:                                              ; preds = %506, %497
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %25, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %25, align 4
  br label %491

533:                                              ; preds = %491
  br label %534

534:                                              ; preds = %533, %482
  %535 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %535, i32 0, i32 3
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %571

539:                                              ; preds = %534
  store i32 10, i32* %27, align 4
  %540 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %541 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %544, i32 0, i32 3
  %546 = load i64, i64* %545, align 8
  %547 = inttoptr i64 %546 to i32*
  %548 = call i32 @ID3D11DeviceContext_End(i32 %543, i32* %547)
  br label %549

549:                                              ; preds = %567, %539
  %550 = load i64, i64* @S_FALSE, align 8
  %551 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %556 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %555, i32 0, i32 3
  %557 = load i64, i64* %556, align 8
  %558 = inttoptr i64 %557 to i32*
  %559 = call i64 @ID3D11DeviceContext_GetData(i32 %554, i32* %558, i32* null, i32 0, i32 0)
  %560 = icmp eq i64 %550, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %549
  %562 = load i32, i32* %27, align 4
  %563 = add nsw i32 %562, -1
  store i32 %563, i32* %27, align 4
  %564 = icmp ne i32 %563, 0
  br label %565

565:                                              ; preds = %561, %549
  %566 = phi i1 [ false, %549 ], [ %564, %561 ]
  br i1 %566, label %567, label %570

567:                                              ; preds = %565
  %568 = load i32, i32* @TRUE, align 4
  %569 = call i32 @SleepEx(i32 2, i32 %568)
  br label %549

570:                                              ; preds = %565
  br label %571

571:                                              ; preds = %570, %534
  %572 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %573 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = call i64 @is_d3d11_opaque(i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %591

578:                                              ; preds = %571
  %579 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %579, i32 0, i32 2
  %581 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %580, i32 0, i32 2
  %582 = load %struct.TYPE_55__*, %struct.TYPE_55__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %582, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %586 = icmp ne i64 %584, %585
  br i1 %586, label %587, label %591

587:                                              ; preds = %578
  %588 = load %struct.TYPE_58__*, %struct.TYPE_58__** %7, align 8
  %589 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %588, i32 0, i32 1
  %590 = call i32 @d3d11_device_unlock(%struct.TYPE_47__* %589)
  br label %591

591:                                              ; preds = %587, %578, %571
  ret void
}

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32, i32, i32, i32, %struct.TYPE_44__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32, i32) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_46__*, i32*) #1

declare dso_local i64 @is_d3d11_opaque(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_57__*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_41__* @ActiveD3D11PictureSys(%struct.TYPE_40__*) #1

declare dso_local i32 @d3d11_device_lock(%struct.TYPE_47__*) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_43__*) #1

declare dso_local i32 @__MIN(i64, i64) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_45__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CommonPlacePicture(i32, %struct.TYPE_51__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_57__*) #1

declare dso_local i32 @UpdateSize(%struct.TYPE_57__*) #1

declare dso_local i32 @Direct3D11MapSubpicture(%struct.TYPE_57__*, i32*, %struct.TYPE_40__***, i32*) #1

declare dso_local i32 @Direct3D11DeleteRegions(i32, %struct.TYPE_40__**) #1

declare dso_local i32 @D3D11_UpdateQuadLuminanceScale(%struct.TYPE_57__*, %struct.TYPE_47__*, %struct.TYPE_42__*, float) #1

declare dso_local float @GetFormatLuminance(i32, %struct.TYPE_49__*) #1

declare dso_local i32 @D3D11_RenderQuad(%struct.TYPE_47__*, %struct.TYPE_42__*, i32*, i32**, i32, %struct.TYPE_58__*) #1

declare dso_local i32 @ID3D11DeviceContext_End(i32, i32*) #1

declare dso_local i64 @ID3D11DeviceContext_GetData(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @SleepEx(i32, i32) #1

declare dso_local i32 @d3d11_device_unlock(%struct.TYPE_47__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
