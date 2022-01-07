; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_gs_SMask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_gs_SMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, float*, i32)* @pdf_filter_gs_SMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_filter_gs_SMask(i32* %0, i32* %1, i32* %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %13, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)*, i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)** %19, align 8
  %21 = icmp ne i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)*, i32 (i32*, %struct.TYPE_4__*, i32*, i32*, float*, i32)** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load float*, float** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 %27(i32* %28, %struct.TYPE_4__* %31, i32* %32, i32* %33, float* %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
