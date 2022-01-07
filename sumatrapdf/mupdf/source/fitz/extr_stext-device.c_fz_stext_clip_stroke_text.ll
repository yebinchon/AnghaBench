; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_clip_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_clip_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_11__*, i32*, i32, i32)* @fz_stext_clip_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stext_clip_stroke_text(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %13, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %55

23:                                               ; preds = %6
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %14, align 8
  br label %31

31:                                               ; preds = %40, %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @fz_stext_extract(i32* %35, %struct.TYPE_12__* %36, %struct.TYPE_10__* %37, i32 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %14, align 8
  br label %31

44:                                               ; preds = %31
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @fz_drop_text(i32* %45, %struct.TYPE_11__* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = call %struct.TYPE_11__* @fz_keep_text(i32* %50, %struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  br label %55

55:                                               ; preds = %44, %22
  ret void
}

declare dso_local i32 @fz_stext_extract(i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @fz_drop_text(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @fz_keep_text(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
