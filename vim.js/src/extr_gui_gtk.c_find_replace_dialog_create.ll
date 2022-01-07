; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_find_replace_dialog_create.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_find_replace_dialog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@p_ic = common dso_local global i32 0, align 4
@repl_widgets = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@find_widgets = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@output_conv = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"VIM - Search and Replace...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"VIM - Search...\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Find what:\00", align 1
@GTK_FILL = common dso_local global i32 0, align 4
@GTK_EXPAND = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"key_press_event\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Replace with:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@FRD_R_FINDNEXT = common dso_local global i32 0, align 4
@FRD_FINDNEXT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Match whole word only\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Match case\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@GTK_STOCK_FIND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"Find Next\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@GTK_CAN_DEFAULT = common dso_local global i32 0, align 4
@GTK_STOCK_CONVERT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@FRD_REPLACE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"Replace All\00", align 1
@FRD_REPLACEALL = common dso_local global i32 0, align 4
@GTK_STOCK_CLOSE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"delete_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @find_replace_dialog_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_replace_dialog_create(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @p_ic, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  store i64* null, i64** %15, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, %struct.TYPE_9__* @repl_widgets, %struct.TYPE_9__* @find_widgets
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %11, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = call i64* @get_find_dialog_text(i64* %26, i32* %13, i32* %14)
  store i64* %27, i64** %12, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @output_conv, i32 0, i32 0), align 8
  %32 = load i64, i64* @CONV_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64*, i64** %12, align 8
  store i64* %35, i64** %16, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = call i64* @string_convert(%struct.TYPE_10__* @output_conv, i64* %36, i32* null)
  store i64* %37, i64** %12, align 8
  %38 = load i64*, i64** %16, align 8
  %39 = call i32 @vim_free(i64* %38)
  br label %40

