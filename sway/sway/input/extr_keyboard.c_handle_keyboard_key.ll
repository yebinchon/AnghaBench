; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_key.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sway_keyboard = type { i32, %struct.sway_binding*, i32, i32, i32, i32, i32, %struct.sway_binding*, %struct.TYPE_9__* }
%struct.sway_binding = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.sway_seat* }
%struct.TYPE_8__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.sway_seat = type { i32*, %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_keyboard_key = type { i64, i64, i32 }

@keyboard_key = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_14__* null, align 8
@WLR_KEY_RELEASED = common dso_local global i64 0, align 8
@WLR_KEY_PRESSED = common dso_local global i64 0, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to set key repeat timer\00", align 1
@keyboard = common dso_local global %struct.sway_keyboard* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_keyboard_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_keyboard_key(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_keyboard*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.wlr_seat*, align 8
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wlr_event_keyboard_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sway_binding*, align 8
  %24 = alloca %struct.sway_binding*, align 8
  %25 = alloca i32, align 4
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %26 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %27 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %28 = ptrtoint %struct.sway_keyboard* %27 to i32
  %29 = load i32, i32* @keyboard_key, align 4
  %30 = call %struct.sway_keyboard* @wl_container_of(%struct.wl_listener* %26, i32 %28, i32 %29)
  store %struct.sway_keyboard* %30, %struct.sway_keyboard** %5, align 8
  %31 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %32 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %31, i32 0, i32 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.sway_seat*, %struct.sway_seat** %34, align 8
  store %struct.sway_seat* %35, %struct.sway_seat** %6, align 8
  %36 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %37 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %36, i32 0, i32 1
  %38 = load %struct.wlr_seat*, %struct.wlr_seat** %37, align 8
  store %struct.wlr_seat* %38, %struct.wlr_seat** %7, align 8
  %39 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %40 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %39, i32 0, i32 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.wlr_input_device*, %struct.wlr_input_device** %44, align 8
  store %struct.wlr_input_device* %45, %struct.wlr_input_device** %8, align 8
  %46 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %47 = call i8* @input_device_get_identifier(%struct.wlr_input_device* %46)
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 4
  %49 = load %struct.wlr_seat*, %struct.wlr_seat** %7, align 8
  %50 = call i32 @wlr_idle_notify_activity(i32 %48, %struct.wlr_seat* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to %struct.wlr_event_keyboard_key*
  store %struct.wlr_event_keyboard_key* %52, %struct.wlr_event_keyboard_key** %10, align 8
  %53 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %54 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %59 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @keyboard_keysyms_raw(%struct.sway_keyboard* %62, i64 %63, i64** %13, i32* %14)
  store i64 %64, i64* %15, align 8
  %65 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @keyboard_keysyms_translated(%struct.sway_keyboard* %65, i64 %66, i64** %16, i32* %17)
  store i64 %67, i64* %18, align 8
  %68 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %69 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @wlr_keyboard_get_modifiers(%struct.TYPE_12__* %70)
  store i32 %71, i32* %19, align 4
  %72 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %73 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %72, i32 0, i32 6
  %74 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @update_shortcut_state(i32* %73, %struct.wlr_event_keyboard_key* %74, i32 %76, i32 %77)
  store i64 0, i64* %20, align 8
  br label %79

79:                                               ; preds = %94, %2
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %85 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %84, i32 0, i32 5
  %86 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %20, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @update_shortcut_state(i32* %85, %struct.wlr_event_keyboard_key* %86, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %83
  %95 = load i64, i64* %20, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %20, align 8
  br label %79

97:                                               ; preds = %79
  store i64 0, i64* %21, align 8
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %18, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %104 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %103, i32 0, i32 4
  %105 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = load i64, i64* %21, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @update_shortcut_state(i32* %104, %struct.wlr_event_keyboard_key* %105, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %102
  %114 = load i64, i64* %21, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %21, align 8
  br label %98

116:                                              ; preds = %98
  store i32 0, i32* %22, align 4
  store %struct.sway_binding* null, %struct.sway_binding** %23, align 8
  %117 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %118 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %117, i32 0, i32 6
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %128 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @get_active_binding(i32* %118, i32 %123, %struct.sway_binding** %23, i32 %124, i32 1, i32 %125, i8* %126, i32 %129)
  %131 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %132 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %131, i32 0, i32 5
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %142 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @get_active_binding(i32* %132, i32 %137, %struct.sway_binding** %23, i32 %138, i32 1, i32 %139, i8* %140, i32 %143)
  %145 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %146 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %145, i32 0, i32 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %156 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @get_active_binding(i32* %146, i32 %151, %struct.sway_binding** %23, i32 %152, i32 1, i32 %153, i8* %154, i32 %157)
  %159 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %160 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %159, i32 0, i32 7
  %161 = load %struct.sway_binding*, %struct.sway_binding** %160, align 8
  %162 = icmp ne %struct.sway_binding* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %116
  %164 = load %struct.sway_binding*, %struct.sway_binding** %23, align 8
  %165 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %166 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %165, i32 0, i32 7
  %167 = load %struct.sway_binding*, %struct.sway_binding** %166, align 8
  %168 = icmp ne %struct.sway_binding* %164, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %171 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @WLR_KEY_RELEASED, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %177 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %178 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %177, i32 0, i32 7
  %179 = load %struct.sway_binding*, %struct.sway_binding** %178, align 8
  %180 = call i32 @seat_execute_command(%struct.sway_seat* %176, %struct.sway_binding* %179)
  store i32 1, i32* %22, align 4
  br label %181

181:                                              ; preds = %175, %169, %163, %116
  %182 = load %struct.sway_binding*, %struct.sway_binding** %23, align 8
  %183 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %184 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %183, i32 0, i32 7
  %185 = load %struct.sway_binding*, %struct.sway_binding** %184, align 8
  %186 = icmp ne %struct.sway_binding* %182, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %189 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %188, i32 0, i32 7
  store %struct.sway_binding* null, %struct.sway_binding** %189, align 8
  br label %190

190:                                              ; preds = %187, %181
  %191 = load %struct.sway_binding*, %struct.sway_binding** %23, align 8
  %192 = icmp ne %struct.sway_binding* %191, null
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %195 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.sway_binding*, %struct.sway_binding** %23, align 8
  %201 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %202 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %201, i32 0, i32 7
  store %struct.sway_binding* %200, %struct.sway_binding** %202, align 8
  br label %203

203:                                              ; preds = %199, %193, %190
  store %struct.sway_binding* null, %struct.sway_binding** %24, align 8
  %204 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %205 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %252

209:                                              ; preds = %203
  %210 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %211 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %210, i32 0, i32 6
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i8*, i8** %9, align 8
  %220 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %221 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @get_active_binding(i32* %211, i32 %216, %struct.sway_binding** %24, i32 %217, i32 0, i32 %218, i8* %219, i32 %222)
  %224 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %225 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %224, i32 0, i32 5
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i8*, i8** %9, align 8
  %234 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %235 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @get_active_binding(i32* %225, i32 %230, %struct.sway_binding** %24, i32 %231, i32 0, i32 %232, i8* %233, i32 %236)
  %238 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %239 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %238, i32 0, i32 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i8*, i8** %9, align 8
  %248 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %249 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @get_active_binding(i32* %239, i32 %244, %struct.sway_binding** %24, i32 %245, i32 0, i32 %246, i8* %247, i32 %250)
  br label %252

252:                                              ; preds = %209, %203
  %253 = load %struct.sway_binding*, %struct.sway_binding** %24, align 8
  %254 = icmp ne %struct.sway_binding* %253, null
  br i1 %254, label %255, label %282

255:                                              ; preds = %252
  %256 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %257 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %256, i32 0, i32 0
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %255
  %264 = load %struct.sway_binding*, %struct.sway_binding** %24, align 8
  %265 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %266 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %265, i32 0, i32 1
  store %struct.sway_binding* %264, %struct.sway_binding** %266, align 8
  %267 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %268 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %271 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @wl_event_source_timer_update(i32 %269, i64 %275)
  %277 = icmp slt i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %263
  %279 = load i32, i32* @SWAY_DEBUG, align 4
  %280 = call i32 @sway_log(i32 %279, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %281

281:                                              ; preds = %278, %263
  br label %291

282:                                              ; preds = %255, %252
  %283 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %284 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %283, i32 0, i32 1
  %285 = load %struct.sway_binding*, %struct.sway_binding** %284, align 8
  %286 = icmp ne %struct.sway_binding* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %289 = call i32 @sway_keyboard_disarm_key_repeat(%struct.sway_keyboard* %288)
  br label %290

290:                                              ; preds = %287, %282
  br label %291

291:                                              ; preds = %290, %281
  %292 = load %struct.sway_binding*, %struct.sway_binding** %24, align 8
  %293 = icmp ne %struct.sway_binding* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %296 = load %struct.sway_binding*, %struct.sway_binding** %24, align 8
  %297 = call i32 @seat_execute_command(%struct.sway_seat* %295, %struct.sway_binding* %296)
  store i32 1, i32* %22, align 4
  br label %298

298:                                              ; preds = %294, %291
  %299 = load i32, i32* %22, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %313, label %301

301:                                              ; preds = %298
  %302 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %303 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %309 = load i64*, i64** %16, align 8
  %310 = load i32, i32* %17, align 4
  %311 = load i64, i64* %18, align 8
  %312 = call i32 @keyboard_execute_compositor_binding(%struct.sway_keyboard* %308, i64* %309, i32 %310, i64 %311)
  store i32 %312, i32* %22, align 4
  br label %313

313:                                              ; preds = %307, %301, %298
  %314 = load i32, i32* %22, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %328, label %316

316:                                              ; preds = %313
  %317 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %318 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %324 = load i64*, i64** %13, align 8
  %325 = load i32, i32* %14, align 4
  %326 = load i64, i64* %15, align 8
  %327 = call i32 @keyboard_execute_compositor_binding(%struct.sway_keyboard* %323, i64* %324, i32 %325, i64 %326)
  store i32 %327, i32* %22, align 4
  br label %328

328:                                              ; preds = %322, %316, %313
  %329 = load i32, i32* %22, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %333 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @WLR_KEY_RELEASED, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %368

337:                                              ; preds = %331, %328
  %338 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %339 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %338, i32 0, i32 0
  %340 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %341 = load i64, i64* %12, align 8
  %342 = trunc i64 %341 to i32
  %343 = call i32 @update_shortcut_state(i32* %339, %struct.wlr_event_keyboard_key* %340, i32 %342, i32 0)
  store i32 %343, i32* %25, align 4
  %344 = load i32, i32* %25, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %337
  %347 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %348 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %346, %337
  %353 = load %struct.wlr_seat*, %struct.wlr_seat** %7, align 8
  %354 = load %struct.wlr_input_device*, %struct.wlr_input_device** %8, align 8
  %355 = call i32 @wlr_seat_set_keyboard(%struct.wlr_seat* %353, %struct.wlr_input_device* %354)
  %356 = load %struct.wlr_seat*, %struct.wlr_seat** %7, align 8
  %357 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %358 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %361 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %10, align 8
  %364 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @wlr_seat_keyboard_notify_key(%struct.wlr_seat* %356, i32 %359, i64 %362, i64 %365)
  br label %367

367:                                              ; preds = %352, %346
  br label %368

368:                                              ; preds = %367, %331
  %369 = call i32 (...) @transaction_commit_dirty()
  %370 = load i8*, i8** %9, align 8
  %371 = call i32 @free(i8* %370)
  ret void
}

declare dso_local %struct.sway_keyboard* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i8* @input_device_get_identifier(%struct.wlr_input_device*) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, %struct.wlr_seat*) #1

declare dso_local i64 @keyboard_keysyms_raw(%struct.sway_keyboard*, i64, i64**, i32*) #1

declare dso_local i64 @keyboard_keysyms_translated(%struct.sway_keyboard*, i64, i64**, i32*) #1

declare dso_local i32 @wlr_keyboard_get_modifiers(%struct.TYPE_12__*) #1

declare dso_local i32 @update_shortcut_state(i32*, %struct.wlr_event_keyboard_key*, i32, i32) #1

declare dso_local i32 @get_active_binding(i32*, i32, %struct.sway_binding**, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @seat_execute_command(%struct.sway_seat*, %struct.sway_binding*) #1

declare dso_local i64 @wl_event_source_timer_update(i32, i64) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @sway_keyboard_disarm_key_repeat(%struct.sway_keyboard*) #1

declare dso_local i32 @keyboard_execute_compositor_binding(%struct.sway_keyboard*, i64*, i32, i64) #1

declare dso_local i32 @wlr_seat_set_keyboard(%struct.wlr_seat*, %struct.wlr_input_device*) #1

declare dso_local i32 @wlr_seat_keyboard_notify_key(%struct.wlr_seat*, i32, i64, i64) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
