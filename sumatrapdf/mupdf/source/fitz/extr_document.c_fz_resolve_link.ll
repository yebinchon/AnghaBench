; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_resolve_link.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_resolve_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_resolve_link(i32* %0, %struct.TYPE_5__* %1, i8* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = call i32 @fz_ensure_layout(i32* %12, %struct.TYPE_5__* %13)
  %15 = load float*, float** %10, align 8
  %16 = icmp ne float* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load float*, float** %10, align 8
  store float 0.000000e+00, float* %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = load float*, float** %11, align 8
  %21 = icmp ne float* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load float*, float** %11, align 8
  store float 0.000000e+00, float* %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)**
  %31 = load i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)*, i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)** %30, align 8
  %32 = icmp ne i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)**
  %37 = load i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)*, i32 (i32*, %struct.TYPE_5__*, i8*, float*, float*)** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load float*, float** %10, align 8
  %42 = load float*, float** %11, align 8
  %43 = call i32 %37(i32* %38, %struct.TYPE_5__* %39, i8* %40, float* %41, float* %42)
  store i32 %43, i32* %6, align 4
  br label %46

44:                                               ; preds = %27, %24
  %45 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @fz_ensure_layout(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
