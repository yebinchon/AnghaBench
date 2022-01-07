; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8* }

@do_edit_line.start_a = internal global %struct.TYPE_16__ zeroinitializer, align 4
@do_edit_line.start_b = internal global %struct.TYPE_16__ zeroinitializer, align 4
@do_edit_line.state = internal global i32 0, align 4
@selected_annot = common dso_local global i64 0, align 8
@ui = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ctx = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@GL_LINES = common dso_local global i32 0, align 4
@view_page_inv_ctm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_15__*)* @do_edit_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_edit_line(i32 %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca %struct.TYPE_16__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @fz_expand_irect(i32 %17, i32 5)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ui_mouse_inside(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ui_mouse_inside(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = load i64, i64* @selected_annot, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 7), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %80, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %30
  %34 = load i64, i64* @selected_annot, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %35 = load i32, i32* @ctx, align 4
  %36 = load i64, i64* @selected_annot, align 8
  %37 = call i32 @pdf_annot_line(i32 %35, i64 %36, %struct.TYPE_16__* @do_edit_line.start_a, %struct.TYPE_16__* @do_edit_line.start_b)
  %38 = load i32, i32* @view_page_ctm, align 4
  %39 = load i64, i64* bitcast (%struct.TYPE_16__* @do_edit_line.start_a to i64*), align 4
  %40 = call i64 @fz_transform_point(i64 %39, i32 %38)
  %41 = bitcast %struct.TYPE_16__* %12 to i64*
  store i64 %40, i64* %41, align 4
  %42 = bitcast %struct.TYPE_16__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_16__* @do_edit_line.start_a to i8*), i8* align 4 %42, i64 8, i1 false)
  %43 = load i32, i32* @view_page_ctm, align 4
  %44 = load i64, i64* bitcast (%struct.TYPE_16__* @do_edit_line.start_b to i64*), align 4
  %45 = call i64 @fz_transform_point(i64 %44, i32 %43)
  %46 = bitcast %struct.TYPE_16__* %13 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_16__* @do_edit_line.start_b to i8*), i8* align 4 %47, i64 8, i1 false)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_a, i32 0, i32 1), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_a, i32 0, i32 0), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_a, i32 0, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_a, i32 0, i32 0), align 4
  %52 = call i32 @fz_make_irect(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_b, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_b, i32 0, i32 0), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_b, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @do_edit_line.start_b, i32 0, i32 0), align 4
  %57 = call i32 @fz_make_irect(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @fz_expand_irect(i32 %58, i32 10)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @fz_expand_irect(i32 %60, i32 10)
  store i32 %61, i32* %8, align 4
  store i32 0, i32* @do_edit_line.state, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @ui_mouse_inside(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %33
  %66 = load i32, i32* @do_edit_line.state, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* @do_edit_line.state, align 4
  br label %68

68:                                               ; preds = %65, %33
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @ui_mouse_inside(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @do_edit_line.state, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* @do_edit_line.state, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* @do_edit_line.state, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 3, i32* @do_edit_line.state, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %30, %26
  br label %81

81:                                               ; preds = %80, %22, %3
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %83 = load i64, i64* @selected_annot, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %228

85:                                               ; preds = %81
  %86 = load i32, i32* @do_edit_line.state, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %228

88:                                               ; preds = %85
  %89 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 bitcast (%struct.TYPE_16__* @do_edit_line.start_a to i8*), i64 8, i1 false)
  %90 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 bitcast (%struct.TYPE_16__* @do_edit_line.start_b to i8*), i64 8, i1 false)
  %91 = load i32, i32* @do_edit_line.state, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 6), align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 5), align 8
  %97 = sub nsw i64 %95, %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %97
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 4), align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 3), align 8
  %105 = sub nsw i64 %103, %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %105
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  br label %111

111:                                              ; preds = %94, %88
  %112 = load i32, i32* @do_edit_line.state, align 4
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 6), align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 5), align 8
  %118 = sub nsw i64 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %118
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 4), align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 3), align 8
  %126 = sub nsw i64 %124, %125
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %126
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  br label %132

