; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_input.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_device = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i64, i64, i64, %struct.wlr_keyboard* }
%struct.wlr_keyboard = type { %struct.xkb_state*, %struct.xkb_keymap* }
%struct.xkb_state = type { i32 }
%struct.xkb_keymap = type { i32 }
%struct.libinput_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Device must not be null\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@WLR_INPUT_DEVICE_KEYBOARD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"xkb_layout_names\00", align 1
@XKB_STATE_LAYOUT_EFFECTIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"xkb_active_layout_index\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"xkb_active_layout_name\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"libinput\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipc_json_describe_input(%struct.sway_input_device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sway_input_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wlr_keyboard*, align 8
  %6 = alloca %struct.xkb_keymap*, align 8
  %7 = alloca %struct.xkb_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.libinput_device*, align 8
  store %struct.sway_input_device* %0, %struct.sway_input_device** %3, align 8
  %14 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %15 = call i32 @sway_assert(%struct.sway_input_device* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %141

18:                                               ; preds = %1
  %19 = call i32* (...) @json_object_new_object()
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %22 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @json_object_new_string(i8* %23)
  %25 = call i32 @json_object_object_add(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %28 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @json_object_new_string(i8* %31)
  %33 = call i32 @json_object_object_add(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %36 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32* @json_object_new_int(i64 %39)
  %41 = call i32 @json_object_object_add(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %44 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32* @json_object_new_int(i64 %47)
  %49 = call i32 @json_object_object_add(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %52 = call i8* @input_device_get_type(%struct.sway_input_device* %51)
  %53 = call i32* @json_object_new_string(i8* %52)
  %54 = call i32 @json_object_object_add(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %53)
  %55 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %56 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WLR_INPUT_DEVICE_KEYBOARD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %124

62:                                               ; preds = %18
  %63 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %64 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %66, align 8
  store %struct.wlr_keyboard* %67, %struct.wlr_keyboard** %5, align 8
  %68 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %5, align 8
  %69 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %68, i32 0, i32 1
  %70 = load %struct.xkb_keymap*, %struct.xkb_keymap** %69, align 8
  store %struct.xkb_keymap* %70, %struct.xkb_keymap** %6, align 8
  %71 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %5, align 8
  %72 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %71, i32 0, i32 0
  %73 = load %struct.xkb_state*, %struct.xkb_state** %72, align 8
  store %struct.xkb_state* %73, %struct.xkb_state** %7, align 8
  %74 = call i32* (...) @json_object_new_array()
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @json_object_object_add(i32* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %76)
  %78 = load %struct.xkb_keymap*, %struct.xkb_keymap** %6, align 8
  %79 = call i64 @xkb_keymap_num_layouts(%struct.xkb_keymap* %78)
  store i64 %79, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %120, %62
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  %85 = load %struct.xkb_keymap*, %struct.xkb_keymap** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i8* @xkb_keymap_layout_get_name(%struct.xkb_keymap* %85, i64 %86)
  store i8* %87, i8** %11, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i8*, i8** %11, align 8
  %93 = call i32* @json_object_new_string(i8* %92)
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32* [ %93, %91 ], [ null, %94 ]
  %97 = call i32 @json_object_array_add(i32* %88, i32* %96)
  %98 = load %struct.xkb_state*, %struct.xkb_state** %7, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* @XKB_STATE_LAYOUT_EFFECTIVE, align 4
  %101 = call i32 @xkb_state_layout_index_is_active(%struct.xkb_state* %98, i64 %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %95
  %105 = load i32*, i32** %4, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32* @json_object_new_int(i64 %106)
  %108 = call i32 @json_object_object_add(i32* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i8*, i8** %11, align 8
  %114 = call i32* @json_object_new_string(i8* %113)
  br label %116

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %112
  %117 = phi i32* [ %114, %112 ], [ null, %115 ]
  %118 = call i32 @json_object_object_add(i32* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %117)
  br label %119

119:                                              ; preds = %116, %95
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %80

123:                                              ; preds = %80
  br label %124

124:                                              ; preds = %123, %18
  %125 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %126 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = call i64 @wlr_input_device_is_libinput(%struct.TYPE_3__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %132 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = call %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__* %133)
  store %struct.libinput_device* %134, %struct.libinput_device** %13, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.libinput_device*, %struct.libinput_device** %13, align 8
  %137 = call i32* @describe_libinput_device(%struct.libinput_device* %136)
  %138 = call i32 @json_object_object_add(i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %137)
  br label %139

139:                                              ; preds = %130, %124
  %140 = load i32*, i32** %4, align 8
  store i32* %140, i32** %2, align 8
  br label %141

141:                                              ; preds = %139, %17
  %142 = load i32*, i32** %2, align 8
  ret i32* %142
}

declare dso_local i32 @sway_assert(%struct.sway_input_device*, i8*) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32* @json_object_new_int(i64) #1

declare dso_local i8* @input_device_get_type(%struct.sway_input_device*) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i64 @xkb_keymap_num_layouts(%struct.xkb_keymap*) #1

declare dso_local i8* @xkb_keymap_layout_get_name(%struct.xkb_keymap*, i64) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i32 @xkb_state_layout_index_is_active(%struct.xkb_state*, i64, i32) #1

declare dso_local i64 @wlr_input_device_is_libinput(%struct.TYPE_3__*) #1

declare dso_local %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__*) #1

declare dso_local i32* @describe_libinput_device(%struct.libinput_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
