; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-png.c_png_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-png.c_png_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32* }

@png_write_header.pngsig = internal constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PNGs cannot contain spot colors\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"pixmap must be grayscale or rgb to write as png\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IHDR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @png_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_write_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [13 x i8], align 1
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %46 = call i32 @fz_throw(i32* %44, i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %3
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %50, %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  switch i32 %57, label %68 [
    i32 1, label %58
    i32 3, label %63
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 4, i32 0
  store i32 %62, i32* %14, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 6, i32 2
  store i32 %67, i32* %14, align 4
  br label %72

68:                                               ; preds = %54
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %63, %58
  %73 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @big32(i8* %74, i32 %75)
  %77 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @big32(i8* %78, i32 %79)
  %81 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 8
  store i8 8, i8* %81, align 1
  %82 = load i32, i32* %14, align 4
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 9
  store i8 %83, i8* %84, align 1
  %85 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 10
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 11
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 12
  store i8 0, i8* %87, align 1
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @fz_write_data(i32* %88, i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @png_write_header.pngsig, i64 0, i64 0), i32 8)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %94 = call i32 @putchunk(i32* %91, i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 13)
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @png_write_icc(i32* %95, %struct.TYPE_5__* %96, i32* %97)
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @big32(i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @putchunk(i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @png_write_icc(i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
