; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c___create_window.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c___create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { double, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i64, %struct.TYPE_18__, i32, i32, i8*, i8* }
%struct.TYPE_18__ = type { i64, double }
%struct.TYPE_20__ = type { i32, i8*, i64, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@XCB_CW_BACK_PIXMAP = common dso_local global i32 0, align 4
@XCB_CW_BORDER_PIXEL = common dso_local global i32 0, align 4
@XCB_CW_BIT_GRAVITY = common dso_local global i32 0, align 4
@XCB_CW_BACKING_STORE = common dso_local global i32 0, align 4
@XCB_CW_EVENT_MASK = common dso_local global i32 0, align 4
@XCB_CW_COLORMAP = common dso_local global i32 0, align 4
@XCB_BACK_PIXMAP_NONE = common dso_local global i32 0, align 4
@XCB_GRAVITY_STATIC = common dso_local global i32 0, align 4
@XCB_BACKING_STORE_NOT_USEFUL = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_EXPOSURE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_BUTTON_PRESS = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_BUTTON_RELEASE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_KEY_PRESS = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_KEY_RELEASE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_KEYMAP_STATE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_STRUCTURE_NOTIFY = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_FOCUS_CHANGE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_BUTTON_1_MOTION = common dso_local global i32 0, align 4
@map = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_16__* null, align 8
@depth = common dso_local global %struct.TYPE_19__* null, align 8
@XCB_WINDOW_CLASS_INPUT_OUTPUT = common dso_local global i32 0, align 4
@visual = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"xcb_create_window() failed error=0x%x\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"xcb create window\00", align 1
@CacheState = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"xcb create gc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"create cairo surface\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"pango cairo font setup\00", align 1
@config = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Auto-detected DPI: %.2lf\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"configure font\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"textbox setup\00", align 1
@MENU_NORMAL_WINDOW = common dso_local global i32 0, align 4
@__const.__create_window.values = private unnamed_addr constant [1 x i32] [i32 1], align 4
@XCB_CW_OVERRIDE_REDIRECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"setup window attributes\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"setup window fullscreen\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@__const.__create_window.wm_class_name = private unnamed_addr constant [10 x i8] c"rofi\00Rofi\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"setup window name and class\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"transparency\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"setup startup notification\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@XCB_ATOM_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__create_window(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [1 x i32], align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [10 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %24 = load i32, i32* @XCB_CW_BACK_PIXMAP, align 4
  %25 = load i32, i32* @XCB_CW_BORDER_PIXEL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @XCB_CW_BIT_GRAVITY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @XCB_CW_BACKING_STORE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @XCB_CW_EVENT_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @XCB_CW_COLORMAP, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %36 = load i32, i32* @XCB_BACK_PIXMAP_NONE, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* @XCB_GRAVITY_STATIC, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @XCB_BACKING_STORE_NOT_USEFUL, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @XCB_EVENT_MASK_EXPOSURE, align 4
  %44 = load i32, i32* @XCB_EVENT_MASK_BUTTON_PRESS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @XCB_EVENT_MASK_BUTTON_RELEASE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @XCB_EVENT_MASK_KEY_PRESS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @XCB_EVENT_MASK_KEY_RELEASE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @XCB_EVENT_MASK_KEYMAP_STATE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @XCB_EVENT_MASK_STRUCTURE_NOTIFY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @XCB_EVENT_MASK_FOCUS_CHANGE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @XCB_EVENT_MASK_BUTTON_1_MOTION, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %42, align 4
  %60 = getelementptr inbounds i32, i32* %42, i64 1
  %61 = load i32, i32* @map, align 4
  store i32 %61, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @xcb_generate_id(i32 %64)
  store i8* %65, i8** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** @depth, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 (...) @xcb_stuff_get_root_window()
  %74 = load i32, i32* @XCB_WINDOW_CLASS_INPUT_OUTPUT, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** @visual, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %3, align 4
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %80 = call i32 @xcb_create_window_checked(i32 %68, i32 %71, i8* %72, i32 %73, i32 0, i32 0, i32 200, i32 100, i32 0, i32 %74, i32 %77, i32 %78, i32* %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call %struct.TYPE_14__* @xcb_request_check(i32 %83, i32 %84)
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %7, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @g_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  %94 = call i32 @exit(i32 %93) #4
  unreachable

95:                                               ; preds = %1
  %96 = call i32 @TICK_N(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @xcb_generate_id(i32 %99)
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 7), align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 7), align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @xcb_create_gc(i32 %103, i8* %104, i8* %105, i32 0, i32 0)
  %107 = call i32 @TICK_N(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @xcb_generate_id(i32 %110)
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 6), align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** @depth, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 6), align 8
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %120 = call i32 @xcb_create_pixmap(i32 %114, i32 %117, i8* %118, i8* %119, i32 200, i32 100)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 6), align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** @visual, align 8
  %126 = call i32 @cairo_xcb_surface_create(i32 %123, i8* %124, %struct.TYPE_17__* %125, i32 200, i32 100)
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 5), align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 5), align 4
  %128 = call i32 @cairo_create(i32 %127)
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 4), align 8
  %129 = call i32 @TICK_N(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32* (...) @cairo_font_options_create()
  store i32* %130, i32** %8, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 5), align 4
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @cairo_surface_get_font_options(i32 %131, i32* %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 4), align 8
  %135 = call i32* @pango_cairo_create_context(i32 %134)
  store i32* %135, i32** %9, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @pango_cairo_context_set_font_options(i32* %136, i32* %137)
  %139 = call i32 @TICK_N(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i8*, i8** %5, align 8
  store i8* %140, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %141 = load i32, i32* %2, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 0), align 8
  %142 = call i32 @monitor_active(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3))
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %151