40:                                               ; preds = %34, %30, %2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load i64*, i64** %12, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @GTK_ENTRY(i32* %51)
  %53 = load i64*, i64** %12, align 8
  %54 = bitcast i64* %53 to i8*
  %55 = call i32 @gtk_entry_set_text(i32 %52, i8* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @GTK_TOGGLE_BUTTON(i32* %58)
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @gtk_toggle_button_set_state(i32 %59, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @GTK_TOGGLE_BUTTON(i32* %64)
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @gtk_toggle_button_set_state(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %48, %45
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @GTK_WINDOW(i32* %71)
  %73 = call i32 @gtk_window_present(i32 %72)
  %74 = load i64*, i64** %12, align 8
  %75 = call i32 @vim_free(i64* %74)
  br label %591

76:                                               ; preds = %40
  %77 = call i32* (...) @gtk_dialog_new()
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call %struct.TYPE_12__* @GTK_DIALOG(i32* %82)
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @gtk_dialog_set_has_separator(%struct.TYPE_12__* %83, i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @GTK_WINDOW(i32* %88)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 0), align 8
  %91 = call i32 @GTK_WINDOW(i32* %90)
  %92 = call i32 @gtk_window_set_transient_for(i32 %89, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @GTK_WINDOW(i32* %95)
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @gtk_window_set_destroy_with_parent(i32 %96, i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %76
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @GTK_WINDOW(i32* %104)
  %106 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %106)
  %108 = call i32 @gtk_window_set_title(i32 %105, i32 %107)
  br label %117

109:                                              ; preds = %76
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @GTK_WINDOW(i32* %112)
  %114 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %115 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %114)
  %116 = call i32 @gtk_window_set_title(i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32* @gtk_hbox_new(i32 %118, i32 0)
  store i32* %119, i32** %5, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @GTK_CONTAINER(i32* %120)
  %122 = call i32 @gtk_container_set_border_width(i32 %121, i32 10)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call %struct.TYPE_12__* @GTK_DIALOG(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @GTK_CONTAINER(i32* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @gtk_container_add(i32 %129, i32* %130)
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %117
  %135 = load i32, i32* @FALSE, align 4
  %136 = call i32* @gtk_table_new(i32 1024, i32 4, i32 %135)
  store i32* %136, i32** %7, align 8
  br label %140

137:                                              ; preds = %117
  %138 = load i32, i32* @FALSE, align 4
  %139 = call i32* @gtk_table_new(i32 1024, i32 3, i32 %138)
  store i32* %139, i32** %7, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @GTK_BOX(i32* %141)
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* @TRUE, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @gtk_box_pack_start(i32 %142, i32* %143, i32 %144, i32 %145, i32 0)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @GTK_CONTAINER(i32* %147)
  %149 = call i32 @gtk_container_border_width(i32 %148, i32 4)
  %150 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %151 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %150)
  %152 = call i32* @gtk_label_new(i32 %151)
  store i32* %152, i32** %8, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @GTK_MISC(i32* %153)
  %155 = call i32 @gtk_misc_set_alignment(i32 %154, i32 0, i32 0)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @GTK_TABLE(i32* %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @GTK_FILL, align 4
  %160 = load i32, i32* @GTK_EXPAND, align 4
  %161 = call i32 @gtk_table_attach(i32 %157, i32* %158, i32 0, i32 1, i32 0, i32 1, i32 %159, i32 %160, i32 2, i32 2)
  %162 = call i8* (...) @gtk_entry_new()
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 8
  store i32* %163, i32** %165, align 8
  %166 = load i64*, i64** %12, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %140
  %169 = load i64*, i64** %12, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NUL, align 8
  %173 = icmp ne i64 %171, %172
  br label %174

174:                                              ; preds = %168, %140
  %175 = phi i1 [ false, %140 ], [ %173, %168 ]
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %10, align 4
  %177 = load i64*, i64** %12, align 8
  %178 = icmp ne i64* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 8
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @GTK_ENTRY(i32* %182)
  %184 = load i64*, i64** %12, align 8
  %185 = bitcast i64* %184 to i8*
  %186 = call i32 @gtk_entry_set_text(i32 %183, i8* %185)
  br label %187

187:                                              ; preds = %179, %174
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 8
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @GTK_OBJECT(i32* %190)
  %192 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @entry_changed_cb)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @gtk_signal_connect(i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32* %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 8
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @GTK_OBJECT(i32* %199)
  %201 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_key_press_event)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = ptrtoint %struct.TYPE_9__* %202 to i32
  %204 = call i32 @gtk_signal_connect_after(i32 %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %201, i32 %203)
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @GTK_TABLE(i32* %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 8
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @GTK_EXPAND, align 4
  %211 = load i32, i32* @GTK_FILL, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @GTK_EXPAND, align 4
  %214 = call i32 @gtk_table_attach(i32 %206, i32* %209, i32 1, i32 1024, i32 0, i32 1, i32 %212, i32 %213, i32 2, i32 2)
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %269

217:                                              ; preds = %187
  %218 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %219 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %218)
  %220 = call i32* @gtk_label_new(i32 %219)
  store i32* %220, i32** %8, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = call i32 @GTK_MISC(i32* %221)
  %223 = call i32 @gtk_misc_set_alignment(i32 %222, i32 0, i32 0)
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @GTK_TABLE(i32* %224)
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* @GTK_FILL, align 4
  %228 = load i32, i32* @GTK_EXPAND, align 4
  %229 = call i32 @gtk_table_attach(i32 %225, i32* %226, i32 0, i32 1, i32 1, i32 2, i32 %227, i32 %228, i32 2, i32 2)
  %230 = call i8* (...) @gtk_entry_new()
  %231 = bitcast i8* %230 to i32*
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 9
  store i32* %231, i32** %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 9
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @GTK_OBJECT(i32* %236)
  %238 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_replace_cb)
  %239 = load i32, i32* @FRD_R_FINDNEXT, align 4
  %240 = call i32* @GINT_TO_POINTER(i32 %239)
  %241 = call i32 @gtk_signal_connect(i32 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %238, i32* %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @GTK_OBJECT(i32* %244)
  %246 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_key_press_event)
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %248 = ptrtoint %struct.TYPE_9__* %247 to i32
  %249 = call i32 @gtk_signal_connect_after(i32 %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %248)
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @GTK_TABLE(i32* %250)
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @GTK_EXPAND, align 4
  %256 = load i32, i32* @GTK_FILL, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @GTK_EXPAND, align 4
  %259 = call i32 @gtk_table_attach(i32 %251, i32* %254, i32 1, i32 1024, i32 1, i32 2, i32 %257, i32 %258, i32 2, i32 2)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 8
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @GTK_OBJECT(i32* %262)
  %264 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @entry_activate_cb)
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 9
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @gtk_signal_connect(i32 %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %264, i32* %267)
  br label %278

269:                                              ; preds = %187
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 8
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @GTK_OBJECT(i32* %272)
  %274 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_replace_cb)
  %275 = load i32, i32* @FRD_FINDNEXT, align 4
  %276 = call i32* @GINT_TO_POINTER(i32 %275)
  %277 = call i32 @gtk_signal_connect(i32 %273, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %274, i32* %276)
  br label %278

278:                                              ; preds = %269, %217
  %279 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %280 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %279)
  %281 = call i8* @gtk_check_button_new_with_label(i32 %280)
  %282 = bitcast i8* %281 to i32*
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 7
  store i32* %282, i32** %284, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 7
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @GTK_TOGGLE_BUTTON(i32* %287)
  %289 = load i32, i32* %13, align 4
  %290 = call i32 @gtk_toggle_button_set_state(i32 %288, i32 %289)
  %291 = load i32, i32* %4, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %278
  %294 = load i32*, i32** %7, align 8
  %295 = call i32 @GTK_TABLE(i32* %294)
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 7
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* @GTK_FILL, align 4
  %300 = load i32, i32* @GTK_EXPAND, align 4
  %301 = call i32 @gtk_table_attach(i32 %295, i32* %298, i32 0, i32 1023, i32 2, i32 3, i32 %299, i32 %300, i32 2, i32 2)
  br label %311

302:                                              ; preds = %278
  %303 = load i32*, i32** %7, align 8
  %304 = call i32 @GTK_TABLE(i32* %303)
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* @GTK_FILL, align 4
  %309 = load i32, i32* @GTK_EXPAND, align 4
  %310 = call i32 @gtk_table_attach(i32 %304, i32* %307, i32 0, i32 1023, i32 1, i32 2, i32 %308, i32 %309, i32 2, i32 2)
  br label %311

311:                                              ; preds = %302, %293
  %312 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %313 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %312)
  %314 = call i8* @gtk_check_button_new_with_label(i32 %313)
  %315 = bitcast i8* %314 to i32*
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 6
  store i32* %315, i32** %317, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 6
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @GTK_TOGGLE_BUTTON(i32* %320)
  %322 = load i32, i32* %14, align 4
  %323 = call i32 @gtk_toggle_button_set_state(i32 %321, i32 %322)
  %324 = load i32, i32* %4, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %311
  %327 = load i32*, i32** %7, align 8
  %328 = call i32 @GTK_TABLE(i32* %327)
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 6
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* @GTK_FILL, align 4
  %333 = load i32, i32* @GTK_EXPAND, align 4
  %334 = call i32 @gtk_table_attach(i32 %328, i32* %331, i32 0, i32 1023, i32 3, i32 4, i32 %332, i32 %333, i32 2, i32 2)
  br label %344

