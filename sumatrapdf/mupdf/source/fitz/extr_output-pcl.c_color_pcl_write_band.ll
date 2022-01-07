; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_color_pcl_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_color_pcl_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"\1B*p%dx%dY\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\1B*r%dT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\1B*r%dS\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\1B*t%dV\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\1B*t%dH\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\1B*r3A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B*b5M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @color_pcl_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_pcl_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %6
  br label %128

42:                                               ; preds = %6
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %16, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %42
  store i32 10800, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %56, %52
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %125, %58
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %18, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %128

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %18, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %77, i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %20, align 4
  %91 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %88, i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 720
  %96 = load i32, i32* %17, align 4
  %97 = sdiv i32 %95, %96
  %98 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %92, i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %20, align 4
  %102 = mul nsw i32 %101, 720
  %103 = load i32, i32* %17, align 4
  %104 = sdiv i32 %102, %103
  %105 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %99, i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @fz_write_string(i32* %106, i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @fz_write_string(i32* %109, i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %115, %116
  %118 = mul nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @color_pcl_compress_column(i32* %112, %struct.TYPE_5__* %113, i8* %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %76
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %59

128:                                              ; preds = %41, %59
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

declare dso_local i32 @color_pcl_compress_column(i32*, %struct.TYPE_5__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