145:                                              ; preds = %95
  %146 = call i32* (...) @pango_cairo_font_map_get_default()
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %149 = sitofp i32 %148 to double
  %150 = call i32 @pango_cairo_font_map_set_resolution(i32* %147, double %149)
  br label %193

151:                                              ; preds = %95
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %192

157:                                              ; preds = %154, %151
  store double 9.600000e+01, double* %11, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3, i32 0), align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3, i32 1), align 8
  %165 = fmul double %164, 2.540000e+01
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3, i32 0), align 8
  %167 = sitofp i64 %166 to double
  %168 = fdiv double %165, %167
  store double %168, double* %11, align 8
  br label %183

169:                                              ; preds = %160, %157
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load double, double* %173, align 8
  %175 = fmul double %174, 2.540000e+01
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sitofp i64 %180 to double
  %182 = fdiv double %175, %181
  store double %182, double* %11, align 8
  br label %183

183:                                              ; preds = %169, %163
  %184 = load double, double* %11, align 8
  %185 = call i32 @g_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), double %184)
  %186 = call i32* (...) @pango_cairo_font_map_get_default()
  store i32* %186, i32** %12, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = load double, double* %11, align 8
  %189 = call i32 @pango_cairo_font_map_set_resolution(i32* %187, double %188)
  %190 = load double, double* %11, align 8
  %191 = fptosi double %190 to i32
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  br label %192

192:                                              ; preds = %183, %154
  br label %193

193:                                              ; preds = %192, %145
  %194 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %195 = call i32* @box_create(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  store i32* %195, i32** %13, align 8
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @WIDGET(i32* %196)
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 4), align 8
  %199 = call i8* @rofi_theme_get_string(i32 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %198)
  store i8* %199, i8** %14, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %216

