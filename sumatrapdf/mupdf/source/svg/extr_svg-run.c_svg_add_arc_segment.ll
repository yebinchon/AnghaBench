; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_add_arc_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_add_arc_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, float, float, i32)* @svg_add_arc_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_add_arc_segment(i32* %0, i32* %1, i32 %2, float %3, float %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca %struct.TYPE_3__, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %18

18:                                               ; preds = %22, %6
  %19 = load float, float* %11, align 4
  %20 = load float, float* %10, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @FZ_PI, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sitofp i32 %24 to float
  %26 = load float, float* %11, align 4
  %27 = fadd float %26, %25
  store float %27, float* %11, align 4
  br label %18

28:                                               ; preds = %18
  %29 = load i32, i32* @FZ_PI, align 4
  %30 = sdiv i32 %29, 180
  %31 = sitofp i32 %30 to float
  store float %31, float* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load float, float* %10, align 4
  %36 = load float, float* %14, align 4
  %37 = fadd float %35, %36
  store float %37, float* %13, align 4
  br label %38

38:                                               ; preds = %62, %34
  %39 = load float, float* %13, align 4
  %40 = load float, float* %11, align 4
  %41 = load float, float* %14, align 4
  %42 = fdiv float %41, 2.000000e+00
  %43 = fsub float %40, %42
  %44 = fcmp olt float %39, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load float, float* %13, align 4
  %47 = call i32 @cosf(float %46)
  %48 = load float, float* %13, align 4
  %49 = call i32 @sinf(float %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @fz_transform_point_xy(i32 %47, i32 %49, i32 %50)
  %52 = bitcast %struct.TYPE_3__* %16 to i64*
  store i64 %51, i64* %52, align 4
  %53 = bitcast %struct.TYPE_3__* %15 to i8*
  %54 = bitcast %struct.TYPE_3__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 8, i1 false)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fz_lineto(i32* %55, i32* %56, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %45
  %63 = load float, float* %14, align 4
  %64 = load float, float* %13, align 4
  %65 = fadd float %64, %63
  store float %65, float* %13, align 4
  br label %38

66:                                               ; preds = %38
  br label %105

67:                                               ; preds = %28
  %68 = load i32, i32* @FZ_PI, align 4
  %69 = mul nsw i32 %68, 2
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %10, align 4
  %72 = fadd float %71, %70
  store float %72, float* %10, align 4
  %73 = load float, float* %10, align 4
  %74 = load float, float* %14, align 4
  %75 = fsub float %73, %74
  store float %75, float* %13, align 4
  br label %76

76:                                               ; preds = %100, %67
  %77 = load float, float* %13, align 4
  %78 = load float, float* %11, align 4
  %79 = load float, float* %14, align 4
  %80 = fdiv float %79, 2.000000e+00
  %81 = fadd float %78, %80
  %82 = fcmp ogt float %77, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load float, float* %13, align 4
  %85 = call i32 @cosf(float %84)
  %86 = load float, float* %13, align 4
  %87 = call i32 @sinf(float %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @fz_transform_point_xy(i32 %85, i32 %87, i32 %88)
  %90 = bitcast %struct.TYPE_3__* %17 to i64*
  store i64 %89, i64* %90, align 4
  %91 = bitcast %struct.TYPE_3__* %15 to i8*
  %92 = bitcast %struct.TYPE_3__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fz_lineto(i32* %93, i32* %94, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %83
  %101 = load float, float* %14, align 4
  %102 = load float, float* %13, align 4
  %103 = fsub float %102, %101
  store float %103, float* %13, align 4
  br label %76

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %66
  ret void
}

declare dso_local i64 @fz_transform_point_xy(i32, i32, i32) #1

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @sinf(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_lineto(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
