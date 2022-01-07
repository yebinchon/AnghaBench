; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_page_selection.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_page_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@do_page_selection.pt = internal global %struct.TYPE_25__ zeroinitializer, align 4
@view_page_area = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@view_page_inv_ctm = common dso_local global i32 0, align 4
@GLUT_ACTIVE_CTRL = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@page_text = common dso_local global i32 0, align 4
@FZ_SELECT_WORDS = common dso_local global i32 0, align 4
@GLUT_ACTIVE_SHIFT = common dso_local global i64 0, align 8
@FZ_SELECT_LINES = common dso_local global i32 0, align 4
@GL_ONE_MINUS_DST_COLOR = common dso_local global i32 0, align 4
@GL_ZERO = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_page_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_page_selection() #0 {
  %1 = alloca [1000 x %struct.TYPE_24__], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__, align 4
  %5 = alloca %struct.TYPE_25__, align 4
  %6 = alloca %struct.TYPE_25__, align 4
  %7 = alloca %struct.TYPE_25__, align 4
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @view_page_area, align 4
  %11 = call i64 @ui_mouse_inside(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %0
  store %struct.TYPE_25__* @do_page_selection.pt, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 5), align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 4), align 8
  %15 = icmp ne %struct.TYPE_25__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  store %struct.TYPE_25__* @do_page_selection.pt, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 4), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 3), align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @do_page_selection.pt, i32 0, i32 3), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @do_page_selection.pt, i32 0, i32 2), align 4
  br label %22

22:                                               ; preds = %19, %16, %13
  br label %23

23:                                               ; preds = %22, %0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 4), align 8
  %25 = icmp eq %struct.TYPE_25__* %24, @do_page_selection.pt
  br i1 %25, label %26, label %178

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @do_page_selection.pt, i32 0, i32 3), align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @do_page_selection.pt, i32 0, i32 2), align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 3), align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 1
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @view_page_inv_ctm, align 4
  %40 = bitcast %struct.TYPE_25__* %4 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 4
  %45 = call { i64, i64 } @fz_transform_point(i64 %42, i64 %44, i32 %39)
  %46 = bitcast %struct.TYPE_25__* %6 to { i64, i64 }*
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i64 } %45, 0
  store i64 %48, i64* %47, align 4
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i64 } %45, 1
  store i64 %50, i64* %49, align 4
  %51 = bitcast %struct.TYPE_25__* %4 to i8*
  %52 = bitcast %struct.TYPE_25__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 16, i1 false)
  %53 = load i32, i32* @view_page_inv_ctm, align 4
  %54 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 4
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 4
  %59 = call { i64, i64 } @fz_transform_point(i64 %56, i64 %58, i32 %53)
  %60 = bitcast %struct.TYPE_25__* %7 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 4
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 4
  %65 = bitcast %struct.TYPE_25__* %5 to i8*
  %66 = bitcast %struct.TYPE_25__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 16, i1 false)
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 0), align 8
  %68 = load i64, i64* @GLUT_ACTIVE_CTRL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %26
  %71 = load i32, i32* @ctx, align 4
  %72 = load i32, i32* @page_text, align 4
  %73 = load i32, i32* @FZ_SELECT_WORDS, align 4
  %74 = call i32 @fz_snap_selection(i32 %71, i32 %72, %struct.TYPE_25__* %4, %struct.TYPE_25__* %5, i32 %73)
  br label %87

75:                                               ; preds = %26
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 0), align 8
  %77 = load i64, i64* @GLUT_ACTIVE_CTRL, align 8
  %78 = load i64, i64* @GLUT_ACTIVE_SHIFT, align 8
  %79 = add nsw i64 %77, %78
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @ctx, align 4
  %83 = load i32, i32* @page_text, align 4
  %84 = load i32, i32* @FZ_SELECT_LINES, align 4
  %85 = call i32 @fz_snap_selection(i32 %82, i32 %83, %struct.TYPE_25__* %4, %struct.TYPE_25__* %5, i32 %84)
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* @ctx, align 4
  %89 = load i32, i32* @page_text, align 4
  %90 = getelementptr inbounds [1000 x %struct.TYPE_24__], [1000 x %struct.TYPE_24__]* %1, i64 0, i64 0
  %91 = getelementptr inbounds [1000 x %struct.TYPE_24__], [1000 x %struct.TYPE_24__]* %1, i64 0, i64 0
  %92 = call i32 @nelem(%struct.TYPE_24__* %91)
  %93 = bitcast %struct.TYPE_25__* %4 to { i64, i64 }*
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 4
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 4
  %98 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 4
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 1
  %102 = load i64, i64* %101, align 4
  %103 = call i32 @fz_highlight_selection(i32 %88, i32 %89, i64 %95, i64 %97, i64 %100, i64 %102, %struct.TYPE_24__* %90, i32 %92)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* @GL_ONE_MINUS_DST_COLOR, align 4
  %105 = load i32, i32* @GL_ZERO, align 4
  %106 = call i32 @glBlendFunc(i32 %104, i32 %105)
  %107 = load i32, i32* @GL_BLEND, align 4
  %108 = call i32 @glEnable(i32 %107)
  %109 = call i32 @glColor4f(i32 1, i32 1, i32 1, i32 1)
  %110 = load i32, i32* @GL_QUADS, align 4
  %111 = call i32 @glBegin(i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %149, %87
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %112
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1000 x %struct.TYPE_24__], [1000 x %struct.TYPE_24__]* %1, i64 0, i64 %118
  %120 = load i32, i32* @view_page_ctm, align 4
  call void @fz_transform_quad(%struct.TYPE_24__* sret %8, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %119, i32 %120)
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @glVertex2f(i32 %123, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @glVertex2f(i32 %130, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @glVertex2f(i32 %137, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @glVertex2f(i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %116
  %150 = load i32, i32* %2, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %2, align 4
  br label %112

152:                                              ; preds = %112
  %153 = call i32 (...) @glEnd()
  %154 = load i32, i32* @GL_BLEND, align 4
  %155 = call i32 @glDisable(i32 %154)
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 1), align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* @ctx, align 4
  %160 = load i32, i32* @page_text, align 4
  %161 = bitcast %struct.TYPE_25__* %4 to { i64, i64 }*
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 4
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1
  %165 = load i64, i64* %164, align 4
  %166 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 4
  %169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %166, i32 0, i32 1
  %170 = load i64, i64* %169, align 4
  %171 = call i8* @fz_copy_selection(i32 %159, i32 %160, i64 %163, i64 %165, i64 %168, i64 %170, i32 0)
  store i8* %171, i8** %9, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @ui_set_clipboard(i8* %172)
  %174 = load i32, i32* @ctx, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @fz_free(i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %158, %152
  br label %178

178:                                              ; preds = %177, %23
  ret void
}

declare dso_local i64 @ui_mouse_inside(i32) #1

declare dso_local { i64, i64 } @fz_transform_point(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_snap_selection(i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @fz_highlight_selection(i32, i32, i64, i64, i64, i64, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @nelem(%struct.TYPE_24__*) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local void @fz_transform_quad(%struct.TYPE_24__* sret, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8, i32) #1

declare dso_local i32 @glVertex2f(i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i8* @fz_copy_selection(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @ui_set_clipboard(i8*) #1

declare dso_local i32 @fz_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
