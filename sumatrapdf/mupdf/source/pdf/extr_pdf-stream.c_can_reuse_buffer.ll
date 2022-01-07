; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_can_reuse_buffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_can_reuse_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@FZ_IMAGE_RAW = common dso_local global i64 0, align 8
@Filter = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@DecodeParms = common dso_local global i32 0, align 4
@DP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_7__*)* @can_reuse_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_reuse_buffer(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %13, %3
  store i32 0, i32* %4, align 4
  br label %102

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @FZ_IMAGE_RAW, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @Filter, align 4
  %37 = call i32 @PDF_NAME(i32 %36)
  %38 = load i32, i32* @F, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32* @pdf_dict_geta(i32* %32, i32 %35, i32 %37, i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %102

44:                                               ; preds = %31
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DecodeParms, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = load i32, i32* @DP, align 4
  %52 = call i32 @PDF_NAME(i32 %51)
  %53 = call i32* @pdf_dict_geta(i32* %45, i32 %48, i32 %50, i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @pdf_is_array(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %44
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @pdf_array_len(i32* %59, i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %102

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %102

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32* @pdf_array_get(i32* %70, i32* %71, i32 0)
  store i32* %72, i32** %9, align 8
  br label %73

73:                                               ; preds = %69, %44
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i64 @pdf_is_null(i32* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %102

79:                                               ; preds = %73
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @pdf_is_name(i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %102

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %102

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = call i32 @build_compression_params(i32* %90, i32* %91, i32* %92, %struct.TYPE_7__* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FZ_IMAGE_RAW, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %88, %84, %78, %68, %64, %43, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32* @pdf_dict_geta(i32*, i32, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_null(i32*, i32*) #1

declare dso_local i32 @pdf_is_name(i32*, i32*) #1

declare dso_local i32 @build_compression_params(i32*, i32*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
