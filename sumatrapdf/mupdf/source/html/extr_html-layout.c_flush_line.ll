; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_flush_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_flush_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float, float, float, i32, float, i32*, i32*)* @flush_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_line(i32* %0, %struct.TYPE_4__* %1, float %2, float %3, float %4, i32 %5, float %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = load i32*, i32** %18, align 8
  %24 = call float @measure_line(i32* %22, i32* %23, float* %21)
  store float %24, float* %20, align 4
  %25 = load float, float* %12, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %45

27:                                               ; preds = %9
  %28 = load float, float* %12, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = load float, float* %12, align 4
  %33 = call float @fmodf(float %31, float %32) #3
  %34 = fsub float %28, %33
  store float %34, float* %19, align 4
  %35 = load float, float* %20, align 4
  %36 = load float, float* %19, align 4
  %37 = fcmp ogt float %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load float, float* %19, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fadd float %42, %39
  store float %43, float* %41, align 4
  br label %44

44:                                               ; preds = %38, %27
  br label %45

45:                                               ; preds = %44, %9
  %46 = load i32*, i32** %10, align 8
  %47 = load float, float* %16, align 4
  %48 = load float, float* %13, align 4
  %49 = load float, float* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = load float, float* %21, align 4
  %55 = load float, float* %20, align 4
  %56 = call i32 @layout_line(i32* %46, float %47, float %48, float %49, i32 %50, i32* %51, i32* %52, %struct.TYPE_4__* %53, float %54, float %55)
  %57 = load float, float* %20, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fadd float %60, %57
  store float %61, float* %59, align 4
  ret void
}

declare dso_local float @measure_line(i32*, i32*, float*) #1

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #2

declare dso_local i32 @layout_line(i32*, float, float, float, i32, i32*, i32*, %struct.TYPE_4__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
