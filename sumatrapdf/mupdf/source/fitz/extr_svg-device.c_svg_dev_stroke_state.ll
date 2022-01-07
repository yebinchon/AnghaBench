; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_stroke_state.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_stroke_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { float, i64, i64, i8*, i64, i8*, i32* }

@.str = private unnamed_addr constant [19 x i8] c" stroke-width=\22%g\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" stroke-linecap=\22%s\22\00", align 1
@FZ_LINECAP_SQUARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@FZ_LINECAP_ROUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"butt\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" stroke-dasharray=\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%c%g\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" stroke-dashoffset=\22%g\22\00", align 1
@FZ_LINEJOIN_MITER = common dso_local global i64 0, align 8
@FZ_LINEJOIN_MITER_XPS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c" stroke-miterlimit=\22%g\22\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c" stroke-linejoin=\22%s\22\00", align 1
@FZ_LINEJOIN_BEVEL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"bevel\00", align 1
@FZ_LINEJOIN_ROUND = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"miter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32)* @svg_dev_stroke_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_stroke_state(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call float @fz_matrix_expansion(i32 %15)
  store float %16, float* %10, align 4
  %17 = load float, float* %10, align 4
  %18 = fcmp oeq float %17, 0.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store float 1.000000e+00, float* %10, align 4
  br label %20

20:                                               ; preds = %19, %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 8
  %24 = load float, float* %10, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %10, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load float, float* %10, align 4
  %29 = fpext float %28 to double
  %30 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %26, i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), double %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FZ_LINECAP_SQUARE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  br label %47

39:                                               ; preds = %20
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FZ_LINECAP_ROUND, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %47

47:                                               ; preds = %39, %38
  %48 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %38 ], [ %46, %39 ]
  %49 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %31, i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %99

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %55, i32* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %80, %54
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 34, i32 44
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %66, i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %92, i32* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %91, %83
  br label %99

99:                                               ; preds = %98, %47
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FZ_LINEJOIN_MITER, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FZ_LINEJOIN_MITER_XPS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105, %99
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %112, i32* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %111, %105
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @FZ_LINEJOIN_BEVEL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %135

127:                                              ; preds = %118
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FZ_LINEJOIN_ROUND, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  br label %135

135:                                              ; preds = %127, %126
  %136 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %126 ], [ %134, %127 ]
  %137 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %119, i32* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %136)
  ret void
}

declare dso_local float @fz_matrix_expansion(i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
