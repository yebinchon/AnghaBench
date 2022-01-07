; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfextract.c_writepixmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfextract.c_writepixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@fz_default_color_params = common dso_local global i32 0, align 4
@FZ_COLORSPACE_GRAY = common dso_local global i64 0, align 8
@FZ_COLORSPACE_RGB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.png\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"extracting image %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.pam\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i8*, i32)* @writepixmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writepixmap(i32* %0, %struct.TYPE_10__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %82

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_11__* @fz_device_rgb(i32* %26)
  %28 = icmp ne %struct.TYPE_11__* %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.TYPE_11__* @fz_device_rgb(i32* %32)
  %34 = load i32, i32* @fz_default_color_params, align 4
  %35 = call %struct.TYPE_10__* @fz_convert_pixmap(i32* %30, %struct.TYPE_10__* %31, %struct.TYPE_11__* %33, i32* null, i32* null, i32 %34, i32 1)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %6, align 8
  br label %37

37:                                               ; preds = %29, %22, %17, %14
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FZ_COLORSPACE_GRAY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FZ_COLORSPACE_RGB, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50, %42, %37
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @fz_snprintf(i8* %59, i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %63 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %67 = call i32 @fz_save_pixmap_as_png(i32* %64, %struct.TYPE_10__* %65, i8* %66)
  br label %78

68:                                               ; preds = %50
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @fz_snprintf(i8* %69, i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %73 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %77 = call i32 @fz_save_pixmap_as_pam(i32* %74, %struct.TYPE_10__* %75, i8* %76)
  br label %78

78:                                               ; preds = %68, %58
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = call i32 @fz_drop_pixmap(i32* %79, %struct.TYPE_10__* %80)
  br label %82

82:                                               ; preds = %78, %13
  ret void
}

declare dso_local %struct.TYPE_11__* @fz_device_rgb(i32*) #1

declare dso_local %struct.TYPE_10__* @fz_convert_pixmap(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fz_save_pixmap_as_png(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @fz_save_pixmap_as_pam(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
