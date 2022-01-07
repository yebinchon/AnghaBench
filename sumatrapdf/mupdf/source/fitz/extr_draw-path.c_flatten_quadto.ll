; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_flatten_quadto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_flatten_quadto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float, float, float)* @flatten_quadto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_quadto(i32* %0, i8* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = load float, float* %9, align 4
  %35 = load float, float* %10, align 4
  %36 = load float, float* %11, align 4
  %37 = load float, float* %12, align 4
  %38 = call i32 @quad(i32* %16, i32 %19, i32 %22, i32 %25, float %29, float %33, float %34, float %35, float %36, float %37, i32 0)
  %39 = load float, float* %11, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store float %39, float* %42, align 4
  %43 = load float, float* %12, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store float %43, float* %46, align 4
  ret void
}

declare dso_local i32 @quad(i32*, i32, i32, i32, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
