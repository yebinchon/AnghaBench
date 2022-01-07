; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_convert_pixmap_for_painting.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_convert_pixmap_for_painting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, i64 }
%struct.TYPE_14__ = type { i32 }

@FZ_COLORSPACE_CMYK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_13__*, i32*, i32*, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32**)* @convert_pixmap_for_painting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @convert_pixmap_for_painting(i32* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3, %struct.TYPE_13__* %4, i32 %5, %struct.TYPE_14__* %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %15, align 8
  store i32** %7, i32*** %16, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i64 @fz_colorspace_is_device_n(i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_13__* @fz_clone_pixmap_area_with_different_seps(i32* %30, %struct.TYPE_13__* %31, i32* null, i32* %32, i64 %35, i32 %36, i32 %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %17, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32**, i32*** %16, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32* @set_op_from_spaces(i32* %41, i32* %43, %struct.TYPE_13__* %44, i32* %45, i32 0)
  %47 = load i32**, i32*** %16, align 8
  store i32* %46, i32** %47, align 8
  br label %107

48:                                               ; preds = %24, %8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.TYPE_13__* @fz_convert_pixmap(i32* %49, %struct.TYPE_13__* %50, i32* %51, i32* null, i32 %54, i32 %55, i32 1)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %17, align 8
  %57 = load i32**, i32*** %16, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %48
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i64 @fz_colorspace_type(i32* %61, i32* %62)
  %64 = load i64, i64* @FZ_COLORSPACE_CMYK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32**, i32*** %16, align 8
  store i32* null, i32** %67, align 8
  br label %105

68:                                               ; preds = %60
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @fz_colorspace_is_device_n(i32* %69, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %19, align 4
  store i32 4, i32* %18, align 4
  br label %83

83:                                               ; preds = %92, %75
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32**, i32*** %16, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @fz_set_overprint(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %83

95:                                               ; preds = %83
  br label %104

96:                                               ; preds = %68
  %97 = load i32*, i32** %9, align 8
  %98 = load i32**, i32*** %16, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32* @set_op_from_spaces(i32* %97, i32* %99, %struct.TYPE_13__* %100, i32* %101, i32 0)
  %103 = load i32**, i32*** %16, align 8
  store i32* %102, i32** %103, align 8
  br label %104

104:                                              ; preds = %96, %95
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %48
  br label %107

107:                                              ; preds = %106, %29
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = call i32 @fz_drop_pixmap(i32* %108, %struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  ret %struct.TYPE_13__* %111
}

declare dso_local i64 @fz_colorspace_is_device_n(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @fz_clone_pixmap_area_with_different_seps(i32*, %struct.TYPE_13__*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32* @set_op_from_spaces(i32*, i32*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @fz_convert_pixmap(i32*, %struct.TYPE_13__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @fz_colorspace_type(i32*, i32*) #1

declare dso_local i32 @fz_set_overprint(i32*, i32) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