202:                                              ; preds = %193
  %203 = load i8*, i8** %14, align 8
  %204 = call i32* @pango_font_description_from_string(i8* %203)
  store i32* %204, i32** %15, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = call i64 @helper_validate_font(i32* %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = call i32 @pango_context_set_font_description(i32* %210, i32* %211)
  br label %213

213:                                              ; preds = %209, %202
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @pango_font_description_free(i32* %214)
  br label %216

216:                                              ; preds = %213, %193
  %217 = call i32* (...) @pango_language_get_default()
  store i32* %217, i32** %16, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load i32*, i32** %16, align 8
  %220 = call i32 @pango_context_set_language(i32* %218, i32* %219)
  %221 = call i32 @TICK_N(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %222 = load i8*, i8** %14, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = call i32 @textbox_set_pango_context(i8* %222, i32* %223)
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @g_object_unref(i32* %225)
  %227 = load i32*, i32** %8, align 8
  %228 = call i32 @cairo_font_options_destroy(i32* %227)
  %229 = call i32 @TICK_N(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %232 = and i32 %230, %231
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %216
  %235 = load i8*, i8** %5, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = call i32 @window_set_atom_prop(i8* %235, i32 %239, i32* %242, i32 1)
  %244 = bitcast [1 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 bitcast ([1 x i32]* @__const.__create_window.values to i8*), i64 4, i1 false)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i8*, i8** %5, align 8
  %249 = load i32, i32* @XCB_CW_OVERRIDE_REDIRECT, align 4
  %250 = getelementptr inbounds [1 x i32], [1 x i32]* %17, i64 0, i64 0
  %251 = call i32 @xcb_change_window_attributes(i32 %247, i8* %248, i32 %249, i32* %250)
  br label %264

252:                                              ; preds = %216
  %253 = load i8*, i8** %5, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 3
  %261 = call i32 @window_set_atom_prop(i8* %253, i32 %257, i32* %260, i32 1)
  %262 = load i8*, i8** %5, align 8
  %263 = call i32 @x11_disable_decoration(i8* %262)
  br label %264

264:                                              ; preds = %252, %234
  %265 = call i32 @TICK_N(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %266 = load i32*, i32** %13, align 8
  %267 = call i32 @WIDGET(i32* %266)
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 3), align 8
  %269 = call i64 @rofi_theme_get_boolean(i32 %267, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %268)
  store i64 %269, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 2), align 8
  %270 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 2), align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %264
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %273, align 4
  %278 = getelementptr inbounds i32, i32* %273, i64 1
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %278, align 4
  %283 = load i8*, i8** %5, align 8
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %289 = call i32 @window_set_atom_prop(i8* %283, i32 %287, i32* %288, i32 2)
  br label %290

290:                                              ; preds = %272, %264
  %291 = call i32 @TICK_N(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %292 = call i32 @rofi_view_set_window_title(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %293 = bitcast [10 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %293, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.__create_window.wm_class_name, i32 0, i32 0), i64 10, i1 false)
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %299 = call i32 @xcb_icccm_set_wm_class(i32 %296, i8* %297, i32 10, i8* %298)
  %300 = call i32 @TICK_N(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @WIDGET(i32* %301)
  %303 = call i8* @rofi_theme_get_string(i32 %302, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* null)
  store i8* %303, i8** %20, align 8
  %304 = load i8*, i8** %20, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %290
  %307 = load i8*, i8** %20, align 8
  %308 = call i32 @rofi_view_setup_fake_transparency(i8* %307)
  br label %319

309:                                              ; preds = %290
  %310 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 2), align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 1), align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 1), align 8
  %317 = call i32 @rofi_view_setup_fake_transparency(i8* %316)
  br label %318

318:                                              ; preds = %315, %312, %309
  br label %319

319:                                              ; preds = %318, %306
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %329 = call i32 @sn_launchee_context_setup_window(i32* %327, i8* %328)
  br label %330

