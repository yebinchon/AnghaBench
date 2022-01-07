; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_draw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, double, double, i32, %struct.TYPE_7__, i32, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@TB_INDICATOR = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global double 0.000000e+00, align 8
@PANGO_SCALE = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_OVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"text-color\00", align 1
@TB_EDITABLE = common dso_local global i32 0, align 4
@SELECTED = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @textbox_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textbox_draw(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %240

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TB_INDICATOR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load double, double* @DOT_OFFSET, align 8
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi double [ %35, %34 ], [ 0.000000e+00, %36 ]
  %39 = fptoui double %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i32 @__textbox_update_pango_text(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = call i32 @WIDGET(%struct.TYPE_8__* %48)
  %50 = call i32 @widget_padding_get_left(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i32 @WIDGET(%struct.TYPE_8__* %51)
  %53 = call i32 @widget_padding_get_top(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pango_font_metrics_get_ascent(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pango_layout_get_baseline(i32 %60)
  %62 = sub nsw i32 %57, %61
  %63 = load i32, i32* @PANGO_SCALE, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pango_layout_get_pixel_size(i32 %67, i32* %10, i32* %11)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fcmp ogt double %71, 1.000000e-03
  br i1 %72, label %73, label %96

73:                                               ; preds = %47
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = call i32 @WIDGET(%struct.TYPE_8__* %74)
  %76 = call i32 @widget_padding_get_bottom(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sitofp i32 %86 to double
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  %92 = load i32, i32* %8, align 4
  %93 = sitofp i32 %92 to double
  %94 = fadd double %91, %93
  %95 = fptosi double %94 to i32
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %73, %47
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load double, double* %104, align 8
  %106 = fcmp ogt double %105, 1.000000e-03
  br i1 %106, label %107, label %132

107:                                              ; preds = %96
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = call i32 @WIDGET(%struct.TYPE_8__* %112)
  %114 = call i64 @widget_padding_get_padding_width(i32 %113)
  %115 = sub nsw i64 %111, %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  %119 = call i32 @MAX(i32 0, i64 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load double, double* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sitofp i32 %123 to double
  %125 = fmul double %122, %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = call i32 @WIDGET(%struct.TYPE_8__* %126)
  %128 = call i32 @widget_padding_get_left(i32 %127)
  %129 = sitofp i32 %128 to double
  %130 = fadd double %125, %129
  %131 = fptosi double %130 to i32
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %107, %96
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @CAIRO_OPERATOR_OVER, align 4
  %135 = call i32 @cairo_set_operator(i32* %133, i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @cairo_set_source_rgb(i32* %136, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = call i32 @WIDGET(%struct.TYPE_8__* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @rofi_theme_get_color(i32 %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TB_EDITABLE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %201

148:                                              ; preds = %132
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %201

153:                                              ; preds = %148
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @pango_layout_get_text(i32 %156)
  store i8* %157, i8** %14, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @g_utf8_strlen(i8* %161, i32 -1)
  %163 = call i32 @MIN(i32 %160, i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i8* @g_utf8_offset_to_pointer(i8* %164, i32 %165)
  store i8* %166, i8** %17, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @pango_layout_get_cursor_pos(i32 %169, i32 %175, %struct.TYPE_9__* %16, i32* null)
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @PANGO_SCALE, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %18, align 4
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PANGO_SCALE, align 4
  %184 = sdiv i32 %182, %183
  store i32 %184, i32* %19, align 4
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PANGO_SCALE, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %20, align 4
  store i32 2, i32* %21, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @cairo_rectangle(i32* %189, i32 %192, i32 %195, i32 %196, i32 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @cairo_fill(i32* %199)
  br label %201

201:                                              ; preds = %153, %148, %132
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @cairo_move_to(i32* %202, i32 %203, i32 %204)
  %206 = load i32*, i32** %4, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @pango_cairo_show_layout(i32* %206, i32 %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @TB_INDICATOR, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* @TB_INDICATOR, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %201
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SELECTED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %218
  %226 = load i32*, i32** %4, align 8
  %227 = load double, double* @DOT_OFFSET, align 8
  %228 = fdiv double %227, 2.000000e+00
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sitofp i32 %232 to double
  %234 = fdiv double %233, 2.000000e+00
  %235 = load double, double* @M_PI, align 8
  %236 = fmul double 2.000000e+00, %235
  %237 = call i32 @cairo_arc(i32* %226, double %228, double %234, double 2.000000e+00, i32 0, double %236)
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @cairo_fill(i32* %238)
  br label %240

240:                                              ; preds = %24, %225, %218, %201
  ret void
}

declare dso_local i32 @__textbox_update_pango_text(%struct.TYPE_8__*) #1

declare dso_local i32 @widget_padding_get_left(i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_8__*) #1

declare dso_local i32 @widget_padding_get_top(i32) #1

declare dso_local i32 @pango_font_metrics_get_ascent(i32) #1

declare dso_local i32 @pango_layout_get_baseline(i32) #1

declare dso_local i32 @pango_layout_get_pixel_size(i32, i32*, i32*) #1

declare dso_local i32 @widget_padding_get_bottom(i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i64 @widget_padding_get_padding_width(i32) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_set_source_rgb(i32*, double, double, double) #1

declare dso_local i32 @rofi_theme_get_color(i32, i8*, i32*) #1

declare dso_local i8* @pango_layout_get_text(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @g_utf8_strlen(i8*, i32) #1

declare dso_local i8* @g_utf8_offset_to_pointer(i8*, i32) #1

declare dso_local i32 @pango_layout_get_cursor_pos(i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_cairo_show_layout(i32*, i32) #1

declare dso_local i32 @cairo_arc(i32*, double, double, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
