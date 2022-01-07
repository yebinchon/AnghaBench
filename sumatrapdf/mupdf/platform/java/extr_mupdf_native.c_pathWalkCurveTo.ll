; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_pathWalkCurveTo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_pathWalkCurveTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__**)*, i32 (%struct.TYPE_7__**, i32, i32, float, float, float, float, float, float)* }

@mid_PathWalker_curveTo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float, float, float, float, float)* @pathWalkCurveTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pathWalkCurveTo(i32* %0, i8* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_7__**, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %17, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %22, align 8
  store %struct.TYPE_7__** %23, %struct.TYPE_7__*** %18, align 8
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_7__**, i32, i32, float, float, float, float, float, float)*, i32 (%struct.TYPE_7__**, i32, i32, float, float, float, float, float, float)** %26, align 8
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @mid_PathWalker_curveTo, align 4
  %33 = load float, float* %11, align 4
  %34 = load float, float* %12, align 4
  %35 = load float, float* %13, align 4
  %36 = load float, float* %14, align 4
  %37 = load float, float* %15, align 4
  %38 = load float, float* %16, align 4
  %39 = call i32 %27(%struct.TYPE_7__** %28, i32 %31, i32 %32, float %33, float %34, float %35, float %36, float %37, float %38)
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_7__**)*, i64 (%struct.TYPE_7__**)** %42, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %45 = call i64 %43(%struct.TYPE_7__** %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %50 = call i32 @fz_throw_java(i32* %48, %struct.TYPE_7__** %49)
  br label %51

51:                                               ; preds = %47, %8
  ret void
}

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
