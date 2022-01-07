; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_tree_begin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_tree_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.list*, %struct.list*, i64 }
%struct.list = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@ui_tree_begin.start_scroll_y = internal global i32 0, align 4
@ui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@UI_COLOR_TEXT_BG = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_tree_begin(%struct.list* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  store %struct.list* %0, %struct.list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  call void @ui_pack(%struct.TYPE_6__* sret %11, i32 %14, i32 %15)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 2
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 2
  store i64 %28, i64* %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %29, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %40 = mul nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %42, %44
  %46 = sub nsw i32 %40, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 16
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %49, %5
  %54 = call i64 @ui_mouse_inside(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.list*, %struct.list** %6, align 8
  store %struct.list* %57, %struct.list** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 5), align 8
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 6), align 8
  %59 = icmp ne %struct.list* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 7), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.list*, %struct.list** %6, align 8
  store %struct.list* %64, %struct.list** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 6), align 8
  %65 = load %struct.list*, %struct.list** %6, align 8
  %66 = getelementptr inbounds %struct.list, %struct.list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* @ui_tree_begin.start_scroll_y, align 4
  br label %68

68:                                               ; preds = %63, %60, %56
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 6), align 8
  %71 = load %struct.list*, %struct.list** %6, align 8
  %72 = icmp eq %struct.list* %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @ui_tree_begin.start_scroll_y, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %77 = sub nsw i32 %75, %76
  %78 = mul nsw i32 %77, 5
  %79 = add nsw i32 %74, %78
  %80 = load %struct.list*, %struct.list** %6, align 8
  %81 = getelementptr inbounds %struct.list, %struct.list* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %73, %69
  %83 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 5), align 8
  %84 = load %struct.list*, %struct.list** %6, align 8
  %85 = icmp eq %struct.list* %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 3), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %89 = mul nsw i32 %87, %88
  %90 = mul nsw i32 %89, 3
  %91 = load %struct.list*, %struct.list** %6, align 8
  %92 = getelementptr inbounds %struct.list, %struct.list* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %86, %82
  %96 = load %struct.list*, %struct.list** %6, align 8
  %97 = getelementptr inbounds %struct.list, %struct.list* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.list*, %struct.list** %6, align 8
  %104 = getelementptr inbounds %struct.list, %struct.list* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.list*, %struct.list** %6, align 8
  %107 = getelementptr inbounds %struct.list, %struct.list* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.list*, %struct.list** %6, align 8
  %112 = getelementptr inbounds %struct.list, %struct.list* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* @UI_COLOR_TEXT_BG, align 4
  %115 = call i32 @ui_draw_bevel_rect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %11, i32 %114, i32 1)
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 16
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.list*, %struct.list** %6, align 8
  %129 = getelementptr inbounds %struct.list, %struct.list* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %131, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %137 = mul nsw i32 %135, %136
  %138 = call i32 @ui_scrollbar(i64 %120, i32 %122, i64 %125, i32 %127, i32* %129, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %118, %113
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.list*, %struct.list** %6, align 8
  %142 = getelementptr inbounds %struct.list, %struct.list* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.list*, %struct.list** %6, align 8
  %144 = getelementptr inbounds %struct.list, %struct.list* %143, i32 0, i32 3
  %145 = bitcast %struct.TYPE_6__* %144 to i8*
  %146 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 40, i1 false)
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.list*, %struct.list** %6, align 8
  %150 = getelementptr inbounds %struct.list, %struct.list* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %148, %151
  %153 = load %struct.list*, %struct.list** %6, align 8
  %154 = getelementptr inbounds %struct.list, %struct.list* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.list*, %struct.list** %6, align 8
  %156 = getelementptr inbounds %struct.list, %struct.list* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 4), align 8
  %160 = load %struct.list*, %struct.list** %6, align 8
  %161 = getelementptr inbounds %struct.list, %struct.list* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %159, %163
  %165 = load %struct.list*, %struct.list** %6, align 8
  %166 = getelementptr inbounds %struct.list, %struct.list* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.list*, %struct.list** %6, align 8
  %170 = getelementptr inbounds %struct.list, %struct.list* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %168, %172
  %174 = load %struct.list*, %struct.list** %6, align 8
  %175 = getelementptr inbounds %struct.list, %struct.list* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.list*, %struct.list** %6, align 8
  %179 = getelementptr inbounds %struct.list, %struct.list* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %177, %181
  %183 = call i32 @glScissor(i64 %158, i32 %164, i64 %173, i32 %182)
  %184 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %185 = call i32 @glEnable(i32 %184)
  ret void
}

declare dso_local void @ui_pack(%struct.TYPE_6__* sret, i32, i32) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @ui_draw_bevel_rect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32, i32) #1

declare dso_local i32 @ui_scrollbar(i64, i32, i64, i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glScissor(i64, i32, i64, i32) #1

declare dso_local i32 @glEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
