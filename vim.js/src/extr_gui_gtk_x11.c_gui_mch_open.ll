; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_open.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32* }

@INVALCOLOR = common dso_local global i64 0, align 8
@role_argument = common dso_local global i8* null, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"vim-%u-%u-%u\00", align 1
@gui_win_x = common dso_local global i32 0, align 4
@gui_win_y = common dso_local global i32 0, align 4
@WidthValue = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@HeightValue = common dso_local global i32 0, align 4
@p_window = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@Rows = common dso_local global i32 0, align 4
@XValue = common dso_local global i32 0, align 4
@YValue = common dso_local global i32 0, align 4
@p_ghr = common dso_local global i32 0, align 4
@XNegative = common dso_local global i32 0, align 4
@YNegative = common dso_local global i32 0, align 4
@gtk_socket_id = common dso_local global i64 0, align 8
@init_window_hints_state = common dso_local global i32 0, align 4
@check_startup_plug_hints = common dso_local global i32 0, align 4
@foreground_argument = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@background_argument = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@found_reverse_arg = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@mainwin_destroy_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"configure_event\00", align 1
@form_configure_event = common dso_local global i32 0, align 4
@found_iconic_arg = common dso_local global i64 0, align 8
@OK = common dso_local global i32 0, align 4
@GO_MENUS = common dso_local global i32 0, align 4
@GO_TOOLBAR = common dso_local global i32 0, align 4
@TOOLBAR_ICONS = common dso_local global i32 0, align 4
@TOOLBAR_TEXT = common dso_local global i32 0, align 4
@drag_data_received_cb = common dso_local global i32 0, align 4
@gtk_widget_hide = common dso_local global i32 0, align 4
@p_go = common dso_local global i32 0, align 4
@toolbar_flags = common dso_local global i32 0, align 4
@using_gnome = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_open() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i64, i64* @INVALCOLOR, align 8
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* @INVALCOLOR, align 8
  store i64 %14, i64* %2, align 8
  %15 = load i8*, i8** @role_argument, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %19 = call i32 @GTK_WINDOW(i32 %18)
  %20 = load i8*, i8** @role_argument, align 8
  %21 = call i32 @gtk_window_set_role(i32 %19, i8* %20)
  br label %36

22:                                               ; preds = %0
  %23 = call i64 (...) @mch_get_pid()
  %24 = trunc i64 %23 to i32
  %25 = call i64 (...) @g_random_int()
  %26 = trunc i64 %25 to i32
  %27 = call i64 @time(i32* null)
  %28 = trunc i64 %27 to i32
  %29 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %31 = call i32 @GTK_WINDOW(i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @gtk_window_set_role(i32 %31, i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @g_free(i8* %34)
  br label %36

36:                                               ; preds = %22, %17
  %37 = load i32, i32* @gui_win_x, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* @gui_win_y, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %44 = call i32 @GTK_WINDOW(i32 %43)
  %45 = load i32, i32* @gui_win_x, align 4
  %46 = load i32, i32* @gui_win_y, align 4
  %47 = call i32 @gtk_window_move(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %36
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 9), align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %168

51:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 9), align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @XParseGeometry(i8* %53, i32* %9, i32* %10, i32* %7, i32* %8)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @WidthValue, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* @Columns, align 4
  br label %61

61:                                               ; preds = %59, %51
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @HeightValue, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i64, i64* @p_window, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = sub nsw i64 %69, 1
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = call i32 @option_was_set(i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %8, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  store i64 %78, i64* @p_window, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* @Rows, align 4
  br label %81

81:                                               ; preds = %79, %61
  %82 = call i32 (...) @limit_screen_size()
  %83 = call i64 (...) @gui_get_base_width()
  %84 = load i32, i32* @Columns, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %3, align 4
  %90 = call i64 (...) @gui_get_base_height()
  %91 = load i32, i32* @Rows, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = call i32 (...) @get_menu_tool_width()
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = call i32 (...) @get_menu_tool_height()
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @XValue, align 4
  %105 = load i32, i32* @YValue, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %81
  %110 = call i32 @gui_mch_get_screen_dimensions(i32* %11, i32* %12)
  %111 = load i32, i32* @p_ghr, align 4
  %112 = call i32 (...) @get_menu_tool_height()
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = call i32 (...) @get_menu_tool_width()
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @XNegative, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %109
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %3, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %123, %109
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @YNegative, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %142 = call i32 @GTK_WINDOW(i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @gtk_window_move(i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %81
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 9), align 8
  %148 = call i32 @vim_free(i32* %147)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 9), align 8
  %149 = load i64, i64* @gtk_socket_id, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @WidthValue, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @HeightValue, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156, %151
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @update_window_manager_hints(i32 %162, i32 %163)
  store i32 1, i32* @init_window_hints_state, align 4
  %165 = load i32, i32* @check_startup_plug_hints, align 4
  %166 = call i32 @g_timeout_add(i32 1000, i32 %165, i32* null)
  br label %167

167:                                              ; preds = %161, %156, %146
  br label %168

168:                                              ; preds = %167, %48
  %169 = call i64 (...) @gui_get_base_width()
  %170 = load i32, i32* @Columns, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %169, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %3, align 4
  %176 = call i64 (...) @gui_get_base_height()
  %177 = load i32, i32* @Rows, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  %183 = load i64, i64* @gtk_socket_id, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %168
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %187 = call i32 @GTK_WINDOW(i32 %186)
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @gtk_window_resize(i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %168
  %192 = call i32 @update_window_manager_hints(i32 0, i32 0)
  %193 = load i32*, i32** @foreground_argument, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32*, i32** @foreground_argument, align 8
  %197 = call i64 @gui_get_color(i32* %196)
  store i64 %197, i64* %1, align 8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i64, i64* %1, align 8
  %200 = load i64, i64* @INVALCOLOR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i64 @gui_get_color(i32* bitcast ([6 x i8]* @.str.2 to i32*))
  store i64 %203, i64* %1, align 8
  br label %204

204:                                              ; preds = %202, %198
  %205 = load i32*, i32** @background_argument, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** @background_argument, align 8
  %209 = call i64 @gui_get_color(i32* %208)
  store i64 %209, i64* %2, align 8
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i64, i64* %2, align 8
  %212 = load i64, i64* @INVALCOLOR, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i64 @gui_get_color(i32* bitcast ([6 x i8]* @.str.3 to i32*))
  store i64 %215, i64* %2, align 8
  br label %216

216:                                              ; preds = %214, %210
  %217 = load i64, i64* @found_reverse_arg, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %2, align 8
  store i64 %220, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 8), align 8
  %221 = load i64, i64* %1, align 8
  store i64 %221, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 7), align 8
  br label %225

222:                                              ; preds = %216
  %223 = load i64, i64* %1, align 8
  store i64 %223, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 8), align 8
  %224 = load i64, i64* %2, align 8
  store i64 %224, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 7), align 8
  br label %225

