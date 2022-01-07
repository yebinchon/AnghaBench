; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_flatten_fill_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_flatten_fill_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i32* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@flatten_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_flatten_fill_path(i32* %0, i32* %1, i32* %2, i8* %3, float %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store float %4, float* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @fz_reset_rasterizer(i32* %17, i32* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %7
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i32* %24, i32** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load float, float* %13, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store float %28, float* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @fz_walk_path(i32* %38, i32* %39, i32* @flatten_proc, %struct.TYPE_7__* %16)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48, %23
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @line(i32* %57, i32* %58, i8* %59, i64 %62, i64 %65, i64 %68, i64 %71)
  br label %73

73:                                               ; preds = %56, %48
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @fz_gap_rasterizer(i32* %74, i32* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @fz_postindex_rasterizer(i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %73, %7
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i32* %81, i32** %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i8* %83, i8** %84, align 8
  %85 = load float, float* %13, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store float %85, float* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @fz_walk_path(i32* %95, i32* %96, i32* @flatten_proc, %struct.TYPE_7__* %16)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %105, %80
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @line(i32* %114, i32* %115, i8* %116, i64 %119, i64 %122, i64 %125, i64 %128)
  br label %130

130:                                              ; preds = %113, %105
  %131 = load i32*, i32** %9, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @fz_gap_rasterizer(i32* %131, i32* %132)
  %134 = load i32*, i32** %15, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %148

137:                                              ; preds = %130
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @fz_bound_rasterizer(i32* %138, i32* %139)
  %141 = load i32*, i32** %15, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fz_intersect_irect(i32 %143, i32 %145)
  %147 = call i32 @fz_is_empty_irect(i32 %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %137, %136
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i64 @fz_reset_rasterizer(i32*, i32*, i32) #1

declare dso_local i32 @fz_walk_path(i32*, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @line(i32*, i32*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @fz_gap_rasterizer(i32*, i32*) #1

declare dso_local i32 @fz_postindex_rasterizer(i32*, i32*) #1

declare dso_local i32 @fz_bound_rasterizer(i32*, i32*) #1

declare dso_local i32 @fz_is_empty_irect(i32) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