330:                                              ; preds = %324, %319
  %331 = call i32 @TICK_N(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %332 = load i32*, i32** %13, align 8
  %333 = call i32 @WIDGET(i32* %332)
  %334 = call i32 @widget_free(i32 %333)
  %335 = call i32 @TICK_N(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %336 = call i32 (...) @getpid()
  store i32 %336, i32* %21, align 4
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  %339 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %340 = load i32, i32* %21, align 4
  %341 = call i32 @xcb_ewmh_set_wm_pid(%struct.TYPE_15__* %338, i8* %339, i32 %340)
  %342 = call i8* (...) @g_get_host_name()
  store i8* %342, i8** %22, align 8
  %343 = load i8*, i8** %22, align 8
  %344 = call i8* @g_hostname_to_ascii(i8* %343)
  store i8* %344, i8** %23, align 8
  %345 = load i8*, i8** %23, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %359

347:                                              ; preds = %330
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xcb, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %352 = load i32, i32* @XCB_ATOM_STRING, align 4
  %353 = load i8*, i8** %23, align 8
  %354 = call i32 @strlen(i8* %353)
  %355 = load i8*, i8** %23, align 8
  %356 = call i32 @xcb_icccm_set_wm_client_machine(i32 %350, i8* %351, i32 %352, i32 8, i32 %354, i8* %355)
  %357 = load i8*, i8** %23, align 8
  %358 = call i32 @g_free(i8* %357)
  br label %359

359:                                              ; preds = %347, %330
  ret void
}

declare dso_local i8* @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_window_checked(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xcb_stuff_get_root_window(...) #1

declare dso_local %struct.TYPE_14__* @xcb_request_check(i32, i32) #1

declare dso_local i32 @g_error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i32 @xcb_create_gc(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @xcb_create_pixmap(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @cairo_xcb_surface_create(i32, i8*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @cairo_create(i32) #1

declare dso_local i32* @cairo_font_options_create(...) #1

declare dso_local i32 @cairo_surface_get_font_options(i32, i32*) #1

declare dso_local i32* @pango_cairo_create_context(i32) #1

declare dso_local i32 @pango_cairo_context_set_font_options(i32*, i32*) #1

declare dso_local i32 @monitor_active(%struct.TYPE_18__*) #1

declare dso_local i32* @pango_cairo_font_map_get_default(...) #1

declare dso_local i32 @pango_cairo_font_map_set_resolution(i32*, double) #1

declare dso_local i32 @g_debug(i8*, double) #1

declare dso_local i32* @box_create(i32*, i8*, i32) #1

declare dso_local i8* @rofi_theme_get_string(i32, i8*, i32*) #1

declare dso_local i32 @WIDGET(i32*) #1

declare dso_local i32* @pango_font_description_from_string(i8*) #1

declare dso_local i64 @helper_validate_font(i32*, i8*) #1

declare dso_local i32 @pango_context_set_font_description(i32*, i32*) #1

declare dso_local i32 @pango_font_description_free(i32*) #1

declare dso_local i32* @pango_language_get_default(...) #1

declare dso_local i32 @pango_context_set_language(i32*, i32*) #1

declare dso_local i32 @textbox_set_pango_context(i8*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @cairo_font_options_destroy(i32*) #1

declare dso_local i32 @window_set_atom_prop(i8*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @xcb_change_window_attributes(i32, i8*, i32, i32*) #1

declare dso_local i32 @x11_disable_decoration(i8*) #1

declare dso_local i64 @rofi_theme_get_boolean(i32, i8*, i32) #1

declare dso_local i32 @rofi_view_set_window_title(i8*) #1

declare dso_local i32 @xcb_icccm_set_wm_class(i32, i8*, i32, i8*) #1

declare dso_local i32 @rofi_view_setup_fake_transparency(i8*) #1

declare dso_local i32 @sn_launchee_context_setup_window(i32*, i8*) #1

declare dso_local i32 @widget_free(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @xcb_ewmh_set_wm_pid(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i8* @g_get_host_name(...) #1

declare dso_local i8* @g_hostname_to_ascii(i8*) #1

declare dso_local i32 @xcb_icccm_set_wm_client_machine(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
