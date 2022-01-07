; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.sway_keyboard = type { i64, %struct.TYPE_15__*, %struct.TYPE_17__, %struct.TYPE_17__, %struct.xkb_keymap* }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.xkb_keymap = type { i32 }
%struct.input_config = type { i64, i64, i32, i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to compile keymap. Attempting defaults\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to compile default keymap. Aborting configure\00", align 1
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_12__* null, align 8
@XKB_MOD_NAME_NUM = common dso_local global i32 0, align 4
@XKB_MOD_INVALID = common dso_local global i32 0, align 4
@XKB_MOD_NAME_CAPS = common dso_local global i32 0, align 4
@WLR_LED_COUNT = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@handle_keyboard_key = common dso_local global i32 0, align 4
@handle_keyboard_modifiers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"xkb_keymap\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"xkb_layout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_keyboard_configure(%struct.sway_keyboard* %0) #0 {
  %2 = alloca %struct.sway_keyboard*, align 8
  %3 = alloca %struct.input_config*, align 8
  %4 = alloca %struct.wlr_input_device*, align 8
  %5 = alloca %struct.xkb_keymap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wlr_seat*, align 8
  store %struct.sway_keyboard* %0, %struct.sway_keyboard** %2, align 8
  %18 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %19 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = call %struct.input_config* @input_device_get_config(%struct.TYPE_18__* %22)
  store %struct.input_config* %23, %struct.input_config** %3, align 8
  %24 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %25 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.wlr_input_device*, %struct.wlr_input_device** %29, align 8
  store %struct.wlr_input_device* %30, %struct.wlr_input_device** %4, align 8
  %31 = load %struct.input_config*, %struct.input_config** %3, align 8
  %32 = call %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config* %31, i32* null)
  store %struct.xkb_keymap* %32, %struct.xkb_keymap** %5, align 8
  %33 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %34 = icmp ne %struct.xkb_keymap* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @SWAY_ERROR, align 4
  %37 = call i32 @sway_log(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %38 = call %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config* null, i32* null)
  store %struct.xkb_keymap* %38, %struct.xkb_keymap** %5, align 8
  %39 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %40 = icmp ne %struct.xkb_keymap* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @SWAY_ERROR, align 4
  %43 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %282

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %1
  store i32 0, i32* %6, align 4
  %46 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %47 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %52 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %51, i32 0, i32 4
  %53 = load %struct.xkb_keymap*, %struct.xkb_keymap** %52, align 8
  %54 = icmp ne %struct.xkb_keymap* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %45
  %56 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %57 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %56, i32 0, i32 4
  %58 = load %struct.xkb_keymap*, %struct.xkb_keymap** %57, align 8
  %59 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %60 = call i8* @xkb_keymap_get_as_string(%struct.xkb_keymap* %58, i32 %59)
  store i8* %60, i8** %8, align 8
  %61 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %62 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %63 = call i8* @xkb_keymap_get_as_string(%struct.xkb_keymap* %61, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strcmp(i8* %64, i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @free(i8* %69)
  br label %72

71:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %184

80:                                               ; preds = %75, %72
  %81 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %82 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %81, i32 0, i32 4
  %83 = load %struct.xkb_keymap*, %struct.xkb_keymap** %82, align 8
  %84 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %83)
  %85 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %86 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %87 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %86, i32 0, i32 4
  store %struct.xkb_keymap* %85, %struct.xkb_keymap** %87, align 8
  %88 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %89 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %91 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %94 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %93, i32 0, i32 4
  %95 = load %struct.xkb_keymap*, %struct.xkb_keymap** %94, align 8
  %96 = call i32 @wlr_keyboard_set_keymap(%struct.TYPE_16__* %92, %struct.xkb_keymap* %95)
  store i32 0, i32* %10, align 4
  %97 = load %struct.input_config*, %struct.input_config** %3, align 8
  %98 = icmp ne %struct.input_config* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %80
  %100 = load %struct.input_config*, %struct.input_config** %3, align 8
  %101 = getelementptr inbounds %struct.input_config, %struct.input_config* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %106 = load i32, i32* @XKB_MOD_NAME_NUM, align 4
  %107 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @XKB_MOD_INVALID, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %99, %80
  %118 = load %struct.input_config*, %struct.input_config** %3, align 8
  %119 = icmp ne %struct.input_config* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.input_config*, %struct.input_config** %3, align 8
  %122 = getelementptr inbounds %struct.input_config, %struct.input_config* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %127 = load i32, i32* @XKB_MOD_NAME_CAPS, align 4
  %128 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %126, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @XKB_MOD_INVALID, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %12, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %132, %125
  br label %138

138:                                              ; preds = %137, %120, %117
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %138
  %142 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %143 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @wlr_keyboard_notify_modifiers(%struct.TYPE_16__* %144, i32 0, i32 0, i32 %145, i32 0)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %174, %141
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @WLR_LED_COUNT, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %147
  %152 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %153 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %158 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @xkb_state_led_index_is_active(i32 %156, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %151
  %169 = load i32, i32* %14, align 4
  %170 = shl i32 1, %169
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %168, %151
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %147

177:                                              ; preds = %147
  %178 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %179 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %178, i32 0, i32 0
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @wlr_keyboard_led_update(%struct.TYPE_16__* %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %138
  br label %187

184:                                              ; preds = %75
  %185 = load %struct.xkb_keymap*, %struct.xkb_keymap** %5, align 8
  %186 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %185)
  br label %187

187:                                              ; preds = %184, %183
  store i32 25, i32* %15, align 4
  %188 = load %struct.input_config*, %struct.input_config** %3, align 8
  %189 = icmp ne %struct.input_config* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load %struct.input_config*, %struct.input_config** %3, align 8
  %192 = getelementptr inbounds %struct.input_config, %struct.input_config* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @INT_MIN, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load %struct.input_config*, %struct.input_config** %3, align 8
  %198 = getelementptr inbounds %struct.input_config, %struct.input_config* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %196, %190, %187
  store i32 600, i32* %16, align 4
  %201 = load %struct.input_config*, %struct.input_config** %3, align 8
  %202 = icmp ne %struct.input_config* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = load %struct.input_config*, %struct.input_config** %3, align 8
  %205 = getelementptr inbounds %struct.input_config, %struct.input_config* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @INT_MIN, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.input_config*, %struct.input_config** %3, align 8
  %211 = getelementptr inbounds %struct.input_config, %struct.input_config* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %209, %203, %200
  %214 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %215 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %214, i32 0, i32 0
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @wlr_keyboard_set_repeat_info(%struct.TYPE_16__* %216, i32 %217, i32 %218)
  %220 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %221 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %220, i32 0, i32 1
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load %struct.wlr_seat*, %struct.wlr_seat** %225, align 8
  store %struct.wlr_seat* %226, %struct.wlr_seat** %17, align 8
  %227 = load %struct.wlr_seat*, %struct.wlr_seat** %17, align 8
  %228 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %229 = call i32 @wlr_seat_set_keyboard(%struct.wlr_seat* %227, %struct.wlr_input_device* %228)
  %230 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %231 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = call i32 @wl_list_remove(i32* %232)
  %234 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %235 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %234, i32 0, i32 0
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %240 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %239, i32 0, i32 3
  %241 = call i32 @wl_signal_add(i32* %238, %struct.TYPE_17__* %240)
  %242 = load i32, i32* @handle_keyboard_key, align 4
  %243 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %244 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %247 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = call i32 @wl_list_remove(i32* %248)
  %250 = load %struct.wlr_input_device*, %struct.wlr_input_device** %4, align 8
  %251 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %250, i32 0, i32 0
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %256 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %255, i32 0, i32 2
  %257 = call i32 @wl_signal_add(i32* %254, %struct.TYPE_17__* %256)
  %258 = load i32, i32* @handle_keyboard_modifiers, align 4
  %259 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %260 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %213
  %265 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %266 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %265, i32 0, i32 1
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = call i32 @ipc_event_input(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %269)
  br label %282

271:                                              ; preds = %213
  %272 = load i32, i32* %7, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load %struct.sway_keyboard*, %struct.sway_keyboard** %2, align 8
  %276 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %275, i32 0, i32 1
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %278, align 8
  %280 = call i32 @ipc_event_input(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %279)
  br label %281

281:                                              ; preds = %274, %271
  br label %282

282:                                              ; preds = %41, %281, %264
  ret void
}

declare dso_local %struct.input_config* @input_device_get_config(%struct.TYPE_18__*) #1

declare dso_local %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config*, i32*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i8* @xkb_keymap_get_as_string(%struct.xkb_keymap*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xkb_keymap_unref(%struct.xkb_keymap*) #1

declare dso_local i32 @wlr_keyboard_set_keymap(%struct.TYPE_16__*, %struct.xkb_keymap*) #1

declare dso_local i32 @xkb_map_mod_get_index(%struct.xkb_keymap*, i32) #1

declare dso_local i32 @wlr_keyboard_notify_modifiers(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i64 @xkb_state_led_index_is_active(i32, i32) #1

declare dso_local i32 @wlr_keyboard_led_update(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @wlr_keyboard_set_repeat_info(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @wlr_seat_set_keyboard(%struct.wlr_seat*, %struct.wlr_input_device*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ipc_event_input(i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
