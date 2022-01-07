; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_fast_any_to_alpha.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_fast_any_to_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_fast_any_to_alpha(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = call i32 @fz_clear_pixmap_with_value(i32* %22, %struct.TYPE_5__* %23, i32 255)
  br label %112

25:                                               ; preds = %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %44, %48
  %50 = sub i64 %43, %49
  store i64 %50, i64* %14, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %54, %58
  %60 = sub i64 %53, %59
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %25
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %25
  br label %112

68:                                               ; preds = %64
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i64, i64* %15, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = mul i64 %77, %76
  store i64 %78, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %71, %68
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %104, %79
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %16, align 8
  br label %91

91:                                               ; preds = %95, %89
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %16, align 8
  %94 = icmp ne i64 %92, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i32, i32* %13, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %9, align 8
  br label %91

104:                                              ; preds = %91
  %105 = load i64, i64* %14, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %10, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %9, align 8
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %67, %111, %21
  ret void
}

declare dso_local i32 @fz_clear_pixmap_with_value(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
