; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_lookup_cmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_lookup_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_lookup_cmap(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %70, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %30, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %70

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %69

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %54, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %61, %67
  store i32 %68, i32* %3, align 4
  br label %138

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %38
  br label %21

71:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %125, %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %85, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %125

96:                                               ; preds = %80
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ugt i32 %97, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %124

108:                                              ; preds = %96
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %109, %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %116, %122
  store i32 %123, i32* %3, align 4
  br label %138

124:                                              ; preds = %105
  br label %125

125:                                              ; preds = %124, %93
  br label %76

126:                                              ; preds = %76
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @pdf_lookup_cmap(%struct.TYPE_7__* %134, i32 %135)
  store i32 %136, i32* %3, align 4
  br label %138

137:                                              ; preds = %126
  store i32 -1, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %131, %108, %53
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
