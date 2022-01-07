; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11CreateFormatResources.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11CreateFormatResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_36__, %struct.TYPE_42__* }
%struct.TYPE_36__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_40__, %struct.TYPE_33__, %struct.TYPE_34__, i32, %struct.TYPE_39__, i32, i32 }
%struct.TYPE_40__ = type { i32**, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_35__, %struct.TYPE_38__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_43__ = type { i64, i32, i32, i32 }
%struct.TYPE_44__ = type { i64, i64, i64, i64 }

@D3D_FEATURE_LEVEL_10_0 = common dso_local global i64 0, align 8
@COLOR_RANGE_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to create the pixel shader. (hr=0x%lX)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate quad buffers.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not Create the main quad picture.\00", align 1
@PROJECTION_MODE_EQUIRECTANGULAR = common dso_local global i32 0, align 4
@PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD = common dso_local global i32 0, align 4
@IID_ID3D10Multithread = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3D11_MAX_SHADER_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, %struct.TYPE_43__*)* @Direct3D11CreateFormatResources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D11CreateFormatResources(%struct.TYPE_41__* %0, %struct.TYPE_43__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_44__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  %10 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  store %struct.TYPE_42__* %12, %struct.TYPE_42__** %6, align 8
  %13 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @D3D_FEATURE_LEVEL_10_0, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %21 = call i32 @CanUseTextureArray(%struct.TYPE_41__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %25 = call i64 @BogusZeroCopy(%struct.TYPE_41__* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %19, %2
  %28 = phi i1 [ true, %19 ], [ true, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %33 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @COLOR_RANGE_FULL, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 2
  %56 = call i32 @D3D11_CompilePixelShader(%struct.TYPE_41__* %32, i32* %34, i32 %37, %struct.TYPE_34__* %39, i32* %41, i32 %44, i32 %47, i32 %53, %struct.TYPE_33__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %27
  %61 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (%struct.TYPE_41__*, i8*, ...) @msg_Err(%struct.TYPE_41__* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %3, align 4
  br label %183

65:                                               ; preds = %27
  %66 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %73, i32 0, i32 2
  %75 = call i64 @D3D11_AllocateQuad(%struct.TYPE_41__* %66, %struct.TYPE_34__* %68, i32 %72, %struct.TYPE_33__* %74)
  %76 = load i64, i64* @VLC_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %80 = call i32 (%struct.TYPE_41__*, i8*, ...) @msg_Err(%struct.TYPE_41__* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %3, align 4
  br label %183

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 0
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %87, %91
  store i64 %92, i64* %83, align 8
  %93 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 1
  %94 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %93, align 8
  %98 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 2
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %102, %106
  store i64 %107, i64* %98, align 8
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 3
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %108, align 8
  %113 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @D3D11_SetupQuad(%struct.TYPE_41__* %113, %struct.TYPE_34__* %115, %struct.TYPE_35__* %118, %struct.TYPE_33__* %120, i32* %122, %struct.TYPE_44__* %8, i32 %126)
  %128 = load i64, i64* @VLC_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %82
  %131 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %132 = call i32 (%struct.TYPE_41__*, i8*, ...) @msg_Err(%struct.TYPE_41__* %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %133, i32* %3, align 4
  br label %183

134:                                              ; preds = %82
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PROJECTION_MODE_EQUIRECTANGULAR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %148, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %141, %134
  %149 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %150 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 0
  %156 = call i32 @SetQuadVSProjection(%struct.TYPE_41__* %149, %struct.TYPE_33__* %151, i32* %155)
  br label %157

157:                                              ; preds = %148, %141
  %158 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @is_d3d11_opaque(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %157
  %164 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = bitcast i32** %9 to i8**
  %169 = call i32 @ID3D11Device_QueryInterface(i32 %167, i32* @IID_ID3D10Multithread, i8** %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @SUCCEEDED(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* @TRUE, align 4
  %176 = call i32 @ID3D10Multithread_SetMultithreadProtected(i32* %174, i32 %175)
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ID3D10Multithread_Release(i32* %177)
  br label %179

179:                                              ; preds = %173, %163
  br label %180

180:                                              ; preds = %179, %157
  %181 = load i64, i64* @VLC_SUCCESS, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %180, %130, %78, %60
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @CanUseTextureArray(%struct.TYPE_41__*) #1

declare dso_local i64 @BogusZeroCopy(%struct.TYPE_41__*) #1

declare dso_local i32 @D3D11_CompilePixelShader(%struct.TYPE_41__*, i32*, i32, %struct.TYPE_34__*, i32*, i32, i32, i32, %struct.TYPE_33__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_41__*, i8*, ...) #1

declare dso_local i64 @D3D11_AllocateQuad(%struct.TYPE_41__*, %struct.TYPE_34__*, i32, %struct.TYPE_33__*) #1

declare dso_local i64 @D3D11_SetupQuad(%struct.TYPE_41__*, %struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @SetQuadVSProjection(%struct.TYPE_41__*, %struct.TYPE_33__*, i32*) #1

declare dso_local i64 @is_d3d11_opaque(i32) #1

declare dso_local i32 @ID3D11Device_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ID3D10Multithread_SetMultithreadProtected(i32*, i32) #1

declare dso_local i32 @ID3D10Multithread_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
