; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_trigger_global_action.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_trigger_global_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i8**, i8*, i32, i8*, i32, i32* }

@xcb = common dso_local global %struct.TYPE_14__* null, align 8
@CacheState = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@XCB_ATOM_PRIMARY = common dso_local global i32 0, align 4
@XCB_CURRENT_TIME = common dso_local global i32 0, align 4
@netatoms = common dso_local global i32* null, align 8
@CLIPBOARD = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@TRUE = common dso_local global i8* null, align 8
@MENU_PREVIOUS = common dso_local global i32 0, align 4
@MENU_NEXT = common dso_local global i32 0, align 4
@MENU_ENTRY_DELETE = common dso_local global i32 0, align 4
@MENU_OK = common dso_local global i8* null, align 8
@UINT32_MAX = common dso_local global i8* null, align 8
@MENU_QUICK_SWITCH = common dso_local global i32 0, align 4
@MENU_LOWER_MASK = common dso_local global i32 0, align 4
@MENU_CANCEL = common dso_local global i32 0, align 4
@MENU_CUSTOM_INPUT = common dso_local global i8* null, align 8
@MENU_CUSTOM_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rofi_view_trigger_global_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_trigger_global_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call %struct.TYPE_13__* (...) @rofi_view_get_active()
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %395 [
    i32 156, label %12
    i32 155, label %32
    i32 140, label %55
    i32 188, label %57
    i32 128, label %68
    i32 165, label %87
    i32 166, label %96
    i32 129, label %105
    i32 167, label %126
    i32 139, label %153
    i32 137, label %153
    i32 136, label %153
    i32 135, label %153
    i32 134, label %153
    i32 133, label %153
    i32 132, label %153
    i32 131, label %153
    i32 130, label %153
    i32 138, label %153
    i32 186, label %179
    i32 175, label %179
    i32 174, label %179
    i32 173, label %179
    i32 172, label %179
    i32 171, label %179
    i32 170, label %179
    i32 169, label %179
    i32 168, label %179
    i32 185, label %179
    i32 184, label %179
    i32 183, label %179
    i32 182, label %179
    i32 181, label %179
    i32 180, label %179
    i32 179, label %179
    i32 178, label %179
    i32 177, label %179
    i32 176, label %179
    i32 189, label %214
    i32 141, label %221
    i32 142, label %226
    i32 148, label %229
    i32 145, label %234
    i32 144, label %239
    i32 157, label %244
    i32 158, label %249
    i32 147, label %254
    i32 146, label %257
    i32 143, label %260
    i32 164, label %263
    i32 163, label %276
    i32 187, label %289
    i32 161, label %289
    i32 162, label %289
    i32 152, label %289
    i32 151, label %289
    i32 150, label %289
    i32 149, label %289
    i32 153, label %289
    i32 160, label %289
    i32 159, label %289
    i32 154, label %289
    i32 192, label %307
    i32 191, label %348
    i32 190, label %359
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CacheState, i32 0, i32 0), align 4
  %17 = load i32, i32* @XCB_ATOM_PRIMARY, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %27 = call i32 @xcb_convert_selection(i32 %15, i32 %16, i32 %17, i32 %21, i32 %25, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xcb_flush(i32 %30)
  br label %395

32:                                               ; preds = %1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CacheState, i32 0, i32 0), align 4
  %37 = load i32*, i32** @netatoms, align 8
  %38 = load i64, i64* @CLIPBOARD, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %50 = call i32 @xcb_convert_selection(i32 %35, i32 %36, i32 %40, i32 %44, i32 %48, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xcb_flush(i32 %53)
  br label %395

55:                                               ; preds = %1
  %56 = call i32 (...) @rofi_capture_screenshot()
  br label %395

57:                                               ; preds = %1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @listview_toggle_ellipsizing(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %395

68:                                               ; preds = %1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 0), align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 0), align 4
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 (...) @get_matching_state()
  %85 = call i32 @textbox_text(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %68
  br label %395

87:                                               ; preds = %1
  %88 = load i32, i32* @MENU_PREVIOUS, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store i8* null, i8** %92, align 8
  %93 = load i8*, i8** @TRUE, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %395

96:                                               ; preds = %1
  %97 = load i32, i32* @MENU_NEXT, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 4
  store i8* null, i8** %101, align 8
  %102 = load i8*, i8** @TRUE, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  br label %395

105:                                              ; preds = %1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 8
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 1), align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 1), align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  store i8* null, i8** %116, align 8
  %117 = load i8*, i8** @TRUE, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 8
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (...) @get_matching_state()
  %124 = call i32 @textbox_text(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %110, %105
  br label %395

126:                                              ; preds = %1
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @listview_get_selected(i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %126
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @MENU_ENTRY_DELETE, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @TRUE, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %136, %126
  br label %395

153:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %154 = load i32, i32* %2, align 4
  %155 = sub nsw i32 %154, 139
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %153
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @MENU_OK, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i8*, i8** @TRUE, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %161, %153
  br label %395

179:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %180 = load i8*, i8** @UINT32_MAX, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @listview_get_selected(i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %179
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = load i8**, i8*** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %192, %179
  %203 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %204 = load i32, i32* %2, align 4
  %205 = sub nsw i32 %204, 186
  %206 = load i32, i32* @MENU_LOWER_MASK, align 4
  %207 = and i32 %205, %206
  %208 = or i32 %203, %207
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i8*, i8** @TRUE, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  br label %395

214:                                              ; preds = %1
  %215 = load i32, i32* @MENU_CANCEL, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i8*, i8** @TRUE, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %395

221:                                              ; preds = %1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @listview_nav_up(i32 %224)
  br label %395

226:                                              ; preds = %1
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %228 = call i32 @rofi_view_nav_row_tab(%struct.TYPE_13__* %227)
  br label %395

229:                                              ; preds = %1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @listview_nav_down(i32 %232)
  br label %395

234:                                              ; preds = %1
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @listview_nav_left(i32 %237)
  br label %395

239:                                              ; preds = %1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @listview_nav_right(i32 %242)
  br label %395

244:                                              ; preds = %1
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @listview_nav_page_prev(i32 %247)
  br label %395

249:                                              ; preds = %1
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @listview_nav_page_next(i32 %252)
  br label %395

254:                                              ; preds = %1
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %256 = call i32 @rofi_view_nav_first(%struct.TYPE_13__* %255)
  br label %395

257:                                              ; preds = %1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %259 = call i32 @rofi_view_nav_last(%struct.TYPE_13__* %258)
  br label %395

260:                                              ; preds = %1
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %262 = call i32 @rofi_view_nav_row_select(%struct.TYPE_13__* %261)
  br label %395

263:                                              ; preds = %1
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @textbox_keybinding(i32 %266, i32 %267)
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %263
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @listview_nav_left(i32 %273)
  br label %275

275:                                              ; preds = %270, %263
  br label %395

276:                                              ; preds = %1
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %2, align 4
  %281 = call i32 @textbox_keybinding(i32 %279, i32 %280)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %276
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @listview_nav_right(i32 %286)
  br label %288

288:                                              ; preds = %283, %276
  br label %395

289:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %2, align 4
  %294 = call i32 @textbox_keybinding(i32 %292, i32 %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %301

297:                                              ; preds = %289
  %298 = load i8*, i8** @TRUE, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 6
  store i8* %298, i8** %300, align 8
  br label %306

301:                                              ; preds = %289
  %302 = load i32, i32* %7, align 4
  %303 = icmp eq i32 %302, 2
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %304, %301
  br label %306

306:                                              ; preds = %305, %297
  br label %395

307:                                              ; preds = %1
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @listview_get_selected(i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load i8*, i8** @UINT32_MAX, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 4
  store i8* %312, i8** %314, align 8
  %315 = load i32, i32* %8, align 4
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %334

320:                                              ; preds = %307
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 3
  %323 = load i8**, i8*** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 4
  store i8* %327, i8** %329, align 8
  %330 = load i8*, i8** @MENU_OK, align 8
  %331 = ptrtoint i8* %330 to i32
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  br label %339

334:                                              ; preds = %307
  %335 = load i8*, i8** @MENU_CUSTOM_INPUT, align 8
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %334, %320
  %340 = load i32, i32* @MENU_CUSTOM_ACTION, align 4
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load i8*, i8** @TRUE, align 8
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 2
  store i8* %345, i8** %347, align 8
  br label %395

348:                                              ; preds = %1
  %349 = load i8*, i8** @UINT32_MAX, align 8
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 4
  store i8* %349, i8** %351, align 8
  %352 = load i8*, i8** @MENU_CUSTOM_INPUT, align 8
  %353 = ptrtoint i8* %352 to i32
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 8
  %356 = load i8*, i8** @TRUE, align 8
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 2
  store i8* %356, i8** %358, align 8
  br label %395

359:                                              ; preds = %1
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @listview_get_selected(i32 %362)
  store i32 %363, i32* %9, align 4
  %364 = load i8*, i8** @UINT32_MAX, align 8
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 4
  store i8* %364, i8** %366, align 8
  %367 = load i32, i32* %9, align 4
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp ult i32 %367, %370
  br i1 %371, label %372, label %386

372:                                              ; preds = %359
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 3
  %375 = load i8**, i8*** %374, align 8
  %376 = load i32, i32* %9, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds i8*, i8** %375, i64 %377
  %379 = load i8*, i8** %378, align 8
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 4
  store i8* %379, i8** %381, align 8
  %382 = load i8*, i8** @MENU_OK, align 8
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 8
  br label %391

386:                                              ; preds = %359
  %387 = load i8*, i8** @MENU_CUSTOM_INPUT, align 8
  %388 = ptrtoint i8* %387 to i32
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  br label %391

391:                                              ; preds = %386, %372
  %392 = load i8*, i8** @TRUE, align 8
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 2
  store i8* %392, i8** %394, align 8
  br label %395

395:                                              ; preds = %1, %391, %348, %339, %306, %288, %275, %260, %257, %254, %249, %244, %239, %234, %229, %226, %221, %214, %202, %178, %152, %125, %96, %87, %86, %67, %55, %32, %12
  ret void
}

declare dso_local %struct.TYPE_13__* @rofi_view_get_active(...) #1

declare dso_local i32 @xcb_convert_selection(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @rofi_capture_screenshot(...) #1

declare dso_local i32 @listview_toggle_ellipsizing(i32) #1

declare dso_local i32 @textbox_text(i32*, i32) #1

declare dso_local i32 @get_matching_state(...) #1

declare dso_local i32 @listview_get_selected(i32) #1

declare dso_local i32 @listview_nav_up(i32) #1

declare dso_local i32 @rofi_view_nav_row_tab(%struct.TYPE_13__*) #1

declare dso_local i32 @listview_nav_down(i32) #1

declare dso_local i32 @listview_nav_left(i32) #1

declare dso_local i32 @listview_nav_right(i32) #1

declare dso_local i32 @listview_nav_page_prev(i32) #1

declare dso_local i32 @listview_nav_page_next(i32) #1

declare dso_local i32 @rofi_view_nav_first(%struct.TYPE_13__*) #1

declare dso_local i32 @rofi_view_nav_last(%struct.TYPE_13__*) #1

declare dso_local i32 @rofi_view_nav_row_select(%struct.TYPE_13__*) #1

declare dso_local i32 @textbox_keybinding(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
