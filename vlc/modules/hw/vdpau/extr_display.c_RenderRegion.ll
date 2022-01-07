; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_display.c_RenderRegion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_display.c_RenderRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, float }
%struct.TYPE_24__ = type { i32, i32, float, %struct.TYPE_20__, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { float, float, float, float }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@VDP_RGBA_FORMAT_R8G8B8A8 = common dso_local global i32 0, align 4
@VDP_FALSE = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s creation failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"bitmap surface\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"subpicture upload failure: %s\00", align 1
@VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"blending failure: %s\00", align 1
@VDP_RGBA_FORMAT_B8G8R8A8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, %struct.TYPE_23__*, %struct.TYPE_24__*)* @RenderRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RenderRegion(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_23__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca %struct.TYPE_27__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %8, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %9, align 8
  %22 = load i32, i32* @VDP_RGBA_FORMAT_R8G8B8A8, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VDP_FALSE, align 4
  %39 = call i64 @vdp_bitmap_surface_create(i32 %25, i32 %28, i32 %29, i32 %33, i32 %37, i32 %38, i32* %10)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @VDP_STATUS_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @vdp_get_error_string(i32 %47, i64 %48)
  %50 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_21__* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %197

51:                                               ; preds = %4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %13, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %15, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @vdp_bitmap_surface_put_bits_native(i32 %69, i32 %70, i8** %14, i32* %15, i32* null)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @VDP_STATUS_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %51
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @vdp_get_error_string(i32 %79, i64 %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_21__* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %191

85:                                               ; preds = %51
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  store i32 %97, i32* %86, align 4
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %105, %108
  store i32 %109, i32* %98, align 4
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %113, %117
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  store i32 %126, i32* %110, align 4
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 3
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %130, %134
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %135, %138
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %139, %142
  store i32 %143, i32* %127, align 4
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store float 1.000000e+00, float* %144, align 4
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store float 1.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  store float 1.000000e+00, float* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  %150 = load float, float* %149, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load float, float* %152, align 4
  %154 = fmul float %150, %153
  %155 = fdiv float %154, 6.502500e+04
  store float %155, float* %147, align 4
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %158 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD, align 4
  store i32 %158, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  %160 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 3
  %162 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE, align 4
  store i32 %162, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 4
  %164 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO, align 4
  store i32 %164, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 5
  %166 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %166, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 6
  %168 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA, align 4
  store i32 %168, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 7
  %170 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION, align 4
  store i32 %170, i32* %169, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @vdp_output_surface_render_bitmap_surface(i32 %173, i32 %174, %struct.TYPE_26__* %16, i32 %175, i32* null, %struct.TYPE_18__* %17, %struct.TYPE_27__* %18, i32 0)
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* @VDP_STATUS_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %85
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @vdp_get_error_string(i32 %184, i64 %185)
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 (%struct.TYPE_21__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_21__* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %180, %85
  br label %191

191:                                              ; preds = %190, %75
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @vdp_bitmap_surface_destroy(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %43
  ret void
}

declare dso_local i64 @vdp_bitmap_surface_create(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*, i8*, ...) #1

declare dso_local i32 @vdp_get_error_string(i32, i64) #1

declare dso_local i64 @vdp_bitmap_surface_put_bits_native(i32, i32, i8**, i32*, i32*) #1

declare dso_local i64 @vdp_output_surface_render_bitmap_surface(i32, i32, %struct.TYPE_26__*, i32, i32*, %struct.TYPE_18__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @vdp_bitmap_surface_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
