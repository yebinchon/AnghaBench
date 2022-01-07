; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_d1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_d1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, float, float)* @pdf_filter_d1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_filter_d1(i32* %0, i32* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %17, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %22 = call i32 @filter_flush(i32* %20, %struct.TYPE_4__* %21, i32 0)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)*, i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)** %26, align 8
  %28 = icmp ne i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)*, i32 (i32*, %struct.TYPE_5__*, float, float, float, float, float, float)** %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load float, float* %11, align 4
  %40 = load float, float* %12, align 4
  %41 = load float, float* %13, align 4
  %42 = load float, float* %14, align 4
  %43 = load float, float* %15, align 4
  %44 = load float, float* %16, align 4
  %45 = call i32 %34(i32* %35, %struct.TYPE_5__* %38, float %39, float %40, float %41, float %42, float %43, float %44)
  br label %46

46:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @filter_flush(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
