; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_curveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_curveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { float, float }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"curveto with no current point\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8
@FZ_CURVETO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_curveto(i32* %0, %struct.TYPE_11__* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %26 = call i32 @fz_throw(i32* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 8
  store float %31, float* %17, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 4
  store float %35, float* %18, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fz_warn(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %155

43:                                               ; preds = %27
  %44 = load float, float* %17, align 4
  %45 = load float, float* %11, align 4
  %46 = fcmp oeq float %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %43
  %48 = load float, float* %18, align 4
  %49 = load float, float* %12, align 4
  %50 = fcmp oeq float %48, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %47
  %52 = load float, float* %13, align 4
  %53 = load float, float* %15, align 4
  %54 = fcmp oeq float %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load float, float* %14, align 4
  %57 = load float, float* %16, align 4
  %58 = fcmp oeq float %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load float, float* %11, align 4
  %61 = load float, float* %13, align 4
  %62 = fcmp oeq float %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load float, float* %12, align 4
  %65 = load float, float* %14, align 4
  %66 = fcmp oeq float %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = call i64 @LAST_CMD(%struct.TYPE_11__* %68)
  %70 = load i64, i64* @FZ_MOVETO, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %155

73:                                               ; preds = %67, %63, %59
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = load float, float* %15, align 4
  %77 = load float, float* %16, align 4
  %78 = call i32 @fz_lineto(i32* %74, %struct.TYPE_11__* %75, float %76, float %77)
  br label %102

79:                                               ; preds = %55, %51
  %80 = load float, float* %11, align 4
  %81 = load float, float* %13, align 4
  %82 = fcmp oeq float %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load float, float* %12, align 4
  %85 = load float, float* %14, align 4
  %86 = fcmp oeq float %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = load float, float* %15, align 4
  %91 = load float, float* %16, align 4
  %92 = call i32 @fz_lineto(i32* %88, %struct.TYPE_11__* %89, float %90, float %91)
  br label %101

93:                                               ; preds = %83, %79
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = load float, float* %13, align 4
  %97 = load float, float* %14, align 4
  %98 = load float, float* %15, align 4
  %99 = load float, float* %16, align 4
  %100 = call i32 @fz_curvetov(i32* %94, %struct.TYPE_11__* %95, float %96, float %97, float %98, float %99)
  br label %101

101:                                              ; preds = %93, %87
  br label %102

102:                                              ; preds = %101, %73
  br label %155

103:                                              ; preds = %47, %43
  %104 = load float, float* %13, align 4
  %105 = load float, float* %15, align 4
  %106 = fcmp oeq float %104, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %103
  %108 = load float, float* %14, align 4
  %109 = load float, float* %16, align 4
  %110 = fcmp oeq float %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load float, float* %11, align 4
  %113 = load float, float* %13, align 4
  %114 = fcmp oeq float %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load float, float* %12, align 4
  %117 = load float, float* %14, align 4
  %118 = fcmp oeq float %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = load float, float* %15, align 4
  %123 = load float, float* %16, align 4
  %124 = call i32 @fz_lineto(i32* %120, %struct.TYPE_11__* %121, float %122, float %123)
  br label %133

125:                                              ; preds = %115, %111
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = load float, float* %11, align 4
  %129 = load float, float* %12, align 4
  %130 = load float, float* %15, align 4
  %131 = load float, float* %16, align 4
  %132 = call i32 @fz_curvetoy(i32* %126, %struct.TYPE_11__* %127, float %128, float %129, float %130, float %131)
  br label %133

133:                                              ; preds = %125, %119
  br label %155

134:                                              ; preds = %107, %103
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = load i32, i32* @FZ_CURVETO, align 4
  %139 = call i32 @push_cmd(i32* %136, %struct.TYPE_11__* %137, i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %142 = load float, float* %11, align 4
  %143 = load float, float* %12, align 4
  %144 = call i32 @push_coord(i32* %140, %struct.TYPE_11__* %141, float %142, float %143)
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = load float, float* %13, align 4
  %148 = load float, float* %14, align 4
  %149 = call i32 @push_coord(i32* %145, %struct.TYPE_11__* %146, float %147, float %148)
  %150 = load i32*, i32** %9, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %152 = load float, float* %15, align 4
  %153 = load float, float* %16, align 4
  %154 = call i32 @push_coord(i32* %150, %struct.TYPE_11__* %151, float %152, float %153)
  br label %155

155:                                              ; preds = %135, %133, %102, %72, %40
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @LAST_CMD(%struct.TYPE_11__*) #1

declare dso_local i32 @fz_lineto(i32*, %struct.TYPE_11__*, float, float) #1

declare dso_local i32 @fz_curvetov(i32*, %struct.TYPE_11__*, float, float, float, float) #1

declare dso_local i32 @fz_curvetoy(i32*, %struct.TYPE_11__*, float, float, float, float) #1

declare dso_local i32 @push_cmd(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @push_coord(i32*, %struct.TYPE_11__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