335:                                              ; preds = %311
  %336 = load i32*, i32** %7, align 8
  %337 = call i32 @GTK_TABLE(i32* %336)
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 6
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* @GTK_FILL, align 4
  %342 = load i32, i32* @GTK_EXPAND, align 4
  %343 = call i32 @gtk_table_attach(i32 %337, i32* %340, i32 0, i32 1023, i32 2, i32 3, i32 %341, i32 %342, i32 2, i32 2)
  br label %344

344:                                              ; preds = %335, %326
  %345 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %346 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %345)
  %347 = call i32* @gtk_frame_new(i32 %346)
  store i32* %347, i32** %8, align 8
  %348 = load i32, i32* %4, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %344
  %351 = load i32*, i32** %7, align 8
  %352 = call i32 @GTK_TABLE(i32* %351)
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* @GTK_FILL, align 4
  %355 = load i32, i32* @GTK_FILL, align 4
  %356 = call i32 @gtk_table_attach(i32 %352, i32* %353, i32 1023, i32 1024, i32 2, i32 4, i32 %354, i32 %355, i32 2, i32 2)
  br label %364

357:                                              ; preds = %344
  %358 = load i32*, i32** %7, align 8
  %359 = call i32 @GTK_TABLE(i32* %358)
  %360 = load i32*, i32** %8, align 8
  %361 = load i32, i32* @GTK_FILL, align 4
  %362 = load i32, i32* @GTK_FILL, align 4
  %363 = call i32 @gtk_table_attach(i32 %359, i32* %360, i32 1023, i32 1024, i32 1, i32 3, i32 %361, i32 %362, i32 2, i32 2)
  br label %364

