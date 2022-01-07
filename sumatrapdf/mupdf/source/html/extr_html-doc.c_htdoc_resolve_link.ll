; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-doc.c_htdoc_resolve_link.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-doc.c_htdoc_resolve_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, float*, float*)* @htdoc_resolve_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htdoc_resolve_link(i32* %0, i32* %1, i8* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 35)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %5
  %23 = load i8*, i8** %13, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call float @fz_find_html_target(i32* %29, %struct.TYPE_4__* %32, i8* %34)
  store float %35, float* %14, align 4
  %36 = load float, float* %14, align 4
  %37 = fcmp oge float %36, 0.000000e+00
  br i1 %37, label %38, label %64

38:                                               ; preds = %28
  %39 = load float, float* %14, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fdiv float %39, %44
  %46 = fptosi float %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load float*, float** %11, align 8
  %48 = icmp ne float* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load float, float* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sitofp i32 %51 to float
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %52, %57
  %59 = fsub float %50, %58
  %60 = load float*, float** %11, align 8
  store float %59, float* %60, align 4
  br label %61

61:                                               ; preds = %49, %38
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @fz_make_location(i32 0, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64, %22, %5
  %66 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local float @fz_find_html_target(i32*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
