; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mono_pcl_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mono_pcl_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i64, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mono PCL cannot write alpha channel\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"mono PCL cannot write spot colors\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"mono PCL must be grayscale\00", align 1
@HACK__IS_A_OCE9050 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\1B%1BBPIN;\1B%1A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @mono_pcl_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mono_pcl_write_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %46 = call i32 @fz_throw(i32* %44, i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %56 = call i32 @fz_throw(i32* %54, i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %66 = call i32 @fz_throw(i32* %64, i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 7
  %70 = sdiv i32 %69, 8
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %72, 127
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sdiv i32 %77, 8
  %79 = add nsw i32 %76, %78
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @fz_calloc(i32* %81, i32 %82, i32 1)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i8* @fz_calloc(i32* %86, i32 %87, i32 1)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i8* @fz_calloc(i32* %91, i32 %92, i32 1)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @guess_paper_size(%struct.TYPE_7__* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HACK__IS_A_OCE9050, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %67
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @fz_write_string(i32* %115, i32* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %67
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @pcl_header(i32* %119, i32* %120, %struct.TYPE_7__* %122, i32 1, i32 %123, i32 %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @fz_calloc(i32*, i32, i32) #1

declare dso_local i32 @guess_paper_size(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

declare dso_local i32 @pcl_header(i32*, i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