364:                                              ; preds = %357, %350
  %365 = load i32, i32* @FALSE, align 4
  %366 = call i32* @gtk_vbox_new(i32 %365, i32 0)
  store i32* %366, i32** %9, align 8
  %367 = load i32*, i32** %9, align 8
  %368 = call i32 @GTK_CONTAINER(i32* %367)
  %369 = call i32 @gtk_container_border_width(i32 %368, i32 0)
  %370 = load i32*, i32** %8, align 8
  %371 = call i32 @GTK_CONTAINER(i32* %370)
  %372 = load i32*, i32** %9, align 8
  %373 = call i32 @gtk_container_add(i32 %371, i32* %372)
  %374 = call i32 @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %375 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %374)
  %376 = call i8* @gtk_radio_button_new_with_label(i32* null, i32 %375)
  %377 = bitcast i8* %376 to i32*
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 5
  store i32* %377, i32** %379, align 8
  %380 = load i32*, i32** %9, align 8
  %381 = call i32 @GTK_BOX(i32* %380)
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 5
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* @TRUE, align 4
  %386 = load i32, i32* @TRUE, align 4
  %387 = call i32 @gtk_box_pack_start(i32 %381, i32* %384, i32 %385, i32 %386, i32 0)
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 5
  %390 = load i32*, i32** %389, align 8
  %391 = call i32 @GTK_RADIO_BUTTON(i32* %390)
  %392 = call i32* @gtk_radio_button_group(i32 %391)
  %393 = call i32 @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %394 = call i32 (i64**, i32, ...) bitcast (i32 (...)* @convert_localized_message to i32 (i64**, i32, ...)*)(i64** %15, i32 %393)
  %395 = call i8* @gtk_radio_button_new_with_label(i32* %392, i32 %394)
  %396 = bitcast i8* %395 to i32*
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 4
  store i32* %396, i32** %398, align 8
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 4
  %401 = load i32*, i32** %400, align 8
  %402 = call i32 @GTK_TOGGLE_BUTTON(i32* %401)
  %403 = load i32, i32* @TRUE, align 4
  %404 = call i32 @gtk_toggle_button_set_state(i32 %402, i32 %403)
  %405 = load i32*, i32** %9, align 8
  %406 = call i32 @GTK_CONTAINER(i32* %405)
  %407 = call i32 @gtk_container_set_border_width(i32 %406, i32 2)
  %408 = load i32*, i32** %9, align 8
  %409 = call i32 @GTK_BOX(i32* %408)
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 4
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* @TRUE, align 4
  %414 = load i32, i32* @TRUE, align 4
  %415 = call i32 @gtk_box_pack_start(i32 %409, i32* %412, i32 %413, i32 %414, i32 0)
  %416 = call i32* (...) @gtk_vbutton_box_new()
  store i32* %416, i32** %6, align 8
  %417 = load i32*, i32** %6, align 8
  %418 = call i32 @GTK_CONTAINER(i32* %417)
  %419 = call i32 @gtk_container_border_width(i32 %418, i32 2)
  %420 = load i32*, i32** %5, align 8
  %421 = call i32 @GTK_BOX(i32* %420)
  %422 = load i32*, i32** %6, align 8
  %423 = load i32, i32* @FALSE, align 4
  %424 = load i32, i32* @FALSE, align 4
  %425 = call i32 @gtk_box_pack_end(i32 %421, i32* %422, i32 %423, i32 %424, i32 0)
  %426 = load i32, i32* @GTK_STOCK_FIND, align 4
  %427 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %428 = call i8* @create_image_button(i32 %426, i32 %427)
  %429 = bitcast i8* %428 to i32*
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 3
  store i32* %429, i32** %431, align 8
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 3
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %10, align 4
  %436 = call i32 @gtk_widget_set_sensitive(i32* %434, i32 %435)
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @GTK_OBJECT(i32* %439)
  %441 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_replace_cb)
  %442 = load i32, i32* %4, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %364
  %445 = load i32, i32* @FRD_R_FINDNEXT, align 4
  %446 = call i32* @GINT_TO_POINTER(i32 %445)
  br label %450

447:                                              ; preds = %364
  %448 = load i32, i32* @FRD_FINDNEXT, align 4
  %449 = call i32* @GINT_TO_POINTER(i32 %448)
  br label %450

