; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_enumerate_selection.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_enumerate_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.callbacks = type { i32, i32 (i32*, i32, %struct.TYPE_15__*)*, i32 (i32*, i32, %struct.TYPE_15__*, %struct.TYPE_16__*)* }

@FZ_STEXT_BLOCK_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, i32, %struct.callbacks*)* @fz_enumerate_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_enumerate_selection(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, %struct.callbacks* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.callbacks*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.callbacks* %4, %struct.callbacks** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @find_closest_in_page(%struct.TYPE_14__* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @find_closest_in_page(%struct.TYPE_14__* %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %123

36:                                               ; preds = %31
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %11, align 8
  br label %40

40:                                               ; preds = %119, %36
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %123

43:                                               ; preds = %40
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FZ_STEXT_BLOCK_TEXT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %119

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %12, align 8
  br label %56

56:                                               ; preds = %114, %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %118

59:                                               ; preds = %56
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %13, align 8
  br label %63

63:                                               ; preds = %96, %59
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %65 = icmp ne %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 1, i32* %17, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.callbacks*, %struct.callbacks** %10, align 8
  %80 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %79, i32 0, i32 2
  %81 = load i32 (i32*, i32, %struct.TYPE_15__*, %struct.TYPE_16__*)*, i32 (i32*, i32, %struct.TYPE_15__*, %struct.TYPE_16__*)** %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.callbacks*, %struct.callbacks** %10, align 8
  %84 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %88 = call i32 %81(i32* %82, i32 %85, %struct.TYPE_15__* %86, %struct.TYPE_16__* %87)
  br label %89

89:                                               ; preds = %78, %75
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %123

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %13, align 8
  br label %63

100:                                              ; preds = %63
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.callbacks*, %struct.callbacks** %10, align 8
  %105 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %104, i32 0, i32 1
  %106 = load i32 (i32*, i32, %struct.TYPE_15__*)*, i32 (i32*, i32, %struct.TYPE_15__*)** %105, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.callbacks*, %struct.callbacks** %10, align 8
  %109 = getelementptr inbounds %struct.callbacks, %struct.callbacks* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = call i32 %106(i32* %107, i32 %110, %struct.TYPE_15__* %111)
  br label %113

113:                                              ; preds = %103, %100
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %12, align 8
  br label %56

118:                                              ; preds = %56
  br label %119

119:                                              ; preds = %118, %49
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %11, align 8
  br label %40

123:                                              ; preds = %35, %94, %40
  ret void
}

declare dso_local i32 @find_closest_in_page(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
