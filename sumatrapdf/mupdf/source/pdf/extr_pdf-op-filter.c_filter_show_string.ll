; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_show_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_show_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 (i32*, %struct.TYPE_18__*, i8*, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@FLUSH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i8*, i32)* @filter_show_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_show_string(i32* %0, %struct.TYPE_16__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %101

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %100, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %101

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @filter_string_to_segment(i32* %33, %struct.TYPE_16__* %34, i8* %35, i32 %36, i32* %11, i32* %12, i32* %13)
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %31
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = load i32, i32* @FLUSH_ALL, align 4
  %45 = call i32 @filter_flush(i32* %42, %struct.TYPE_16__* %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = call i32 @flush_adjustment(i32* %46, %struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32 (i32*, %struct.TYPE_18__*, i8*, i32)*, i32 (i32*, %struct.TYPE_18__*, i8*, i32)** %52, align 8
  %54 = icmp ne i32 (i32*, %struct.TYPE_18__*, i8*, i32)* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %41
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32 (i32*, %struct.TYPE_18__*, i8*, i32)*, i32 (i32*, %struct.TYPE_18__*, i8*, i32)** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 %60(i32* %61, %struct.TYPE_18__* %64, i8* %68, i32 %71)
  br label %73

73:                                               ; preds = %55, %41
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @adjust_text(i32* %79, %struct.TYPE_16__* %80, i32 %84, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %78, %74
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = call i32 @adjust_for_removed_space(i32* %97, %struct.TYPE_16__* %98)
  br label %100

100:                                              ; preds = %96, %93
  br label %27

101:                                              ; preds = %25, %27
  ret void
}

declare dso_local i32 @filter_string_to_segment(i32*, %struct.TYPE_16__*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @filter_flush(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @flush_adjustment(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @adjust_text(i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @adjust_for_removed_space(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
