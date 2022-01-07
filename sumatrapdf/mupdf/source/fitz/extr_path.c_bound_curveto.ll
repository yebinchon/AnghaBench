; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_bound_curveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_bound_curveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float, float, float, float, float)* @bound_curveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bound_curveto(i32* %0, i8* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca %struct.TYPE_6__, align 4
  %20 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %17, align 8
  %23 = load float, float* %11, align 4
  %24 = load float, float* %12, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @fz_transform_point_xy(float %23, float %24, i32 %27)
  %29 = bitcast %struct.TYPE_6__* %18 to i64*
  store i64 %28, i64* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i32 %36, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  br label %59

53:                                               ; preds = %8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_6__* %18 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @bound_expand(%struct.TYPE_8__* %55, i64 %57)
  br label %59

59:                                               ; preds = %53, %34
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load float, float* %13, align 4
  %63 = load float, float* %14, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @fz_transform_point_xy(float %62, float %63, i32 %66)
  %68 = bitcast %struct.TYPE_6__* %19 to i64*
  store i64 %67, i64* %68, align 4
  %69 = bitcast %struct.TYPE_6__* %19 to i64*
  %70 = load i64, i64* %69, align 4
  %71 = call i32 @bound_expand(%struct.TYPE_8__* %61, i64 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load float, float* %15, align 4
  %75 = load float, float* %16, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @fz_transform_point_xy(float %74, float %75, i32 %78)
  %80 = bitcast %struct.TYPE_6__* %20 to i64*
  store i64 %79, i64* %80, align 4
  %81 = bitcast %struct.TYPE_6__* %20 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @bound_expand(%struct.TYPE_8__* %73, i64 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %59
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = bitcast %struct.TYPE_6__* %94 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @bound_expand(%struct.TYPE_8__* %92, i64 %96)
  br label %98

98:                                               ; preds = %88, %59
  ret void
}

declare dso_local i64 @fz_transform_point_xy(float, float, i32) #1

declare dso_local i32 @bound_expand(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
