; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_11__*, i32*, i32, i32*, float*, float, i32)* @fz_stext_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stext_stroke_text(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %19, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp eq %struct.TYPE_11__* %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  br label %65

29:                                               ; preds = %9
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load float*, float** %16, align 8
  %33 = call i32 @hexrgb_from_color(i32* %30, i32* %31, float* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %20, align 8
  br label %41

41:                                               ; preds = %50, %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @fz_stext_extract(i32* %45, %struct.TYPE_12__* %46, %struct.TYPE_10__* %47, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %20, align 8
  br label %41

54:                                               ; preds = %41
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @fz_drop_text(i32* %55, %struct.TYPE_11__* %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = call %struct.TYPE_11__* @fz_keep_text(i32* %60, %struct.TYPE_11__* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %64, align 8
  br label %65

65:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @hexrgb_from_color(i32*, i32*, float*) #1

declare dso_local i32 @fz_stext_extract(i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @fz_drop_text(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @fz_keep_text(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
