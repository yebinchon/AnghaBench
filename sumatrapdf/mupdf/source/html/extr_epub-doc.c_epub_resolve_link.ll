; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_resolve_link.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_resolve_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, float*, float*)* @epub_resolve_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epub_resolve_link(i32* %0, i32* %1, i8* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %12, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 35)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  br label %36

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strlen(i8* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i64 [ %32, %27 ], [ %35, %33 ]
  store i64 %37, i64* %16, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %15, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %15, align 8
  br label %47

47:                                               ; preds = %46, %40, %36
  store i32 0, i32* %14, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %13, align 8
  br label %51

51:                                               ; preds = %117, %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %123

54:                                               ; preds = %51
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @strncmp(i64* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %116, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %16, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %62
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = call %struct.TYPE_9__* @epub_get_laid_out_html(i32* %74, %struct.TYPE_10__* %75, %struct.TYPE_11__* %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %18, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call float @fz_find_html_target(i32* %81, %struct.TYPE_9__* %82, i8* %84)
  store float %85, float* %17, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %88 = call i32 @fz_drop_html(i32* %86, %struct.TYPE_9__* %87)
  %89 = load float, float* %17, align 4
  %90 = fcmp oge float %89, 0.000000e+00
  br i1 %90, label %91, label %111

91:                                               ; preds = %73
  %92 = load float, float* %17, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sitofp i32 %93 to float
  %95 = fdiv float %92, %94
  %96 = fptosi float %95 to i32
  store i32 %96, i32* %20, align 4
  %97 = load float*, float** %11, align 8
  %98 = icmp ne float* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load float, float* %17, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %19, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sitofp i32 %103 to float
  %105 = fsub float %100, %104
  %106 = load float*, float** %11, align 8
  store float %105, float* %106, align 4
  br label %107

107:                                              ; preds = %99, %91
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @fz_make_location(i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  br label %125

111:                                              ; preds = %73
  %112 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %112, i32* %6, align 4
  br label %125

113:                                              ; preds = %70
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @fz_make_location(i32 %114, i32 0)
  store i32 %115, i32* %6, align 4
  br label %125

116:                                              ; preds = %62, %54
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %13, align 8
  br label %51

123:                                              ; preds = %51
  %124 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %113, %111, %107
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i64*, i8*, i64) #1

declare dso_local %struct.TYPE_9__* @epub_get_laid_out_html(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local float @fz_find_html_target(i32*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @fz_drop_html(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
