; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_add_widget.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_add_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32**, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"mainbox\00", align 1
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"inputbar,message,listview,mode-switcher\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"inputbar,message,listview\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inputbar\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"prompt,entry,overlay,case-indicator\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Prompt widget can only be added once to the layout.\00", align 1
@WIDGET_TYPE_TEXTBOX_TEXT = common dso_local global i32 0, align 4
@TB_AUTOWIDTH = common dso_local global i32 0, align 4
@TB_AUTOHEIGHT = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"num-rows\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"num-filtered-rows\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"case-indicator\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Case indicator widget can only be added once to the layout.\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Entry textbox widget can only be added once to the layout.\00", align 1
@TB_EDITABLE = common dso_local global i32 0, align 4
@MENU_PASSWORD = common dso_local global i32 0, align 4
@TB_PASSWORD = common dso_local global i32 0, align 4
@WIDGET_TYPE_EDITBOX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Message widget can only be added once to the layout.\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"textbox\00", align 1
@TB_MARKUP = common dso_local global i32 0, align 4
@TB_WRAP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"listview\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Listview widget can only be added once to the layout.\00", align 1
@update_callback = common dso_local global i32 0, align 4
@MENU_INDICATOR = common dso_local global i32 0, align 4
@rofi_view_listview_mouse_activated_cb = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"mode-switcher\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sidebar\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"Mode-switcher can only be added once to the layout.\00", align 1
@WIDGET_TYPE_MODE_SWITCHER = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@HIGHLIGHT = common dso_local global i32 0, align 4
@textbox_sidebar_modi_trigger_action = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@URGENT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"blaat\00", align 1
@textbox_button_trigger_action = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@g_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i8*)* @rofi_view_add_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_add_widget(%struct.TYPE_15__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %25 = call i32* @box_create(i32* %22, i8* %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @WIDGET(i32* %27)
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @box_add(i32* %26, i32* %28, i32 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 3), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %35

34:                                               ; preds = %21
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %537

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %44 = call i32* @box_create(i32* %41, i8* %42, i32 %43)
  store i32* %44, i32** %8, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @WIDGET(i32* %46)
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @box_add(i32* %45, i32* %47, i32 %48)
  br label %536

50:                                               ; preds = %36
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 14
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @g_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %562

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @TB_AUTOWIDTH, align 4
  %66 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @NORMAL, align 4
  %69 = call i8* @textbox_create(i32* %62, i32 %63, i8* %64, i32 %67, i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 14
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = call i32 @rofi_view_update_prompt(%struct.TYPE_15__* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 14
  %78 = load i32*, i32** %77, align 8
  %79 = call i32* @WIDGET(i32* %78)
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @box_add(i32* %75, i32* %79, i32 %80)
  store i8* null, i8** %7, align 8
  br label %535

82:                                               ; preds = %50
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* @TB_AUTOWIDTH, align 4
  %91 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NORMAL, align 4
  %94 = call i8* @textbox_create(i32* %87, i32 %88, i8* %89, i32 %92, i32 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 13
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 13
  %101 = load i32*, i32** %100, align 8
  %102 = call i32* @WIDGET(i32* %101)
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @box_add(i32* %98, i32* %102, i32 %103)
  store i8* null, i8** %7, align 8
  br label %534

105:                                              ; preds = %82
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* @TB_AUTOWIDTH, align 4
  %114 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @NORMAL, align 4
  %117 = call i8* @textbox_create(i32* %110, i32 %111, i8* %112, i32 %115, i32 %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 12
  store i32* %118, i32** %120, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 12
  %124 = load i32*, i32** %123, align 8
  %125 = call i32* @WIDGET(i32* %124)
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @box_add(i32* %121, i32* %125, i32 %126)
  store i8* null, i8** %7, align 8
  br label %533

128:                                              ; preds = %105
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 11
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @g_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  br label %562

139:                                              ; preds = %132
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* @TB_AUTOWIDTH, align 4
  %144 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NORMAL, align 4
  %147 = call i8* @textbox_create(i32* %140, i32 %141, i8* %142, i32 %145, i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 11
  store i32* %148, i32** %150, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 11
  %154 = load i32*, i32** %153, align 8
  %155 = call i32* @WIDGET(i32* %154)
  %156 = load i32, i32* @FALSE, align 4
  %157 = call i32 @box_add(i32* %151, i32* %155, i32 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 11
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 (...) @get_matching_state()
  %162 = call i32 @textbox_text(i32* %160, i32 %161)
  br label %532

163:                                              ; preds = %128
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %208

167:                                              ; preds = %163
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 10
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 @g_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  br label %562

174:                                              ; preds = %167
  %175 = load i32, i32* @TB_EDITABLE, align 4
  store i32 %175, i32* %9, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MENU_PASSWORD, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @MENU_PASSWORD, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @TB_PASSWORD, align 4
  br label %186

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* @WIDGET_TYPE_EDITBOX, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @NORMAL, align 4
  %197 = call i8* @textbox_create(i32* %190, i32 %191, i8* %192, i32 %195, i32 %196, i8* null, double 0.000000e+00, double 0.000000e+00)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 10
  store i32* %198, i32** %200, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 10
  %204 = load i32*, i32** %203, align 8
  %205 = call i32* @WIDGET(i32* %204)
  %206 = load i32, i32* @TRUE, align 4
  %207 = call i32 @box_add(i32* %201, i32* %205, i32 %206)
  br label %531

208:                                              ; preds = %163
  %209 = load i8*, i8** %6, align 8
  %210 = call i64 @strcmp(i8* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %257

212:                                              ; preds = %208
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 8
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 @g_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  br label %562

219:                                              ; preds = %212
  %220 = load i32*, i32** %5, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = call i32* @container_create(i32* %220, i8* %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 8
  store i32* %222, i32** %224, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 8
  %227 = load i32*, i32** %226, align 8
  %228 = call i32* @WIDGET(i32* %227)
  %229 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %230 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %231 = load i32, i32* @TB_MARKUP, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @TB_WRAP, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @NORMAL, align 4
  %236 = call i8* @textbox_create(i32* %228, i32 %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %234, i32 %235, i8* null, double 0.000000e+00, double 0.000000e+00)
  %237 = bitcast i8* %236 to i32*
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 9
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 8
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 9
  %245 = load i32*, i32** %244, align 8
  %246 = call i32* @WIDGET(i32* %245)
  %247 = call i32 @container_add(i32* %242, i32* %246)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = call i32 @rofi_view_reload_message_bar(%struct.TYPE_15__* %248)
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 8
  %253 = load i32*, i32** %252, align 8
  %254 = call i32* @WIDGET(i32* %253)
  %255 = load i32, i32* @FALSE, align 4
  %256 = call i32 @box_add(i32* %250, i32* %254, i32 %255)
  br label %530

257:                                              ; preds = %208
  %258 = load i8*, i8** %6, align 8
  %259 = call i64 @strcmp(i8* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %325

261:                                              ; preds = %257
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = call i32 @g_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  br label %562

268:                                              ; preds = %261
  %269 = load i32*, i32** %5, align 8
  %270 = load i8*, i8** %6, align 8
  %271 = load i32, i32* @update_callback, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 2), align 8
  %274 = call i32* @listview_create(i32* %269, i8* %270, i32 %271, %struct.TYPE_15__* %272, i32 %273, i32 0)
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 7
  store i32* %274, i32** %276, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 7
  %280 = load i32*, i32** %279, align 8
  %281 = call i32* @WIDGET(i32* %280)
  %282 = load i32, i32* @TRUE, align 4
  %283 = call i32 @box_add(i32* %277, i32* %281, i32 %282)
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 7
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @MENU_INDICATOR, align 4
  %291 = and i32 %289, %290
  %292 = load i32, i32* @MENU_INDICATOR, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @listview_set_multi_select(i32* %286, i32 %294)
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 7
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 4
  %300 = call i32 @listview_set_scroll_type(i32* %298, i32 %299)
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 7
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* @rofi_view_listview_mouse_activated_cb, align 4
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %306 = call i32 @listview_set_mouse_activated_cb(i32* %303, i32 %304, %struct.TYPE_15__* %305)
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 7
  %309 = load i32*, i32** %308, align 8
  %310 = call i32* @WIDGET(i32* %309)
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 8
  %312 = call i32 @rofi_theme_get_integer(i32* %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %311)
  store i32 %312, i32* %10, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 7
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @listview_set_num_lines(i32* %315, i32 %316)
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 7
  %320 = load i32*, i32** %319, align 8
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @listview_set_max_lines(i32* %320, i32 %323)
  br label %529

325:                                              ; preds = %257
  %326 = load i8*, i8** %6, align 8
  %327 = call i64 @strcmp(i8* %326, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %325
  %330 = load i8*, i8** %6, align 8
  %331 = call i64 @strcmp(i8* %330, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %430

333:                                              ; preds = %329, %325
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = call i32 @g_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0))
  br label %562

340:                                              ; preds = %333
  %341 = load i32*, i32** %5, align 8
  %342 = load i8*, i8** %6, align 8
  %343 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %344 = call i32* @box_create(i32* %341, i8* %342, i32 %343)
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 4
  store i32* %344, i32** %346, align 8
  %347 = load i32*, i32** %5, align 8
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 4
  %350 = load i32*, i32** %349, align 8
  %351 = call i32* @WIDGET(i32* %350)
  %352 = load i32, i32* @FALSE, align 4
  %353 = call i32 @box_add(i32* %347, i32* %351, i32 %352)
  %354 = call i32 (...) @rofi_get_num_enabled_modi()
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 1
  store i32 %354, i32* %356, align 4
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = mul i64 %360, 8
  %362 = trunc i64 %361 to i32
  %363 = call i32** @g_malloc0(i32 %362)
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 3
  store i32** %363, i32*** %365, align 8
  store i32 0, i32* %11, align 4
  br label %366

366:                                              ; preds = %426, %340
  %367 = load i32, i32* %11, align 4
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp ult i32 %367, %370
  br i1 %371, label %372, label %429

372:                                              ; preds = %366
  %373 = load i32, i32* %11, align 4
  %374 = call i32* @rofi_get_mode(i32 %373)
  store i32* %374, i32** %12, align 8
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 4
  %377 = load i32*, i32** %376, align 8
  %378 = call i32* @WIDGET(i32* %377)
  %379 = load i32, i32* @WIDGET_TYPE_MODE_SWITCHER, align 4
  %380 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %381 = load i32*, i32** %12, align 8
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 5
  %384 = load i32*, i32** %383, align 8
  %385 = icmp eq i32* %381, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %372
  %387 = load i32, i32* @HIGHLIGHT, align 4
  br label %390

388:                                              ; preds = %372
  %389 = load i32, i32* @NORMAL, align 4
  br label %390

390:                                              ; preds = %388, %386
  %391 = phi i32 [ %387, %386 ], [ %389, %388 ]
  %392 = load i32*, i32** %12, align 8
  %393 = call i8* @mode_get_display_name(i32* %392)
  %394 = call i8* @textbox_create(i32* %378, i32 %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %380, i32 %391, i8* %393, double 5.000000e-01, double 5.000000e-01)
  %395 = bitcast i8* %394 to i32*
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 3
  %398 = load i32**, i32*** %397, align 8
  %399 = load i32, i32* %11, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i32*, i32** %398, i64 %400
  store i32* %395, i32** %401, align 8
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 4
  %404 = load i32*, i32** %403, align 8
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 3
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = call i32* @WIDGET(i32* %411)
  %413 = load i32, i32* @TRUE, align 4
  %414 = call i32 @box_add(i32* %404, i32* %412, i32 %413)
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 3
  %417 = load i32**, i32*** %416, align 8
  %418 = load i32, i32* %11, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i32*, i32** %417, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = call i32* @WIDGET(i32* %421)
  %423 = load i32, i32* @textbox_sidebar_modi_trigger_action, align 4
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %425 = call i32 @widget_set_trigger_action_handler(i32* %422, i32 %423, %struct.TYPE_15__* %424)
  br label %426

426:                                              ; preds = %390
  %427 = load i32, i32* %11, align 4
  %428 = add i32 %427, 1
  store i32 %428, i32* %11, align 4
  br label %366

429:                                              ; preds = %366
  br label %528

430:                                              ; preds = %329
  %431 = load i8*, i8** %6, align 8
  %432 = call i64 @g_ascii_strcasecmp(i8* %431, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %434, label %458

434:                                              ; preds = %430
  %435 = load i32*, i32** %5, align 8
  %436 = call i32* @WIDGET(i32* %435)
  %437 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %438 = load i32, i32* @TB_AUTOWIDTH, align 4
  %439 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %440 = or i32 %438, %439
  %441 = load i32, i32* @URGENT, align 4
  %442 = call i8* @textbox_create(i32* %436, i32 %437, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %440, i32 %441, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), double 5.000000e-01, double 0.000000e+00)
  %443 = bitcast i8* %442 to i32*
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 2
  store i32* %443, i32** %445, align 8
  %446 = load i32*, i32** %5, align 8
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = call i32* @WIDGET(i32* %449)
  %451 = load i32, i32* @FALSE, align 4
  %452 = call i32 @box_add(i32* %446, i32* %450, i32 %451)
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 2
  %455 = load i32*, i32** %454, align 8
  %456 = call i32* @WIDGET(i32* %455)
  %457 = call i32 @widget_disable(i32* %456)
  br label %527

458:                                              ; preds = %430
  %459 = load i8*, i8** %6, align 8
  %460 = call i64 @g_ascii_strncasecmp(i8* %459, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 7)
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %477

462:                                              ; preds = %458
  %463 = load i32*, i32** %5, align 8
  %464 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %465 = load i8*, i8** %6, align 8
  %466 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %467 = load i32, i32* @TB_WRAP, align 4
  %468 = or i32 %466, %467
  %469 = load i32, i32* @NORMAL, align 4
  %470 = call i8* @textbox_create(i32* %463, i32 %464, i8* %465, i32 %468, i32 %469, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %471 = bitcast i8* %470 to i32*
  store i32* %471, i32** %13, align 8
  %472 = load i32*, i32** %5, align 8
  %473 = load i32*, i32** %13, align 8
  %474 = call i32* @WIDGET(i32* %473)
  %475 = load i32, i32* @TRUE, align 4
  %476 = call i32 @box_add(i32* %472, i32* %474, i32 %475)
  br label %526

477:                                              ; preds = %458
  %478 = load i8*, i8** %6, align 8
  %479 = call i64 @g_ascii_strncasecmp(i8* %478, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 6)
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %501

481:                                              ; preds = %477
  %482 = load i32*, i32** %5, align 8
  %483 = load i32, i32* @WIDGET_TYPE_EDITBOX, align 4
  %484 = load i8*, i8** %6, align 8
  %485 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %486 = load i32, i32* @TB_WRAP, align 4
  %487 = or i32 %485, %486
  %488 = load i32, i32* @NORMAL, align 4
  %489 = call i8* @textbox_create(i32* %482, i32 %483, i8* %484, i32 %487, i32 %488, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  %490 = bitcast i8* %489 to i32*
  store i32* %490, i32** %14, align 8
  %491 = load i32*, i32** %5, align 8
  %492 = load i32*, i32** %14, align 8
  %493 = call i32* @WIDGET(i32* %492)
  %494 = load i32, i32* @TRUE, align 4
  %495 = call i32 @box_add(i32* %491, i32* %493, i32 %494)
  %496 = load i32*, i32** %14, align 8
  %497 = call i32* @WIDGET(i32* %496)
  %498 = load i32, i32* @textbox_button_trigger_action, align 4
  %499 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %500 = call i32 @widget_set_trigger_action_handler(i32* %497, i32 %498, %struct.TYPE_15__* %499)
  br label %525

501:                                              ; preds = %477
  %502 = load i8*, i8** %6, align 8
  %503 = call i64 @g_ascii_strncasecmp(i8* %502, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 4)
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %505, label %514

505:                                              ; preds = %501
  %506 = load i32*, i32** %5, align 8
  %507 = load i8*, i8** %6, align 8
  %508 = call i32* @icon_create(i32* %506, i8* %507)
  store i32* %508, i32** %15, align 8
  %509 = load i32*, i32** %5, align 8
  %510 = load i32*, i32** %15, align 8
  %511 = call i32* @WIDGET(i32* %510)
  %512 = load i32, i32* @TRUE, align 4
  %513 = call i32 @box_add(i32* %509, i32* %511, i32 %512)
  br label %524

514:                                              ; preds = %501
  %515 = load i32*, i32** %5, align 8
  %516 = load i8*, i8** %6, align 8
  %517 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %518 = call i32* @box_create(i32* %515, i8* %516, i32 %517)
  store i32* %518, i32** %8, align 8
  %519 = load i32*, i32** %5, align 8
  %520 = load i32*, i32** %8, align 8
  %521 = call i32* @WIDGET(i32* %520)
  %522 = load i32, i32* @TRUE, align 4
  %523 = call i32 @box_add(i32* %519, i32* %521, i32 %522)
  br label %524

524:                                              ; preds = %514, %505
  br label %525

525:                                              ; preds = %524, %481
  br label %526

526:                                              ; preds = %525, %462
  br label %527

527:                                              ; preds = %526, %434
  br label %528

528:                                              ; preds = %527, %429
  br label %529

529:                                              ; preds = %528, %268
  br label %530

530:                                              ; preds = %529, %219
  br label %531

531:                                              ; preds = %530, %186
  br label %532

532:                                              ; preds = %531, %139
  br label %533

533:                                              ; preds = %532, %109
  br label %534

534:                                              ; preds = %533, %86
  br label %535

535:                                              ; preds = %534, %61
  br label %536

536:                                              ; preds = %535, %40
  br label %537

537:                                              ; preds = %536, %35
  %538 = load i32*, i32** %8, align 8
  %539 = icmp ne i32* %538, null
  br i1 %539, label %540, label %562

540:                                              ; preds = %537
  %541 = load i32*, i32** %8, align 8
  %542 = load i8*, i8** %7, align 8
  %543 = call %struct.TYPE_16__* @rofi_theme_get_list(i32* %541, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* %542)
  store %struct.TYPE_16__* %543, %struct.TYPE_16__** %16, align 8
  %544 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %544, %struct.TYPE_16__** %17, align 8
  br label %545

545:                                              ; preds = %555, %540
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %547 = icmp ne %struct.TYPE_16__* %546, null
  br i1 %547, label %548, label %558

548:                                              ; preds = %545
  %549 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %550 = load i32*, i32** %8, align 8
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = inttoptr i64 %553 to i8*
  call void @rofi_view_add_widget(%struct.TYPE_15__* %549, i32* %550, i8* %554)
  br label %555

555:                                              ; preds = %548
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %557 = call %struct.TYPE_16__* @g_list_next(%struct.TYPE_16__* %556)
  store %struct.TYPE_16__* %557, %struct.TYPE_16__** %17, align 8
  br label %545

558:                                              ; preds = %545
  %559 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %560 = load i32, i32* @g_free, align 4
  %561 = call i32 @g_list_free_full(%struct.TYPE_16__* %559, i32 %560)
  br label %562

562:                                              ; preds = %59, %137, %172, %217, %266, %338, %558, %537
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @box_create(i32*, i8*, i32) #1

declare dso_local i32 @box_add(i32*, i32*, i32) #1

declare dso_local i32* @WIDGET(i32*) #1

declare dso_local i32 @g_error(i8*) #1

declare dso_local i8* @textbox_create(i32*, i32, i8*, i32, i32, i8*, double, double) #1

declare dso_local i32 @rofi_view_update_prompt(%struct.TYPE_15__*) #1

declare dso_local i32 @textbox_text(i32*, i32) #1

declare dso_local i32 @get_matching_state(...) #1

declare dso_local i32* @container_create(i32*, i8*) #1

declare dso_local i32 @container_add(i32*, i32*) #1

declare dso_local i32 @rofi_view_reload_message_bar(%struct.TYPE_15__*) #1

declare dso_local i32* @listview_create(i32*, i8*, i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @listview_set_multi_select(i32*, i32) #1

declare dso_local i32 @listview_set_scroll_type(i32*, i32) #1

declare dso_local i32 @listview_set_mouse_activated_cb(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @rofi_theme_get_integer(i32*, i8*, i32) #1

declare dso_local i32 @listview_set_num_lines(i32*, i32) #1

declare dso_local i32 @listview_set_max_lines(i32*, i32) #1

declare dso_local i32 @rofi_get_num_enabled_modi(...) #1

declare dso_local i32** @g_malloc0(i32) #1

declare dso_local i32* @rofi_get_mode(i32) #1

declare dso_local i8* @mode_get_display_name(i32*) #1

declare dso_local i32 @widget_set_trigger_action_handler(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @g_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @widget_disable(i32*) #1

declare dso_local i64 @g_ascii_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32* @icon_create(i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @rofi_theme_get_list(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @g_list_next(%struct.TYPE_16__*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
