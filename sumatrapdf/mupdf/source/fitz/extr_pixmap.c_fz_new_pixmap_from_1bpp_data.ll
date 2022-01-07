; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_new_pixmap_from_1bpp_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_new_pixmap_from_1bpp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @fz_new_pixmap_from_1bpp_data(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.TYPE_4__* @fz_new_pixmap(i32* %21, i32* null, i32 %22, i32 %23, i32* null, i32 1)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %15, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %91, %7
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8* %56, i8** %18, align 8
  store i8 -128, i8* %19, align 1
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %85, %42
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %20, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i8*, i8** %18, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %19, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 255, i32 0
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %17, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %17, align 8
  store i8 %72, i8* %73, align 1
  %75 = load i8, i8* %19, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 1
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %19, align 1
  %79 = load i8, i8* %19, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %62
  store i8 -128, i8* %19, align 1
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %18, align 8
  br label %85

85:                                               ; preds = %82, %62
  br label %58

86:                                               ; preds = %58
  %87 = load i32, i32* %16, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %17, align 8
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %38

94:                                               ; preds = %38
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  ret %struct.TYPE_4__* %95
}

declare dso_local %struct.TYPE_4__* @fz_new_pixmap(i32*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
