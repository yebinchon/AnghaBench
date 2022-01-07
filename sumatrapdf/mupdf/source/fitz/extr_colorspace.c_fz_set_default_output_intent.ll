; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_set_default_output_intent.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_set_default_output_intent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Ignoring incompatible output intent: %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_set_default_output_intent(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @fz_drop_colorspace(i32* %7, i32* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 129, label %23
    i32 128, label %42
    i32 130, label %61
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fz_warn(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %80

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = call i8* @fz_keep_colorspace(i32* %24, %struct.TYPE_13__* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fz_device_gray(i32* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = call i32 @fz_set_default_gray(i32* %37, %struct.TYPE_12__* %38, %struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %36, %23
  br label %80

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = call i8* @fz_keep_colorspace(i32* %43, %struct.TYPE_13__* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fz_device_rgb(i32* %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = call i32 @fz_set_default_rgb(i32* %56, %struct.TYPE_12__* %57, %struct.TYPE_13__* %58)
  br label %60

60:                                               ; preds = %55, %42
  br label %80

61:                                               ; preds = %3
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i8* @fz_keep_colorspace(i32* %62, %struct.TYPE_13__* %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @fz_device_cmyk(i32* %71)
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = call i32 @fz_set_default_cmyk(i32* %75, %struct.TYPE_12__* %76, %struct.TYPE_13__* %77)
  br label %79

79:                                               ; preds = %74, %61
  br label %80

80:                                               ; preds = %79, %60, %41, %17
  ret void
}

declare dso_local i32 @fz_drop_colorspace(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i8* @fz_keep_colorspace(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @fz_device_gray(i32*) #1

declare dso_local i32 @fz_set_default_gray(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fz_device_rgb(i32*) #1

declare dso_local i32 @fz_set_default_rgb(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fz_device_cmyk(i32*) #1

declare dso_local i32 @fz_set_default_cmyk(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
