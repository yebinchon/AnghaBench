; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_find_color_converter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_find_color_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }

@FZ_COLORSPACE_INDEXED = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot convert into Indexed colorspace.\00", align 1
@FZ_COLORSPACE_SEPARATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot convert into Separation colorspace.\00", align 1
@indexed_via_base = common dso_local global i32 0, align 4
@separation_via_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_find_color_converter(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FZ_COLORSPACE_INDEXED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %24 = call i32 @fz_throw(i32* %22, i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FZ_COLORSPACE_SEPARATION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %34 = call i32 @fz_throw(i32* %32, i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FZ_COLORSPACE_INDEXED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @fz_init_process_color_converter(i32* %52, %struct.TYPE_18__* %53, %struct.TYPE_17__* %58, %struct.TYPE_17__* %59, %struct.TYPE_17__* %60, i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @indexed_via_base, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %119

71:                                               ; preds = %35
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FZ_COLORSPACE_SEPARATION, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @fz_init_process_color_converter(i32* %88, %struct.TYPE_18__* %89, %struct.TYPE_17__* %94, %struct.TYPE_17__* %95, %struct.TYPE_17__* %96, i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @separation_via_base, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %118

107:                                              ; preds = %71
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %110, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @fz_init_process_color_converter(i32* %111, %struct.TYPE_18__* %112, %struct.TYPE_17__* %113, %struct.TYPE_17__* %114, %struct.TYPE_17__* %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %77
  br label %119

119:                                              ; preds = %118, %41
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_init_process_color_converter(i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
