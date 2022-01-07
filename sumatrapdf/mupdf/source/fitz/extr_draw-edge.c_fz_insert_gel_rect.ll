; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_insert_gel_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_insert_gel_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@BBOX_MIN = common dso_local global i32 0, align 4
@BBOX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, float, float, float, float)* @fz_insert_gel_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_gel_rect(i32* %0, %struct.TYPE_8__* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = call i32 @fz_rasterizer_aa_hscale(%struct.TYPE_8__* %19)
  store i32 %20, i32* %17, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = call i32 @fz_rasterizer_aa_vscale(%struct.TYPE_8__* %21)
  store i32 %22, i32* %18, align 4
  %23 = load float, float* %9, align 4
  %24 = load float, float* %11, align 4
  %25 = fcmp ole float %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = load float, float* %9, align 4
  %28 = load i32, i32* %17, align 4
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = call float @llvm.floor.f32(float %30)
  store float %31, float* %9, align 4
  %32 = load float, float* %11, align 4
  %33 = load i32, i32* %17, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float %32, %34
  %36 = call float @llvm.ceil.f32(float %35)
  store float %36, float* %11, align 4
  br label %48

37:                                               ; preds = %6
  %38 = load float, float* %9, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sitofp i32 %39 to float
  %41 = fmul float %38, %40
  %42 = call float @llvm.ceil.f32(float %41)
  store float %42, float* %9, align 4
  %43 = load float, float* %11, align 4
  %44 = load i32, i32* %17, align 4
  %45 = sitofp i32 %44 to float
  %46 = fmul float %43, %45
  %47 = call float @llvm.floor.f32(float %46)
  store float %47, float* %11, align 4
  br label %48

48:                                               ; preds = %37, %26
  %49 = load float, float* %10, align 4
  %50 = load float, float* %12, align 4
  %51 = fcmp ole float %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load float, float* %10, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sitofp i32 %54 to float
  %56 = fmul float %53, %55
  %57 = call float @llvm.floor.f32(float %56)
  store float %57, float* %10, align 4
  %58 = load float, float* %12, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sitofp i32 %59 to float
  %61 = fmul float %58, %60
  %62 = call float @llvm.ceil.f32(float %61)
  store float %62, float* %12, align 4
  br label %74

63:                                               ; preds = %48
  %64 = load float, float* %10, align 4
  %65 = load i32, i32* %18, align 4
  %66 = sitofp i32 %65 to float
  %67 = fmul float %64, %66
  %68 = call float @llvm.ceil.f32(float %67)
  store float %68, float* %10, align 4
  %69 = load float, float* %12, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sitofp i32 %70 to float
  %72 = fmul float %69, %71
  %73 = call float @llvm.floor.f32(float %72)
  store float %73, float* %12, align 4
  br label %74

74:                                               ; preds = %63, %52
  %75 = load float, float* %9, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call float @fz_clamp(float %75, i32 %79, i32 %83)
  store float %84, float* %9, align 4
  %85 = load float, float* %11, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call float @fz_clamp(float %85, i32 %89, i32 %93)
  store float %94, float* %11, align 4
  %95 = load float, float* %10, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call float @fz_clamp(float %95, i32 %99, i32 %103)
  store float %104, float* %10, align 4
  %105 = load float, float* %12, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call float @fz_clamp(float %105, i32 %109, i32 %113)
  store float %114, float* %12, align 4
  %115 = load float, float* %9, align 4
  %116 = load i32, i32* @BBOX_MIN, align 4
  %117 = load i32, i32* %17, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* @BBOX_MAX, align 4
  %120 = load i32, i32* %17, align 4
  %121 = mul nsw i32 %119, %120
  %122 = call float @fz_clamp(float %115, i32 %118, i32 %121)
  %123 = fptosi float %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load float, float* %10, align 4
  %125 = load i32, i32* @BBOX_MIN, align 4
  %126 = load i32, i32* %18, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @BBOX_MAX, align 4
  %129 = load i32, i32* %18, align 4
  %130 = mul nsw i32 %128, %129
  %131 = call float @fz_clamp(float %124, i32 %127, i32 %130)
  %132 = fptosi float %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load float, float* %11, align 4
  %134 = load i32, i32* @BBOX_MIN, align 4
  %135 = load i32, i32* %17, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* @BBOX_MAX, align 4
  %138 = load i32, i32* %17, align 4
  %139 = mul nsw i32 %137, %138
  %140 = call float @fz_clamp(float %133, i32 %136, i32 %139)
  %141 = fptosi float %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load float, float* %12, align 4
  %143 = load i32, i32* @BBOX_MIN, align 4
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* @BBOX_MAX, align 4
  %147 = load i32, i32* %18, align 4
  %148 = mul nsw i32 %146, %147
  %149 = call float @fz_clamp(float %142, i32 %145, i32 %148)
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %16, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @fz_insert_gel_raw(i32* %151, %struct.TYPE_8__* %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @fz_insert_gel_raw(i32* %158, %struct.TYPE_8__* %159, i32 %160, i32 %161, i32 %162, i32 %163)
  ret void
}

declare dso_local i32 @fz_rasterizer_aa_hscale(%struct.TYPE_8__*) #1

declare dso_local i32 @fz_rasterizer_aa_vscale(%struct.TYPE_8__*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #2

declare dso_local float @fz_clamp(float, i32, i32) #1

declare dso_local i32 @fz_insert_gel_raw(i32*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