132:                                              ; preds = %115, %111
  %133 = load i32, i32* @GL_LINES, align 4
  %134 = call i32 @glBegin(i32 %133)
  %135 = call i32 @glColor4f(i32 1, i32 0, i32 0, i32 1)
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @glVertex2f(i32 %137, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @glVertex2f(i32 %142, i32 %144)
  %146 = call i32 (...) @glEnd()
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @fz_min(i32 %148, i32 %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @fz_min(i32 %155, i32 %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @fz_max(i32 %162, i32 %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @fz_max(i32 %169, i32 %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @ctx, align 4
  %176 = load i64, i64* @selected_annot, align 8
  %177 = call float @pdf_annot_border(i32 %175, i64 %176)
  store float %177, float* %11, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = load i32, i32* @view_page_ctm, align 4
  %181 = call float @fz_matrix_expansion(i32 %180)
  %182 = load float, float* %11, align 4
  %183 = fmul float %181, %182
  call void @fz_expand_rect(%struct.TYPE_15__* sret %14, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %179, float %183)
  %184 = bitcast %struct.TYPE_15__* %178 to i8*
  %185 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 32, i1 false)
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 2), align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %132
  store i32 0, i32* @do_edit_line.state, align 4
  br label %189

189:                                              ; preds = %188, %132
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %227, label %192

192:                                              ; preds = %189
  store i32 0, i32* @do_edit_line.state, align 4
  %193 = load i64, i64* bitcast (%struct.TYPE_16__* @do_edit_line.start_a to i64*), align 4
  %194 = bitcast %struct.TYPE_16__* %9 to i64*
  %195 = load i64, i64* %194, align 4
  %196 = call i64 @points_differ(i64 %193, i64 %195, i32 1)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load i64, i64* bitcast (%struct.TYPE_16__* @do_edit_line.start_b to i64*), align 4
  %200 = bitcast %struct.TYPE_16__* %10 to i64*
  %201 = load i64, i64* %200, align 4
  %202 = call i64 @points_differ(i64 %199, i64 %201, i32 1)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %198, %192
  %205 = load i32, i32* @view_page_inv_ctm, align 4
  %206 = bitcast %struct.TYPE_16__* %9 to i64*
  %207 = load i64, i64* %206, align 4
  %208 = call i64 @fz_transform_point(i64 %207, i32 %205)
  %209 = bitcast %struct.TYPE_16__* %15 to i64*
  store i64 %208, i64* %209, align 4
  %210 = bitcast %struct.TYPE_16__* %9 to i8*
  %211 = bitcast %struct.TYPE_16__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %210, i8* align 4 %211, i64 8, i1 false)
  %212 = load i32, i32* @view_page_inv_ctm, align 4
  %213 = bitcast %struct.TYPE_16__* %10 to i64*
  %214 = load i64, i64* %213, align 4
  %215 = call i64 @fz_transform_point(i64 %214, i32 %212)
  %216 = bitcast %struct.TYPE_16__* %16 to i64*
  store i64 %215, i64* %216, align 4
  %217 = bitcast %struct.TYPE_16__* %10 to i8*
  %218 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 8, i1 false)
  %219 = load i32, i32* @ctx, align 4
  %220 = load i64, i64* @selected_annot, align 8
  %221 = bitcast %struct.TYPE_16__* %9 to i64*
  %222 = load i64, i64* %221, align 4
  %223 = bitcast %struct.TYPE_16__* %10 to i64*
  %224 = load i64, i64* %223, align 4
  %225 = call i32 @pdf_set_annot_line(i32 %219, i64 %220, i64 %222, i64 %224)
  br label %226

226:                                              ; preds = %204, %198
  br label %227

227:                                              ; preds = %226, %189
  br label %228

228:                                              ; preds = %227, %85, %81
  ret void
}

declare dso_local i32 @fz_expand_irect(i32, i32) #1

declare dso_local i64 @ui_mouse_inside(i32) #1

declare dso_local i32 @pdf_annot_line(i32, i64, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_make_irect(i32, i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glVertex2f(i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i8* @fz_min(i32, i32) #1

declare dso_local i8* @fz_max(i32, i32) #1

declare dso_local float @pdf_annot_border(i32, i64) #1

declare dso_local void @fz_expand_rect(%struct.TYPE_15__* sret, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, float) #1

declare dso_local float @fz_matrix_expansion(i32) #1

declare dso_local i64 @points_differ(i64, i64, i32) #1

declare dso_local i32 @pdf_set_annot_line(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
