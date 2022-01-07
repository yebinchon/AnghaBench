; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_clip_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_clip_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**, i32, i32, i32, i32, i32)* }

@mid_Device_clipStrokeText = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)* @fz_java_device_clip_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_java_device_clip_stroke_text(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_10__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  store %struct.TYPE_10__** %22, %struct.TYPE_10__*** %14, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @to_Text(i32* %23, %struct.TYPE_10__** %24, i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @to_StrokeState(i32* %27, %struct.TYPE_10__** %28, i32* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @to_Matrix(i32* %31, %struct.TYPE_10__** %32, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_10__**, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_10__**, i32, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @mid_Device_clipStrokeText, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 %38(%struct.TYPE_10__** %39, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)** %50, align 8
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %53 = call i64 %51(%struct.TYPE_10__** %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %6
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %58 = call i32 @fz_throw_java(i32* %56, %struct.TYPE_10__** %57)
  br label %59

59:                                               ; preds = %55, %6
  ret void
}

declare dso_local i32 @to_Text(i32*, %struct.TYPE_10__**, i32*) #1

declare dso_local i32 @to_StrokeState(i32*, %struct.TYPE_10__**, i32*) #1

declare dso_local i32 @to_Matrix(i32*, %struct.TYPE_10__**, i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
