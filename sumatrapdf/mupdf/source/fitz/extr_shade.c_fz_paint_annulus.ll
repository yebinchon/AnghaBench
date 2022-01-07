; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_paint_annulus.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_paint_annulus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i8* }

@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64, i64, float, float, i64, i64, float, float, i32, i32*)* @fz_paint_annulus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_paint_annulus(i32* %0, i32 %1, i64 %2, i64 %3, float %4, float %5, i64 %6, i64 %7, float %8, float %9, i32 %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_11__, align 8
  %24 = alloca %struct.TYPE_11__, align 8
  %25 = alloca %struct.TYPE_11__, align 8
  %26 = alloca %struct.TYPE_11__, align 8
  %27 = alloca %struct.TYPE_11__, align 8
  %28 = alloca %struct.TYPE_11__, align 8
  %29 = alloca %struct.TYPE_11__, align 8
  %30 = alloca %struct.TYPE_11__, align 8
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  store i64 %2, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  store i64 %3, i64* %38, align 8
  %39 = bitcast %struct.TYPE_12__* %14 to { i64, i64 }*
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 0
  store i64 %6, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 1
  store i64 %7, i64* %41, align 8
  store i32* %0, i32** %15, align 8
  store i32 %1, i32* %16, align 4
  store float %4, float* %17, align 4
  store float %5, float* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  store i32 %10, i32* %21, align 4
  store i32* %11, i32** %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %48, %50
  %52 = call float @atan2f(i64 %46, i64 %51)
  store float %52, float* %31, align 4
  %53 = load i32, i32* @FZ_PI, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sdiv i32 %53, %54
  %56 = sitofp i32 %55 to float
  store float %56, float* %32, align 4
  store float 0.000000e+00, float* %33, align 4
  store i32 1, i32* %35, align 4
  br label %57

57:                                               ; preds = %201, %12
  %58 = load i32, i32* %35, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %204

61:                                               ; preds = %57
  %62 = load i32, i32* %35, align 4
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %32, align 4
  %65 = fmul float %63, %64
  store float %65, float* %34, align 4
  %66 = load float, float* %17, align 4
  %67 = load float, float* %31, align 4
  %68 = load float, float* %33, align 4
  %69 = fadd float %67, %68
  %70 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @fz_point_on_circle(i64 %72, i64 %74, float %66, float %69)
  %76 = load i32, i32* %16, align 4
  %77 = call i8* @fz_transform_point(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load float, float* %17, align 4
  %80 = load float, float* %31, align 4
  %81 = load float, float* %34, align 4
  %82 = fadd float %80, %81
  %83 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @fz_point_on_circle(i64 %85, i64 %87, float %79, float %82)
  %89 = load i32, i32* %16, align 4
  %90 = call i8* @fz_transform_point(i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load float, float* %19, align 4
  %93 = load float, float* %31, align 4
  %94 = load float, float* %33, align 4
  %95 = fadd float %93, %94
  %96 = bitcast %struct.TYPE_12__* %14 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @fz_point_on_circle(i64 %98, i64 %100, float %92, float %95)
  %102 = load i32, i32* %16, align 4
  %103 = call i8* @fz_transform_point(i32 %101, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i8* %103, i8** %104, align 8
  %105 = load float, float* %19, align 4
  %106 = load float, float* %31, align 4
  %107 = load float, float* %34, align 4
  %108 = fadd float %106, %107
  %109 = bitcast %struct.TYPE_12__* %14 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @fz_point_on_circle(i64 %111, i64 %113, float %105, float %108)
  %115 = load i32, i32* %16, align 4
  %116 = call i8* @fz_transform_point(i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load float, float* %17, align 4
  %119 = load float, float* %31, align 4
  %120 = load float, float* %33, align 4
  %121 = fsub float %119, %120
  %122 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @fz_point_on_circle(i64 %124, i64 %126, float %118, float %121)
  %128 = load i32, i32* %16, align 4
  %129 = call i8* @fz_transform_point(i32 %127, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i8* %129, i8** %130, align 8
  %131 = load float, float* %17, align 4
  %132 = load float, float* %31, align 4
  %133 = load float, float* %34, align 4
  %134 = fsub float %132, %133
  %135 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @fz_point_on_circle(i64 %137, i64 %139, float %131, float %134)
  %141 = load i32, i32* %16, align 4
  %142 = call i8* @fz_transform_point(i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i8* %142, i8** %143, align 8
  %144 = load float, float* %19, align 4
  %145 = load float, float* %31, align 4
  %146 = load float, float* %33, align 4
  %147 = fsub float %145, %146
  %148 = bitcast %struct.TYPE_12__* %14 to { i64, i64 }*
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @fz_point_on_circle(i64 %150, i64 %152, float %144, float %147)
  %154 = load i32, i32* %16, align 4
  %155 = call i8* @fz_transform_point(i32 %153, i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i8* %155, i8** %156, align 8
  %157 = load float, float* %19, align 4
  %158 = load float, float* %31, align 4
  %159 = load float, float* %34, align 4
  %160 = fsub float %158, %159
  %161 = bitcast %struct.TYPE_12__* %14 to { i64, i64 }*
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @fz_point_on_circle(i64 %163, i64 %165, float %157, float %160)
  %167 = load i32, i32* %16, align 4
  %168 = call i8* @fz_transform_point(i32 %166, i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i8* %168, i8** %169, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = load i32*, i32** %22, align 8
  %172 = call i32 @fz_prepare_color(i32* %170, i32* %171, %struct.TYPE_11__* %23, float* %18)
  %173 = load i32*, i32** %15, align 8
  %174 = load i32*, i32** %22, align 8
  %175 = call i32 @fz_prepare_color(i32* %173, i32* %174, %struct.TYPE_11__* %24, float* %18)
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %22, align 8
  %178 = call i32 @fz_prepare_color(i32* %176, i32* %177, %struct.TYPE_11__* %25, float* %20)
  %179 = load i32*, i32** %15, align 8
  %180 = load i32*, i32** %22, align 8
  %181 = call i32 @fz_prepare_color(i32* %179, i32* %180, %struct.TYPE_11__* %26, float* %20)
  %182 = load i32*, i32** %15, align 8
  %183 = load i32*, i32** %22, align 8
  %184 = call i32 @fz_prepare_color(i32* %182, i32* %183, %struct.TYPE_11__* %27, float* %18)
  %185 = load i32*, i32** %15, align 8
  %186 = load i32*, i32** %22, align 8
  %187 = call i32 @fz_prepare_color(i32* %185, i32* %186, %struct.TYPE_11__* %28, float* %18)
  %188 = load i32*, i32** %15, align 8
  %189 = load i32*, i32** %22, align 8
  %190 = call i32 @fz_prepare_color(i32* %188, i32* %189, %struct.TYPE_11__* %29, float* %20)
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = call i32 @fz_prepare_color(i32* %191, i32* %192, %struct.TYPE_11__* %30, float* %20)
  %194 = load i32*, i32** %15, align 8
  %195 = load i32*, i32** %22, align 8
  %196 = call i32 @paint_quad(i32* %194, i32* %195, %struct.TYPE_11__* %23, %struct.TYPE_11__* %25, %struct.TYPE_11__* %26, %struct.TYPE_11__* %24)
  %197 = load i32*, i32** %15, align 8
  %198 = load i32*, i32** %22, align 8
  %199 = call i32 @paint_quad(i32* %197, i32* %198, %struct.TYPE_11__* %27, %struct.TYPE_11__* %29, %struct.TYPE_11__* %30, %struct.TYPE_11__* %28)
  %200 = load float, float* %34, align 4
  store float %200, float* %33, align 4
  br label %201

201:                                              ; preds = %61
  %202 = load i32, i32* %35, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %35, align 4
  br label %57

204:                                              ; preds = %57
  ret void
}

declare dso_local float @atan2f(i64, i64) #1

declare dso_local i8* @fz_transform_point(i32, i32) #1

declare dso_local i32 @fz_point_on_circle(i64, i64, float, float) #1

declare dso_local i32 @fz_prepare_color(i32*, i32*, %struct.TYPE_11__*, float*) #1

declare dso_local i32 @paint_quad(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
