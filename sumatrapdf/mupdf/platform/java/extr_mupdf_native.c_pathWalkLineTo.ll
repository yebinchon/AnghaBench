; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_pathWalkLineTo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_pathWalkLineTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__**)*, i32 (%struct.TYPE_7__**, i32, i32, float, float)* }

@mid_PathWalker_lineTo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float)* @pathWalkLineTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pathWalkLineTo(i32* %0, i8* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  store %struct.TYPE_7__** %15, %struct.TYPE_7__*** %10, align 8
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_7__**, i32, i32, float, float)*, i32 (%struct.TYPE_7__**, i32, i32, float, float)** %18, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @mid_PathWalker_lineTo, align 4
  %25 = load float, float* %7, align 4
  %26 = load float, float* %8, align 4
  %27 = call i32 %19(%struct.TYPE_7__** %20, i32 %23, i32 %24, float %25, float %26)
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_7__**)*, i64 (%struct.TYPE_7__**)** %30, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %33 = call i64 %31(%struct.TYPE_7__** %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %38 = call i32 @fz_throw_java(i32* %36, %struct.TYPE_7__** %37)
  br label %39

39:                                               ; preds = %35, %4
  ret void
}

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