450:                                              ; preds = %447, %444
  %451 = phi i32* [ %446, %444 ], [ %449, %447 ]
  %452 = call i32 @gtk_signal_connect(i32 %440, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %441, i32* %451)
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 3
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %457 = call i32 @GTK_WIDGET_SET_FLAGS(i32* %455, i32 %456)
  %458 = load i32*, i32** %6, align 8
  %459 = call i32 @GTK_BOX(i32* %458)
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 3
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* @FALSE, align 4
  %464 = load i32, i32* @FALSE, align 4
  %465 = call i32 @gtk_box_pack_start(i32 %459, i32* %462, i32 %463, i32 %464, i32 0)
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 3
  %468 = load i32*, i32** %467, align 8
  %469 = call i32 @gtk_widget_grab_default(i32* %468)
  %470 = load i32, i32* %4, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %537

472:                                              ; preds = %450
  %473 = load i32, i32* @GTK_STOCK_CONVERT, align 4
  %474 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %475 = call i8* @create_image_button(i32 %473, i32 %474)
  %476 = bitcast i8* %475 to i32*
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 2
  store i32* %476, i32** %478, align 8
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 2
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %10, align 4
  %483 = call i32 @gtk_widget_set_sensitive(i32* %481, i32 %482)
  %484 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %484, i32 0, i32 2
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %488 = call i32 @GTK_WIDGET_SET_FLAGS(i32* %486, i32 %487)
  %489 = load i32*, i32** %6, align 8
  %490 = call i32 @GTK_BOX(i32* %489)
  %491 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 2
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* @FALSE, align 4
  %495 = load i32, i32* @FALSE, align 4
  %496 = call i32 @gtk_box_pack_start(i32 %490, i32* %493, i32 %494, i32 %495, i32 0)
  %497 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 2
  %499 = load i32*, i32** %498, align 8
  %500 = call i32 @GTK_OBJECT(i32* %499)
  %501 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_replace_cb)
  %502 = load i32, i32* @FRD_REPLACE, align 4
  %503 = call i32* @GINT_TO_POINTER(i32 %502)
  %504 = call i32 @gtk_signal_connect(i32 %500, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %501, i32* %503)
  %505 = load i32, i32* @GTK_STOCK_CONVERT, align 4
  %506 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %507 = call i8* @create_image_button(i32 %505, i32 %506)
  %508 = bitcast i8* %507 to i32*
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 1
  store i32* %508, i32** %510, align 8
  %511 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 1
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %10, align 4
  %515 = call i32 @gtk_widget_set_sensitive(i32* %513, i32 %514)
  %516 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 1
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %520 = call i32 @GTK_WIDGET_SET_FLAGS(i32* %518, i32 %519)
  %521 = load i32*, i32** %6, align 8
  %522 = call i32 @GTK_BOX(i32* %521)
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 1
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* @FALSE, align 4
  %527 = load i32, i32* @FALSE, align 4
  %528 = call i32 @gtk_box_pack_start(i32 %522, i32* %525, i32 %526, i32 %527, i32 0)
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  %532 = call i32 @GTK_OBJECT(i32* %531)
  %533 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @find_replace_cb)
  %534 = load i32, i32* @FRD_REPLACEALL, align 4
  %535 = call i32* @GINT_TO_POINTER(i32 %534)
  %536 = call i32 @gtk_signal_connect(i32 %532, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %533, i32* %535)
  br label %537

