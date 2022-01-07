; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_RenderPic.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_RenderPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_30__, %struct.TYPE_36__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_32__, i32, %struct.TYPE_28__, %struct.TYPE_29__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_33__** }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_37__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@DXVA2_SampleUnknown = common dso_local global i32 0, align 4
@D3DTEXF_NONE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)* @RenderPic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RenderPic(%struct.TYPE_35__* %0, %struct.TYPE_33__* %1, %struct.TYPE_33__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_27__, align 4
  %21 = alloca %struct.TYPE_27__, align 4
  %22 = alloca %struct.TYPE_37__, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca %struct.TYPE_33__*, align 8
  %26 = alloca %struct.TYPE_34__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  store %struct.TYPE_36__* %31, %struct.TYPE_36__** %12, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %33, align 8
  store %struct.TYPE_34__* %34, %struct.TYPE_34__** %13, align 8
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %17, align 8
  %48 = alloca %struct.TYPE_26__, i64 %46, align 16
  store i64 %46, i64* %18, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca %struct.TYPE_33__*, i64 %50, align 16
  store i64 %50, i64* %19, align 8
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %55, i64 0
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %56, align 8
  store %struct.TYPE_33__* %57, %struct.TYPE_33__** %23, align 8
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %61, i64 1
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %62, align 8
  store %struct.TYPE_33__* %63, %struct.TYPE_33__** %24, align 8
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %67, i64 2
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %68, align 8
  store %struct.TYPE_33__* %69, %struct.TYPE_33__** %25, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %71 = call %struct.TYPE_34__* @ActiveD3D9PictureSys(%struct.TYPE_33__* %70)
  store %struct.TYPE_34__* %71, %struct.TYPE_34__** %26, align 8
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IDirect3DSurface9_GetDesc(i32 %74, %struct.TYPE_27__* %20)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = call i64 @unlikely(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %5
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %239

82:                                               ; preds = %5
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @IDirect3DSurface9_GetDesc(i32 %85, %struct.TYPE_27__* %21)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = call i64 @unlikely(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %92, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %239

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @__MIN(i32 %97, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @__MIN(i32 %103, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %28, align 4
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %111 = icmp ne %struct.TYPE_33__* %110, null
  br i1 %111, label %112, label %136

112:                                              ; preds = %93
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %114 = load i32, i32* %28, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %28, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %116
  store %struct.TYPE_33__* %113, %struct.TYPE_33__** %117, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %119 = icmp ne %struct.TYPE_33__* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %122 = load i32, i32* %28, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %28, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %124
  store %struct.TYPE_33__* %121, %struct.TYPE_33__** %125, align 8
  br label %126

126:                                              ; preds = %120, %112
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %128 = icmp ne %struct.TYPE_33__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %131 = load i32, i32* %28, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %28, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %133
  store %struct.TYPE_33__* %130, %struct.TYPE_33__** %134, align 8
  br label %135

135:                                              ; preds = %129, %126
  br label %142

136:                                              ; preds = %93
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %138 = load i32, i32* %28, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %28, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %140
  store %struct.TYPE_33__* %137, %struct.TYPE_33__** %141, align 8
  br label %142

142:                                              ; preds = %136, %135
  br label %143

143:                                              ; preds = %146, %142
  %144 = load i32, i32* %28, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %28, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %28, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %149
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %150, align 8
  br label %143

151:                                              ; preds = %143
  store i32 0, i32* %28, align 4
  br label %152

152:                                              ; preds = %197, %151
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp sle i32 %153, %155
  br i1 %156, label %157, label %200

157:                                              ; preds = %152
  %158 = load i32, i32* %28, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %159
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %160, align 8
  %162 = icmp ne %struct.TYPE_33__* %161, null
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load i32, i32* %28, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i64 %165
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 3
  %169 = load i32, i32* %28, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %51, i64 %170
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %171, align 8
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @FillSample(%struct.TYPE_26__* %166, %struct.TYPE_28__* %168, %struct.TYPE_33__* %172, i32* %175, %struct.TYPE_37__* %22, i32 %176)
  br label %196

178:                                              ; preds = %157
  %179 = load i32, i32* %28, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i64 %180
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @FillSample(%struct.TYPE_26__* %181, %struct.TYPE_28__* %183, %struct.TYPE_33__* %184, i32* %187, %struct.TYPE_37__* %22, i32 %188)
  %190 = load i32, i32* @DXVA2_SampleUnknown, align 4
  %191 = load i32, i32* %28, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 4
  br label %196

196:                                              ; preds = %178, %163
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %28, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %28, align 4
  br label %152

200:                                              ; preds = %152
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  %205 = call i32 @FillBlitParams(%struct.TYPE_36__* %201, i32* %16, %struct.TYPE_37__* %22, %struct.TYPE_26__* %48, i32 %202, i32* %204)
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @IDirectXVideoProcessor_VideoProcessBlt(i32 %208, i32 %211, i32* %16, %struct.TYPE_26__* %48, i32 %212, i32* null)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = call i64 @FAILED(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %200
  %218 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %218, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %239

219:                                              ; preds = %200
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @D3DTEXF_NONE, align 4
  %231 = call i32 @IDirect3DDevice9_StretchRect(i32 %223, i32 %226, i32* null, i32 %229, i32* null, i32 %230)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i64 @FAILED(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %219
  %236 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %236, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %239

237:                                              ; preds = %219
  %238 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %238, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %239

239:                                              ; preds = %237, %235, %217, %91, %80
  %240 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_34__* @ActiveD3D9PictureSys(%struct.TYPE_33__*) #2

declare dso_local i32 @IDirect3DSurface9_GetDesc(i32, %struct.TYPE_27__*) #2

declare dso_local i64 @unlikely(i64) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i8* @__MIN(i32, i32) #2

declare dso_local i32 @FillSample(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_33__*, i32*, %struct.TYPE_37__*, i32) #2

declare dso_local i32 @FillBlitParams(%struct.TYPE_36__*, i32*, %struct.TYPE_37__*, %struct.TYPE_26__*, i32, i32*) #2

declare dso_local i32 @IDirectXVideoProcessor_VideoProcessBlt(i32, i32, i32*, %struct.TYPE_26__*, i32, i32*) #2

declare dso_local i32 @IDirect3DDevice9_StretchRect(i32, i32, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
