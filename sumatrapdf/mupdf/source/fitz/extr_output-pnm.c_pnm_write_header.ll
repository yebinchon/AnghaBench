; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pnm_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pnm_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PNM writer cannot cope with spot colors\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"PNM writer cannot cope with alpha\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"pixmap must be grayscale or rgb to write as pnm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"P6\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*)* @pnm_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnm_write_header(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %34 = call i32 @fz_throw(i32* %32, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = call i32 @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %54 = call i32 @fz_throw(i32* %52, i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %48, %42
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %59, i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %66, i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %70, i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %75, i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
