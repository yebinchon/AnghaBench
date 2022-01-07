; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_fz_insert_edgebuffer_app.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_fz_insert_edgebuffer_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, i32)* @fz_insert_edgebuffer_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_edgebuffer_app(i32* %0, i32* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %15, align 8
  %22 = load float, float* %10, align 4
  %23 = call i32 @float2fixed(float %22)
  store i32 %23, i32* %16, align 4
  %24 = load float, float* %11, align 4
  %25 = call i32 @float2fixed(float %24)
  store i32 %25, i32* %17, align 4
  %26 = load float, float* %12, align 4
  %27 = call i32 @float2fixed(float %26)
  store i32 %27, i32* %18, align 4
  %28 = load float, float* %13, align 4
  %29 = call i32 @float2fixed(float %28)
  store i32 %29, i32* %19, align 4
  %30 = load float, float* %10, align 4
  %31 = load float, float* %12, align 4
  %32 = fcmp olt float %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %7
  %34 = load float, float* %10, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = fcmp olt float %34, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load float, float* %10, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store float %42, float* %46, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load float, float* %12, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fcmp ogt float %48, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load float, float* %12, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store float %56, float* %60, align 4
  br label %61

61:                                               ; preds = %55, %47
  br label %91

62:                                               ; preds = %7
  %63 = load float, float* %10, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fcmp ogt float %63, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load float, float* %10, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store float %71, float* %75, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load float, float* %12, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 4
  %83 = fcmp olt float %77, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load float, float* %12, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store float %85, float* %89, align 4
  br label %90

90:                                               ; preds = %84, %76
  br label %91

91:                                               ; preds = %90, %61
  %92 = load float, float* %11, align 4
  %93 = load float, float* %13, align 4
  %94 = fcmp olt float %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load float, float* %11, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 4
  %102 = fcmp olt float %96, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load float, float* %11, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store float %104, float* %108, align 4
  br label %109

109:                                              ; preds = %103, %95
  %110 = load float, float* %13, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load float, float* %114, align 4
  %116 = fcmp ogt float %110, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load float, float* %13, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store float %118, float* %122, align 4
  br label %123

123:                                              ; preds = %117, %109
  br label %153

124:                                              ; preds = %91
  %125 = load float, float* %13, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load float, float* %129, align 4
  %131 = fcmp olt float %125, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load float, float* %13, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  store float %133, float* %137, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load float, float* %11, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load float, float* %143, align 4
  %145 = fcmp ogt float %139, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load float, float* %11, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  store float %147, float* %151, align 4
  br label %152

152:                                              ; preds = %146, %138
  br label %153

153:                                              ; preds = %152, %123
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @mark_line_app(i32* %154, %struct.TYPE_7__* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  ret void
}

declare dso_local i32 @float2fixed(float) #1

declare dso_local i32 @mark_line_app(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