537:                                              ; preds = %472, %450
  %538 = load i32, i32* @GTK_STOCK_CLOSE, align 4
  %539 = call i32* @gtk_button_new_from_stock(i32 %538)
  store i32* %539, i32** %8, align 8
  %540 = load i32*, i32** %8, align 8
  %541 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %542 = call i32 @GTK_WIDGET_SET_FLAGS(i32* %540, i32 %541)
  %543 = load i32*, i32** %6, align 8
  %544 = call i32 @GTK_BOX(i32* %543)
  %545 = load i32*, i32** %8, align 8
  %546 = load i32, i32* @FALSE, align 4
  %547 = load i32, i32* @FALSE, align 4
  %548 = call i32 @gtk_box_pack_end(i32 %544, i32* %545, i32 %546, i32 %547, i32 0)
  %549 = load i32*, i32** %8, align 8
  %550 = call i32 @GTK_OBJECT(i32* %549)
  %551 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @gtk_widget_hide)
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 0
  %554 = load i32*, i32** %553, align 8
  %555 = call i32 @GTK_OBJECT(i32* %554)
  %556 = call i32 @gtk_signal_connect_object(i32 %550, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %551, i32 %555)
  %557 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 0
  %559 = load i32*, i32** %558, align 8
  %560 = call i32 @GTK_OBJECT(i32* %559)
  %561 = call i32 @GTK_SIGNAL_FUNC(i32 (i32)* @gtk_widget_hide_on_delete)
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %562, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = call i32 @GTK_OBJECT(i32* %564)
  %566 = call i32 @gtk_signal_connect_object(i32 %560, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %561, i32 %565)
  %567 = call i32* (...) @gtk_vseparator_new()
  store i32* %567, i32** %8, align 8
  %568 = load i32*, i32** %5, align 8
  %569 = call i32 @GTK_BOX(i32* %568)
  %570 = load i32*, i32** %8, align 8
  %571 = load i32, i32* @FALSE, align 4
  %572 = load i32, i32* @FALSE, align 4
  %573 = call i32 @gtk_box_pack_end(i32 %569, i32* %570, i32 %571, i32 %572, i32 10)
  %574 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = call %struct.TYPE_12__* @GTK_DIALOG(i32* %576)
  %578 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @gtk_widget_hide(i32 %579)
  %581 = load i32*, i32** %5, align 8
  %582 = call i32 @gtk_widget_show_all(i32* %581)
  %583 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 0
  %585 = load i32*, i32** %584, align 8
  %586 = call i32 @gtk_widget_show(i32* %585)
  %587 = load i64*, i64** %12, align 8
  %588 = call i32 @vim_free(i64* %587)
  %589 = load i64*, i64** %15, align 8
  %590 = call i32 @vim_free(i64* %589)
  br label %591

591:                                              ; preds = %537, %68
  ret void
}

declare dso_local i64* @get_find_dialog_text(i64*, i32*, i32*) #1

declare dso_local i64* @string_convert(%struct.TYPE_10__*, i64*, i32*) #1

declare dso_local i32 @vim_free(i64*) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i32 @gtk_toggle_button_set_state(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_BUTTON(i32*) #1

declare dso_local i32 @gtk_window_present(i32) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32* @gtk_dialog_new(...) #1

declare dso_local i32 @gtk_dialog_set_has_separator(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_window_set_transient_for(i32, i32) #1

declare dso_local i32 @gtk_window_set_destroy_with_parent(i32, i32) #1

declare dso_local i32 @gtk_window_set_title(i32, i32) #1

declare dso_local i32 @convert_localized_message(...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @gtk_hbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32* @gtk_table_new(i32, i32, i32) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32 @gtk_container_border_width(i32, i32) #1

declare dso_local i32* @gtk_label_new(i32) #1

declare dso_local i32 @gtk_misc_set_alignment(i32, i32, i32) #1

declare dso_local i32 @GTK_MISC(i32*) #1

declare dso_local i32 @gtk_table_attach(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GTK_TABLE(i32*) #1

declare dso_local i8* @gtk_entry_new(...) #1

declare dso_local i32 @gtk_signal_connect(i32, i8*, i32, i32*) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32 (i32)*) #1

declare dso_local i32 @entry_changed_cb(i32) #1

declare dso_local i32 @gtk_signal_connect_after(i32, i8*, i32, i32) #1

declare dso_local i32 @find_key_press_event(i32) #1

declare dso_local i32 @find_replace_cb(i32) #1

declare dso_local i32* @GINT_TO_POINTER(i32) #1

declare dso_local i32 @entry_activate_cb(i32) #1

declare dso_local i8* @gtk_check_button_new_with_label(i32) #1

declare dso_local i32* @gtk_frame_new(i32) #1

declare dso_local i32* @gtk_vbox_new(i32, i32) #1

declare dso_local i8* @gtk_radio_button_new_with_label(i32*, i32) #1

declare dso_local i32* @gtk_radio_button_group(i32) #1

declare dso_local i32 @GTK_RADIO_BUTTON(i32*) #1

declare dso_local i32* @gtk_vbutton_box_new(...) #1

declare dso_local i32 @gtk_box_pack_end(i32, i32*, i32, i32, i32) #1

declare dso_local i8* @create_image_button(i32, i32) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i32 @GTK_WIDGET_SET_FLAGS(i32*, i32) #1

declare dso_local i32 @gtk_widget_grab_default(i32*) #1

declare dso_local i32* @gtk_button_new_from_stock(i32) #1

declare dso_local i32 @gtk_signal_connect_object(i32, i8*, i32, i32) #1

declare dso_local i32 @gtk_widget_hide(i32) #1

declare dso_local i32 @gtk_widget_hide_on_delete(i32) #1

declare dso_local i32* @gtk_vseparator_new(...) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
