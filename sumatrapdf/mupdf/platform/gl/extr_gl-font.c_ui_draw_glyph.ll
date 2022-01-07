; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_draw_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_draw_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glyph = type { float, float, float, float, i64, i64 }

@g_cache_w = common dso_local global float 0.000000e+00, align 4
@g_cache_h = common dso_local global float 0.000000e+00, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, float, i32, float, float)* @ui_draw_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @ui_draw_glyph(i32* %0, float %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.glyph*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load float, float* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.glyph* @lookup_glyph(i32* %19, float %20, i32 %21, float* %10, float* %11)
  store %struct.glyph* %22, %struct.glyph** %12, align 8
  %23 = load %struct.glyph*, %struct.glyph** %12, align 8
  %24 = icmp ne %struct.glyph* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store float 0.000000e+00, float* %6, align 4
  br label %121

26:                                               ; preds = %5
  %27 = load %struct.glyph*, %struct.glyph** %12, align 8
  %28 = getelementptr inbounds %struct.glyph, %struct.glyph* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = load float, float* @g_cache_w, align 4
  %32 = fdiv float %30, %31
  store float %32, float* %13, align 4
  %33 = load %struct.glyph*, %struct.glyph** %12, align 8
  %34 = getelementptr inbounds %struct.glyph, %struct.glyph* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = load float, float* @g_cache_h, align 4
  %38 = fdiv float %36, %37
  store float %38, float* %14, align 4
  %39 = load %struct.glyph*, %struct.glyph** %12, align 8
  %40 = getelementptr inbounds %struct.glyph, %struct.glyph* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = load %struct.glyph*, %struct.glyph** %12, align 8
  %44 = getelementptr inbounds %struct.glyph, %struct.glyph* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = fadd float %42, %45
  %47 = load float, float* @g_cache_w, align 4
  %48 = fdiv float %46, %47
  store float %48, float* %15, align 4
  %49 = load %struct.glyph*, %struct.glyph** %12, align 8
  %50 = getelementptr inbounds %struct.glyph, %struct.glyph* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to float
  %53 = load %struct.glyph*, %struct.glyph** %12, align 8
  %54 = getelementptr inbounds %struct.glyph, %struct.glyph* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fadd float %52, %55
  %57 = load float, float* @g_cache_h, align 4
  %58 = fdiv float %56, %57
  store float %58, float* %16, align 4
  %59 = load float, float* %10, align 4
  %60 = call float @llvm.floor.f32(float %59)
  %61 = load %struct.glyph*, %struct.glyph** %12, align 8
  %62 = getelementptr inbounds %struct.glyph, %struct.glyph* %61, i32 0, i32 2
  %63 = load float, float* %62, align 8
  %64 = fadd float %60, %63
  store float %64, float* %17, align 4
  %65 = load float, float* %11, align 4
  %66 = call float @llvm.floor.f32(float %65)
  %67 = load %struct.glyph*, %struct.glyph** %12, align 8
  %68 = getelementptr inbounds %struct.glyph, %struct.glyph* %67, i32 0, i32 3
  %69 = load float, float* %68, align 4
  %70 = fsub float %66, %69
  %71 = load %struct.glyph*, %struct.glyph** %12, align 8
  %72 = getelementptr inbounds %struct.glyph, %struct.glyph* %71, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = fadd float %70, %73
  store float %74, float* %18, align 4
  %75 = load float, float* %13, align 4
  %76 = load float, float* %14, align 4
  %77 = call i32 @glTexCoord2f(float %75, float %76)
  %78 = load float, float* %17, align 4
  %79 = load float, float* %18, align 4
  %80 = load %struct.glyph*, %struct.glyph** %12, align 8
  %81 = getelementptr inbounds %struct.glyph, %struct.glyph* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = fsub float %79, %82
  %84 = call i32 @glVertex2f(float %78, float %83)
  %85 = load float, float* %15, align 4
  %86 = load float, float* %14, align 4
  %87 = call i32 @glTexCoord2f(float %85, float %86)
  %88 = load float, float* %17, align 4
  %89 = load %struct.glyph*, %struct.glyph** %12, align 8
  %90 = getelementptr inbounds %struct.glyph, %struct.glyph* %89, i32 0, i32 0
  %91 = load float, float* %90, align 8
  %92 = fadd float %88, %91
  %93 = load float, float* %18, align 4
  %94 = load %struct.glyph*, %struct.glyph** %12, align 8
  %95 = getelementptr inbounds %struct.glyph, %struct.glyph* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %93, %96
  %98 = call i32 @glVertex2f(float %92, float %97)
  %99 = load float, float* %15, align 4
  %100 = load float, float* %16, align 4
  %101 = call i32 @glTexCoord2f(float %99, float %100)
  %102 = load float, float* %17, align 4
  %103 = load %struct.glyph*, %struct.glyph** %12, align 8
  %104 = getelementptr inbounds %struct.glyph, %struct.glyph* %103, i32 0, i32 0
  %105 = load float, float* %104, align 8
  %106 = fadd float %102, %105
  %107 = load float, float* %18, align 4
  %108 = call i32 @glVertex2f(float %106, float %107)
  %109 = load float, float* %13, align 4
  %110 = load float, float* %16, align 4
  %111 = call i32 @glTexCoord2f(float %109, float %110)
  %112 = load float, float* %17, align 4
  %113 = load float, float* %18, align 4
  %114 = call i32 @glVertex2f(float %112, float %113)
  %115 = load i32, i32* @ctx, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call float @fz_advance_glyph(i32 %115, i32* %116, i32 %117, i32 0)
  %119 = load float, float* %8, align 4
  %120 = fmul float %118, %119
  store float %120, float* %6, align 4
  br label %121

121:                                              ; preds = %26, %25
  %122 = load float, float* %6, align 4
  ret float %122
}

declare dso_local %struct.glyph* @lookup_glyph(i32*, float, i32, float*, float*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex2f(float, float) #1

declare dso_local float @fz_advance_glyph(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
