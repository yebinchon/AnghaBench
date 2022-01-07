; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_slider.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_slider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ui_slider.start_value = internal global i32 0, align 4
@ui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@UI_COLOR_BUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_slider(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 5), align 8
  call void @ui_pack(%struct.TYPE_8__* sret %9, i32 %18, i32 %19)
  store i32 6, i32* %10, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %38, %40
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %36, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sdiv i32 %49, 2
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %46, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  store i32 0, i32* %56, align 4
  %57 = call i64 @ui_mouse_inside(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %9)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %4
  %60 = load i32*, i32** %5, align 8
  store i32* %60, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 4), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  store i32* %67, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @ui_slider.start_value, align 4
  br label %70

70:                                               ; preds = %66, %63, %59
  br label %71

71:                                               ; preds = %70, %4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %73 = load i32*, i32** %5, align 8
  %74 = icmp eq i32* %72, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @ui_slider.start_value, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %115

90:                                               ; preds = %81
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 3), align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %91, %95
  %97 = sitofp i32 %96 to float
  %98 = load i32, i32* %11, align 4
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %97, %99
  store float %100, float* %16, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %16, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sitofp i32 %106 to float
  %108 = fmul float %103, %107
  %109 = fadd float %102, %108
  %110 = fptosi float %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @fz_clamp(i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %5, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %90, %87
  br label %116

116:                                              ; preds = %115, %71
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sdiv i32 %122, %125
  store i32 %126, i32* %15, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %132, %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  call void @fz_make_irect(%struct.TYPE_8__* sret %17, i32 %134, i64 %137, i32 %145, i64 %148)
  %149 = bitcast %struct.TYPE_8__* %14 to i8*
  %150 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 32, i1 false)
  %151 = call i32 @ui_draw_bevel(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %13, i32 1)
  %152 = load i32, i32* @UI_COLOR_BUTTON, align 4
  %153 = call i32 @ui_draw_bevel_rect(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %14, i32 %152, i32 0)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ui_slider.start_value, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %116
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %160 = load i32*, i32** %5, align 8
  %161 = icmp eq i32* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 4), align 8
  %164 = icmp ne i64 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %162, %158, %116
  %167 = phi i1 [ false, %158 ], [ false, %116 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  ret i32 %168
}

declare dso_local void @ui_pack(%struct.TYPE_8__* sret, i32, i32) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @fz_clamp(i32, i32, i32) #1

declare dso_local void @fz_make_irect(%struct.TYPE_8__* sret, i32, i64, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ui_draw_bevel(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32) #1

declare dso_local i32 @ui_draw_bevel_rect(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
