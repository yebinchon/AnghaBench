; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_draw_arc_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_draw_arc_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, float, float, i32)* @xps_draw_arc_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_draw_arc_segment(i32* %0, i32* %1, i32* %2, i32 %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %20

20:                                               ; preds = %24, %7
  %21 = load float, float* %13, align 4
  %22 = load float, float* %12, align 4
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @FZ_PI, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sitofp i32 %26 to float
  %28 = load float, float* %13, align 4
  %29 = fadd float %28, %27
  store float %29, float* %13, align 4
  br label %20

30:                                               ; preds = %20
  %31 = load i32, i32* @FZ_PI, align 4
  %32 = sdiv i32 %31, 180
  %33 = sitofp i32 %32 to float
  store float %33, float* %16, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load float, float* %12, align 4
  %38 = load float, float* %16, align 4
  %39 = fadd float %37, %38
  store float %39, float* %15, align 4
  br label %40

40:                                               ; preds = %64, %36
  %41 = load float, float* %15, align 4
  %42 = load float, float* %13, align 4
  %43 = load float, float* %16, align 4
  %44 = fdiv float %43, 2.000000e+00
  %45 = fsub float %42, %44
  %46 = fcmp olt float %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load float, float* %15, align 4
  %49 = call i32 @cosf(float %48)
  %50 = load float, float* %15, align 4
  %51 = call i32 @sinf(float %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @fz_transform_point_xy(i32 %49, i32 %51, i32 %52)
  %54 = bitcast %struct.TYPE_3__* %18 to i64*
  store i64 %53, i64* %54, align 4
  %55 = bitcast %struct.TYPE_3__* %17 to i8*
  %56 = bitcast %struct.TYPE_3__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fz_lineto(i32* %57, i32* %58, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %47
  %65 = load float, float* %16, align 4
  %66 = load float, float* %15, align 4
  %67 = fadd float %66, %65
  store float %67, float* %15, align 4
  br label %40

68:                                               ; preds = %40
  br label %107

69:                                               ; preds = %30
  %70 = load i32, i32* @FZ_PI, align 4
  %71 = mul nsw i32 %70, 2
  %72 = sitofp i32 %71 to float
  %73 = load float, float* %12, align 4
  %74 = fadd float %73, %72
  store float %74, float* %12, align 4
  %75 = load float, float* %12, align 4
  %76 = load float, float* %16, align 4
  %77 = fsub float %75, %76
  store float %77, float* %15, align 4
  br label %78

78:                                               ; preds = %102, %69
  %79 = load float, float* %15, align 4
  %80 = load float, float* %13, align 4
  %81 = load float, float* %16, align 4
  %82 = fdiv float %81, 2.000000e+00
  %83 = fadd float %80, %82
  %84 = fcmp ogt float %79, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %78
  %86 = load float, float* %15, align 4
  %87 = call i32 @cosf(float %86)
  %88 = load float, float* %15, align 4
  %89 = call i32 @sinf(float %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @fz_transform_point_xy(i32 %87, i32 %89, i32 %90)
  %92 = bitcast %struct.TYPE_3__* %19 to i64*
  store i64 %91, i64* %92, align 4
  %93 = bitcast %struct.TYPE_3__* %17 to i8*
  %94 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @fz_lineto(i32* %95, i32* %96, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %85
  %103 = load float, float* %16, align 4
  %104 = load float, float* %15, align 4
  %105 = fsub float %104, %103
  store float %105, float* %15, align 4
  br label %78

106:                                              ; preds = %78
  br label %107

107:                                              ; preds = %106, %68
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
