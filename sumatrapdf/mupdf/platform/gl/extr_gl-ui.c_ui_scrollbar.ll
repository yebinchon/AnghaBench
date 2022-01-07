; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_scrollbar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32*, float, i64 }

@ui_scrollbar.start_top = internal global float 0.000000e+00, align 4
@UI_COLOR_SCROLLBAR = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"pgdn\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pgup\00", align 1
@UI_COLOR_BUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_scrollbar(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %14, align 4
  %29 = sdiv i32 %27, %28
  %30 = call i32 @fz_maxi(i32 %24, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %7
  %40 = load i32*, i32** %12, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @UI_COLOR_SCROLLBAR, align 4
  %42 = call i32 @glColorHex(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @glRectf(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %186

48:                                               ; preds = %7
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to float
  %52 = load i32, i32* %18, align 4
  %53 = sitofp i32 %52 to float
  %54 = fmul float %51, %53
  %55 = load i32, i32* %14, align 4
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %54, %56
  store float %57, float* %15, align 4
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 5), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %116

60:                                               ; preds = %48
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %116, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %81 = sitofp i32 %80 to float
  %82 = load i32, i32* %9, align 4
  %83 = sitofp i32 %82 to float
  %84 = load float, float* %15, align 4
  %85 = fadd float %83, %84
  %86 = fcmp olt float %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %114

92:                                               ; preds = %79
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %94 = sitofp i32 %93 to float
  %95 = load i32, i32* %9, align 4
  %96 = sitofp i32 %95 to float
  %97 = load float, float* %15, align 4
  %98 = fadd float %96, %97
  %99 = load i32, i32* %17, align 4
  %100 = sitofp i32 %99 to float
  %101 = fadd float %98, %100
  %102 = fcmp oge float %94, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %113

108:                                              ; preds = %92
  %109 = load i32*, i32** %12, align 8
  store i32* %109, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 3), align 8
  %110 = load i32*, i32** %12, align 8
  %111 = bitcast i32* %110 to i8*
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %112 = load float, float* %15, align 4
  store float %112, float* @ui_scrollbar.start_top, align 4
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %75, %71, %67, %63
  br label %116

116:                                              ; preds = %115, %60, %48
  %117 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %118 = load i32*, i32** %12, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = icmp eq i8* %117, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load float, float* @ui_scrollbar.start_top, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %124 = sitofp i32 %123 to float
  %125 = fadd float %122, %124
  %126 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 4), align 8
  %127 = fsub float %125, %126
  %128 = load i32, i32* %14, align 4
  %129 = sitofp i32 %128 to float
  %130 = fmul float %127, %129
  %131 = load i32, i32* %18, align 4
  %132 = sitofp i32 %131 to float
  %133 = fdiv float %130, %132
  %134 = fptosi float %133 to i32
  %135 = load i32*, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %121, %116
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32*, i32** %12, align 8
  store i32 0, i32* %141, align 4
  br label %151

142:                                              ; preds = %136
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %14, align 4
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %142
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to float
  %155 = load i32, i32* %18, align 4
  %156 = sitofp i32 %155 to float
  %157 = fmul float %154, %156
  %158 = load i32, i32* %14, align 4
  %159 = sitofp i32 %158 to float
  %160 = fdiv float %157, %159
  store float %160, float* %15, align 4
  %161 = load i32, i32* @UI_COLOR_SCROLLBAR, align 4
  %162 = call i32 @glColorHex(i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @glRectf(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sitofp i32 %169 to float
  %171 = load float, float* %15, align 4
  %172 = fadd float %170, %171
  %173 = fptosi float %172 to i32
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sitofp i32 %175 to float
  %177 = load float, float* %15, align 4
  %178 = fadd float %176, %177
  %179 = load i32, i32* %17, align 4
  %180 = sitofp i32 %179 to float
  %181 = fadd float %178, %180
  %182 = fptosi float %181 to i32
  %183 = call i32 @fz_make_irect(i32 %168, i32 %173, i32 %174, i32 %182)
  %184 = load i32, i32* @UI_COLOR_BUTTON, align 4
  %185 = call i32 @ui_draw_ibevel_rect(i32 %183, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %151, %39
  ret void
}

declare dso_local i32 @fz_maxi(i32, i32) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @glRectf(i32, i32, i32, i32) #1

declare dso_local i32 @ui_draw_ibevel_rect(i32, i32, i32) #1

declare dso_local i32 @fz_make_irect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