225:                                              ; preds = %222, %219
  %226 = call i32 (...) @set_normal_colors()
  %227 = call i32 (...) @gui_check_colors()
  %228 = call i32 (...) @highlight_gui_started()
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %230 = call i32 @GTK_OBJECT(i32 %229)
  %231 = load i32, i32* @mainwin_destroy_cb, align 4
  %232 = call i32 @GTK_SIGNAL_FUNC(i32 %231)
  %233 = call i32 @gtk_signal_connect(i32 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %232, i32* null)
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 6), align 8
  %235 = call i32 @GTK_OBJECT(i32 %234)
  %236 = load i32, i32* @form_configure_event, align 4
  %237 = call i32 @GTK_SIGNAL_FUNC(i32 %236)
  %238 = call i32 @gtk_signal_connect(i32 %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %237, i32* null)
  %239 = load i64, i64* @found_iconic_arg, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %225
  %242 = load i64, i64* @gtk_socket_id, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 (...) @gui_mch_iconify()
  br label %246

246:                                              ; preds = %244, %241, %225
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %248 = call i32 @gtk_widget_show(i32 %247)
  %249 = load i32, i32* @OK, align 4
  ret i32 %249
}

declare dso_local i32 @gtk_window_set_role(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i32, i32) #1

declare dso_local i64 @mch_get_pid(...) #1

declare dso_local i64 @g_random_int(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @gtk_window_move(i32, i32, i32) #1

declare dso_local i32 @XParseGeometry(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @option_was_set(i32*) #1

declare dso_local i32 @limit_screen_size(...) #1

declare dso_local i64 @gui_get_base_width(...) #1

declare dso_local i64 @gui_get_base_height(...) #1

declare dso_local i32 @get_menu_tool_width(...) #1

declare dso_local i32 @get_menu_tool_height(...) #1

declare dso_local i32 @gui_mch_get_screen_dimensions(i32*, i32*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @update_window_manager_hints(i32, i32) #1

declare dso_local i32 @g_timeout_add(i32, i32, i32*) #1

declare dso_local i32 @gtk_window_resize(i32, i32, i32) #1

declare dso_local i64 @gui_get_color(i32*) #1

declare dso_local i32 @set_normal_colors(...) #1

declare dso_local i32 @gui_check_colors(...) #1

declare dso_local i32 @highlight_gui_started(...) #1

declare dso_local i32 @gtk_signal_connect(i32, i8*, i32, i32*) #1

declare dso_local i32 @GTK_OBJECT(i32) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local i32 @gui_mch_iconify(...) #1

declare dso_local i32 @gtk_widget_show(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
