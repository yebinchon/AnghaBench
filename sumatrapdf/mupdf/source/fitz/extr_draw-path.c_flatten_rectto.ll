; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_flatten_rectto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_flatten_rectto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float, float, float)* @flatten_rectto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_rectto(i32* %0, i8* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_3__, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %13, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_3__* %14 to i8*
  %28 = bitcast %struct.TYPE_3__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 24, i1 false)
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load float, float* %9, align 4
  %32 = load float, float* %10, align 4
  %33 = call i32 @flatten_moveto(i32* %29, i8* %30, float %31, float %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fz_antidropout_rasterizer(i32* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %134

40:                                               ; preds = %6
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fcmp oeq float %46, 0.000000e+00
  br i1 %47, label %48, label %86

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = load float, float* %9, align 4
  %52 = fmul float %50, %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %54 = load float, float* %53, align 4
  %55 = fadd float %52, %54
  store float %55, float* %15, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %57 = load float, float* %56, align 4
  %58 = load float, float* %10, align 4
  %59 = fmul float %57, %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %61 = load float, float* %60, align 4
  %62 = fadd float %59, %61
  store float %62, float* %16, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %64 = load float, float* %63, align 4
  %65 = load float, float* %11, align 4
  %66 = fmul float %64, %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %68 = load float, float* %67, align 4
  %69 = fadd float %66, %68
  store float %69, float* %17, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %71 = load float, float* %70, align 4
  %72 = load float, float* %12, align 4
  %73 = fmul float %71, %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %75 = load float, float* %74, align 4
  %76 = fadd float %73, %75
  store float %76, float* %18, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load float, float* %15, align 4
  %82 = load float, float* %16, align 4
  %83 = load float, float* %17, align 4
  %84 = load float, float* %18, align 4
  %85 = call i32 @fz_insert_rasterizer_rect(i32* %77, i32 %80, float %81, float %82, float %83, float %84)
  br label %153

86:                                               ; preds = %44, %40
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %88 = load float, float* %87, align 4
  %89 = fcmp oeq float %88, 0.000000e+00
  br i1 %89, label %90, label %132

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %92 = load float, float* %91, align 4
  %93 = fcmp oeq float %92, 0.000000e+00
  br i1 %93, label %94, label %132

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = load float, float* %10, align 4
  %98 = fmul float %96, %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %100 = load float, float* %99, align 4
  %101 = fadd float %98, %100
  store float %101, float* %19, align 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %103 = load float, float* %102, align 4
  %104 = load float, float* %9, align 4
  %105 = fmul float %103, %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %107 = load float, float* %106, align 4
  %108 = fadd float %105, %107
  store float %108, float* %20, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = load float, float* %12, align 4
  %112 = fmul float %110, %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %114 = load float, float* %113, align 4
  %115 = fadd float %112, %114
  store float %115, float* %21, align 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = load float, float* %11, align 4
  %119 = fmul float %117, %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %121 = load float, float* %120, align 4
  %122 = fadd float %119, %121
  store float %122, float* %22, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load float, float* %19, align 4
  %128 = load float, float* %22, align 4
  %129 = load float, float* %21, align 4
  %130 = load float, float* %20, align 4
  %131 = call i32 @fz_insert_rasterizer_rect(i32* %123, i32 %126, float %127, float %128, float %129, float %130)
  br label %153

132:                                              ; preds = %90, %86
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %6
  %135 = load i32*, i32** %7, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load float, float* %11, align 4
  %138 = load float, float* %10, align 4
  %139 = call i32 @flatten_lineto(i32* %135, i8* %136, float %137, float %138)
  %140 = load i32*, i32** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load float, float* %11, align 4
  %143 = load float, float* %12, align 4
  %144 = call i32 @flatten_lineto(i32* %140, i8* %141, float %142, float %143)
  %145 = load i32*, i32** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load float, float* %9, align 4
  %148 = load float, float* %12, align 4
  %149 = call i32 @flatten_lineto(i32* %145, i8* %146, float %147, float %148)
  %150 = load i32*, i32** %7, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @flatten_close(i32* %150, i8* %151)
  br label %153

153:                                              ; preds = %134, %94, %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @flatten_moveto(i32*, i8*, float, float) #2

declare dso_local i64 @fz_antidropout_rasterizer(i32*, i32) #2

declare dso_local i32 @fz_insert_rasterizer_rect(i32*, i32, float, float, float, float) #2

declare dso_local i32 @flatten_lineto(i32*, i8*, float, float) #2

declare dso_local i32 @flatten_close(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
