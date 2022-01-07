; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_read_tag_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_read_tag_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*, i32, i32, i32)* @tiff_read_tag_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_read_tag_value(i32* %0, %struct.tiff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tiff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.tiff* %1, %struct.tiff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.tiff*, %struct.tiff** %7, align 8
  %14 = getelementptr inbounds %struct.tiff, %struct.tiff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tiff*, %struct.tiff** %7, align 8
  %17 = getelementptr inbounds %struct.tiff, %struct.tiff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = icmp ugt i32 %12, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.tiff*, %struct.tiff** %7, align 8
  %23 = getelementptr inbounds %struct.tiff, %struct.tiff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tiff*, %struct.tiff** %7, align 8
  %26 = getelementptr inbounds %struct.tiff, %struct.tiff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %24, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %21, %5
  %30 = load %struct.tiff*, %struct.tiff** %7, align 8
  %31 = getelementptr inbounds %struct.tiff, %struct.tiff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.tiff*, %struct.tiff** %7, align 8
  %36 = getelementptr inbounds %struct.tiff, %struct.tiff* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %84, %29
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %81 [
    i32 129, label %43
    i32 131, label %65
    i32 128, label %70
    i32 130, label %75
  ]

43:                                               ; preds = %41
  %44 = load %struct.tiff*, %struct.tiff** %7, align 8
  %45 = call i8* @tiff_readlong(%struct.tiff* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.tiff*, %struct.tiff** %7, align 8
  %49 = call i8* @tiff_readlong(%struct.tiff* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = udiv i32 %55, %56
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @UINT_MAX, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %6, align 8
  br label %84

65:                                               ; preds = %41
  %66 = load %struct.tiff*, %struct.tiff** %7, align 8
  %67 = call i32 @tiff_readbyte(%struct.tiff* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %84

70:                                               ; preds = %41
  %71 = load %struct.tiff*, %struct.tiff** %7, align 8
  %72 = call i32 @readshort(%struct.tiff* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %84

75:                                               ; preds = %41
  %76 = load %struct.tiff*, %struct.tiff** %7, align 8
  %77 = call i8* @tiff_readlong(%struct.tiff* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %84

81:                                               ; preds = %41
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  store i32 0, i32* %82, align 4
  br label %84

84:                                               ; preds = %81, %75, %70, %65, %62
  br label %37

85:                                               ; preds = %37
  ret void
}

declare dso_local i8* @tiff_readlong(%struct.tiff*) #1

declare dso_local i32 @tiff_readbyte(%struct.tiff*) #1

declare dso_local i32 @readshort(%struct.tiff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
