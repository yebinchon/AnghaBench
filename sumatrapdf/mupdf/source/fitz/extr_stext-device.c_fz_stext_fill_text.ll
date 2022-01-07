; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_11__*, i32, i32*, float*, float, i32)* @fz_stext_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stext_fill_text(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %17, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp eq %struct.TYPE_11__* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %63

27:                                               ; preds = %8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load float*, float** %14, align 8
  %31 = call i32 @hexrgb_from_color(i32* %28, i32* %29, float* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %18, align 8
  br label %39

39:                                               ; preds = %48, %27
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @fz_stext_extract(i32* %43, %struct.TYPE_12__* %44, %struct.TYPE_10__* %45, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %18, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = call i32 @fz_drop_text(i32* %53, %struct.TYPE_11__* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = call %struct.TYPE_11__* @fz_keep_text(i32* %58, %struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  br label %63

63:                                               ; preds = %52, %26
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
