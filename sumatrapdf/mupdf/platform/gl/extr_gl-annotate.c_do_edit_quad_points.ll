; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_quad_points.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_quad_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@do_edit_quad_points.pt = internal global %struct.TYPE_22__ zeroinitializer, align 4
@do_edit_quad_points.marking = internal global i32 0, align 4
@view_page_area = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i64 0, align 8
@ui = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@GLUT_CURSOR_TEXT = common dso_local global i32 0, align 4
@view_page_inv_ctm = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@page_text = common dso_local global i32 0, align 4
@GL_ONE_MINUS_DST_COLOR = common dso_local global i32 0, align 4
@GL_ZERO = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_edit_quad_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_edit_quad_points() #0 {
  %1 = alloca [1000 x %struct.TYPE_21__], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__, align 4
  %5 = alloca %struct.TYPE_22__, align 4
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca %struct.TYPE_21__, align 4
  %9 = load i32, i32* @view_page_area, align 4
  %10 = call i64 @ui_mouse_inside(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %0
  %13 = load i64, i64* @selected_annot, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 6), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 0), align 8
  %18 = load i64, i64* @selected_annot, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @GLUT_CURSOR_TEXT, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 5), align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @selected_annot, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 0), align 8
  store i32 1, i32* @do_edit_quad_points.marking, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 4), align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @do_edit_quad_points.pt, i32 0, i32 3), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 3), align 8
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @do_edit_quad_points.pt, i32 0, i32 2), align 4
  br label %32

32:                                               ; preds = %28, %25, %22
  br label %33

33:                                               ; preds = %32, %0
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 0), align 8
  %35 = load i64, i64* @selected_annot, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %179

37:                                               ; preds = %33
  %38 = load i32, i32* @do_edit_quad_points.marking, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %179

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @do_edit_quad_points.pt, i32 0, i32 3), align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @do_edit_quad_points.pt, i32 0, i32 2), align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 4), align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 3), align 8
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @view_page_inv_ctm, align 4
  %54 = bitcast %struct.TYPE_22__* %4 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 4
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 4
  %59 = call { i64, i64 } @fz_transform_point(i64 %56, i64 %58, i32 %53)
  %60 = bitcast %struct.TYPE_22__* %6 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 4
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 4
  %65 = bitcast %struct.TYPE_22__* %4 to i8*
  %66 = bitcast %struct.TYPE_22__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 16, i1 false)
  %67 = load i32, i32* @view_page_inv_ctm, align 4
  %68 = bitcast %struct.TYPE_22__* %5 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 4
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 4
  %73 = call { i64, i64 } @fz_transform_point(i64 %70, i64 %72, i32 %67)
  %74 = bitcast %struct.TYPE_22__* %7 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i64, i64 } %73, 0
  store i64 %76, i64* %75, align 4
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i64, i64 } %73, 1
  store i64 %78, i64* %77, align 4
  %79 = bitcast %struct.TYPE_22__* %5 to i8*
  %80 = bitcast %struct.TYPE_22__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 16, i1 false)
  %81 = load i32, i32* @ctx, align 4
  %82 = load i32, i32* @page_text, align 4
  %83 = getelementptr inbounds [1000 x %struct.TYPE_21__], [1000 x %struct.TYPE_21__]* %1, i64 0, i64 0
  %84 = getelementptr inbounds [1000 x %struct.TYPE_21__], [1000 x %struct.TYPE_21__]* %1, i64 0, i64 0
  %85 = call i32 @nelem(%struct.TYPE_21__* %84)
  %86 = bitcast %struct.TYPE_22__* %4 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89, align 4
  %91 = bitcast %struct.TYPE_22__* %5 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 4
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = load i64, i64* %94, align 4
  %96 = call i32 @fz_highlight_selection(i32 %81, i32 %82, i64 %88, i64 %90, i64 %93, i64 %95, %struct.TYPE_21__* %83, i32 %85)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @GL_ONE_MINUS_DST_COLOR, align 4
  %98 = load i32, i32* @GL_ZERO, align 4
  %99 = call i32 @glBlendFunc(i32 %97, i32 %98)
  %100 = load i32, i32* @GL_BLEND, align 4
  %101 = call i32 @glEnable(i32 %100)
  %102 = call i32 @glColor4f(i32 1, i32 1, i32 1, i32 1)
  %103 = load i32, i32* @GL_QUADS, align 4
  %104 = call i32 @glBegin(i32 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %142, %40
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %105
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x %struct.TYPE_21__], [1000 x %struct.TYPE_21__]* %1, i64 0, i64 %111
  %113 = load i32, i32* @view_page_ctm, align 4
  call void @fz_transform_quad(%struct.TYPE_21__* sret %8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %112, i32 %113)
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @glVertex2f(i32 %116, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @glVertex2f(i32 %123, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @glVertex2f(i32 %130, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @glVertex2f(i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %109
  %143 = load i32, i32* %2, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %2, align 4
  br label %105

145:                                              ; preds = %105
  %146 = call i32 (...) @glEnd()
  %147 = load i32, i32* @GL_BLEND, align 4
  %148 = call i32 @glDisable(i32 %147)
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 2), align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 0, i32* @do_edit_quad_points.marking, align 4
  br label %152

152:                                              ; preds = %151, %145
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ui, i32 0, i32 1), align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %178, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %3, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32, i32* @ctx, align 4
  %160 = load i64, i64* @selected_annot, align 8
  %161 = call i32 @pdf_clear_annot_quad_points(i32 %159, i64 %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %173, %158
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* %3, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i32, i32* @ctx, align 4
  %168 = load i64, i64* @selected_annot, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [1000 x %struct.TYPE_21__], [1000 x %struct.TYPE_21__]* %1, i64 0, i64 %170
  %172 = call i32 @pdf_add_annot_quad_point(i32 %167, i64 %168, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %171)
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %2, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %2, align 4
  br label %162

176:                                              ; preds = %162
  br label %177

177:                                              ; preds = %176, %155
  store i32 0, i32* @do_edit_quad_points.marking, align 4
  br label %178

178:                                              ; preds = %177, %152
  br label %179

179:                                              ; preds = %178, %37, %33
  ret void
}

declare dso_local i64 @ui_mouse_inside(i32) #1

declare dso_local { i64, i64 } @fz_transform_point(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_highlight_selection(i32, i32, i64, i64, i64, i64, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @nelem(%struct.TYPE_21__*) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local void @fz_transform_quad(%struct.TYPE_21__* sret, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i32) #1

declare dso_local i32 @glVertex2f(i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @pdf_clear_annot_quad_points(i32, i64) #1

declare dso_local i32 @pdf_add_annot_quad_point(i32, i64, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
