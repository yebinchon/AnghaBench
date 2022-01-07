; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_29__, %struct.TYPE_21__, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_22__, %struct.TYPE_25__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@LocalSwapchainSwap = common dso_local global i64 0, align 8
@DXGI_FORMAT_R8G8B8A8_UNORM = common dso_local global i64 0, align 8
@DXGI_FORMAT_B5G6R5_UNORM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Could not update the backbuffer\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to allocate resources\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @Direct3D11Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D11Open(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = call i32 @video_format_Copy(%struct.TYPE_28__* %7, %struct.TYPE_29__* %15)
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = call i32 @SetupOutputFormat(%struct.TYPE_26__* %17, %struct.TYPE_28__* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @VLC_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %108

22:                                               ; preds = %2
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @is_d3d11_opaque(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %90, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %29
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @vlc_fourcc_IsYUV(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64* @vlc_fourcc_GetYUVFallback(i64 %46)
  br label %54

48:                                               ; preds = %35
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64* @vlc_fourcc_GetRGBFallback(i64 %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i64* [ %47, %42 ], [ %53, %48 ]
  store i64* %55, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %86, %54
  %57 = load i64*, i64** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %86

78:                                               ; preds = %63
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = call i32 @SetupOutputFormat(%struct.TYPE_26__* %79, %struct.TYPE_28__* %7)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %56

89:                                               ; preds = %84, %56
  br label %90

90:                                               ; preds = %89, %29, %22
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LocalSwapchainSwap, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @LocalSwapchainCleanupDevice(i32 %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %244

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %2
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @is_d3d11_opaque(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %123
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 127
  %134 = and i32 %133, -128
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 127
  %143 = and i32 %142, -128
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  br label %185

147:                                              ; preds = %123, %108
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @DXGI_FORMAT_R8G8B8A8_UNORM, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %147
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DXGI_FORMAT_B5G6R5_UNORM, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %156
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  %171 = and i32 %170, -2
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  %180 = and i32 %179, -2
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %165, %156, %147
  br label %185

185:                                              ; preds = %184, %128
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  store i32 %197, i32* %201, align 4
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %203 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %202)
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 2
  %208 = call i32 @CommonPlacePicture(i32 %203, %struct.TYPE_22__* %205, i32* %207)
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %210 = call i32 @QueryDisplayFormat(%struct.TYPE_26__* %209, %struct.TYPE_28__* %7)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @VLC_SUCCESS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %185
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %216 = call i32 @msg_Err(%struct.TYPE_26__* %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %3, align 4
  br label %244

218:                                              ; preds = %185
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %220 = call i64 @Direct3D11CreateGenericResources(%struct.TYPE_26__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %224 = call i32 @msg_Err(%struct.TYPE_26__* %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @LocalSwapchainSwap, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @LocalSwapchainCleanupDevice(i32 %233)
  br label %235

235:                                              ; preds = %230, %222
  %236 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %236, i32* %3, align 4
  br label %244

237:                                              ; preds = %218
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %239 = call i32 @video_format_Clean(%struct.TYPE_28__* %238)
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %241 = bitcast %struct.TYPE_28__* %240 to i8*
  %242 = bitcast %struct.TYPE_28__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 16, i1 false)
  %243 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %237, %235, %214, %105
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @video_format_Copy(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @SetupOutputFormat(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i64 @is_d3d11_opaque(i64) #1

declare dso_local i64 @vlc_fourcc_IsYUV(i64) #1

declare dso_local i64* @vlc_fourcc_GetYUVFallback(i64) #1

declare dso_local i64* @vlc_fourcc_GetRGBFallback(i64) #1

declare dso_local i32 @LocalSwapchainCleanupDevice(i32) #1

declare dso_local i32 @CommonPlacePicture(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_26__*) #1

declare dso_local i32 @QueryDisplayFormat(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @Direct3D11CreateGenericResources(%struct.TYPE_26__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
