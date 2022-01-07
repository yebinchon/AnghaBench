; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_describe_libinput_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_describe_libinput_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }
%struct.json_object = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"disabled_on_external_mouse\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"send_events\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tap\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lrm\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lmr\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"tap_button_map\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tap_drag\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"tap_drag_lock\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"accel_speed\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"accel_profile\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"natural_scroll\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"left_handed\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"button_areas\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"clickfinger\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"click_method\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"middle_emulation\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"two_finger\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"on_button_down\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"scroll_method\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"scroll_button\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"dwt\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"calibration_matrix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.libinput_device*)* @describe_libinput_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @describe_libinput_device(%struct.libinput_device* %0) #0 {
  %2 = alloca %struct.libinput_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [6 x float], align 16
  %21 = alloca %struct.json_object*, align 8
  %22 = alloca %struct.json_object*, align 8
  %23 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %2, align 8
  %24 = call i32* (...) @json_object_new_object()
  store i32* %24, i32** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %25 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %26 = call i32 @libinput_device_config_send_events_get_mode(%struct.libinput_device* %25)
  switch i32 %26, label %30 [
    i32 132, label %27
    i32 133, label %28
    i32 134, label %29
  ]

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %30

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %30

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %1, %29, %28, %27
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call %struct.json_object* @json_object_new_string(i8* %32)
  %34 = call i32 @json_object_object_add(i32* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.json_object* %33)
  %35 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %36 = call i64 @libinput_device_config_tap_get_finger_count(%struct.libinput_device* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %39 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %40 = call i32 @libinput_device_config_tap_get_enabled(%struct.libinput_device* %39)
  switch i32 %40, label %43 [
    i32 130, label %41
    i32 131, label %42
  ]

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %43

43:                                               ; preds = %38, %42, %41
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call %struct.json_object* @json_object_new_string(i8* %45)
  %47 = call i32 @json_object_object_add(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.json_object* %46)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %48 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %49 = call i32 @libinput_device_config_tap_get_button_map(%struct.libinput_device* %48)
  switch i32 %49, label %52 [
    i32 128, label %50
    i32 129, label %51
  ]

50:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %52

51:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %52

52:                                               ; preds = %43, %51, %50
  %53 = load i32*, i32** %3, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call %struct.json_object* @json_object_new_string(i8* %54)
  %56 = call i32 @json_object_object_add(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.json_object* %55)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %57 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %58 = call i32 @libinput_device_config_tap_get_drag_enabled(%struct.libinput_device* %57)
  switch i32 %58, label %61 [
    i32 145, label %59
    i32 146, label %60
  ]

59:                                               ; preds = %52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %61

60:                                               ; preds = %52
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %61

61:                                               ; preds = %52, %60, %59
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call %struct.json_object* @json_object_new_string(i8* %63)
  %65 = call i32 @json_object_object_add(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.json_object* %64)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %66 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %67 = call i32 @libinput_device_config_tap_get_drag_lock_enabled(%struct.libinput_device* %66)
  switch i32 %67, label %70 [
    i32 143, label %68
    i32 144, label %69
  ]

68:                                               ; preds = %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %70

69:                                               ; preds = %61
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %70

70:                                               ; preds = %61, %69, %68
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call %struct.json_object* @json_object_new_string(i8* %72)
  %74 = call i32 @json_object_object_add(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.json_object* %73)
  br label %75

75:                                               ; preds = %70, %30
  %76 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %77 = call i64 @libinput_device_config_accel_is_available(%struct.libinput_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %81 = call double @libinput_device_config_accel_get_speed(%struct.libinput_device* %80)
  store double %81, double* %9, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = load double, double* %9, align 8
  %84 = fptrunc double %83 to float
  %85 = call %struct.json_object* @json_object_new_double(float %84)
  %86 = call i32 @json_object_object_add(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %struct.json_object* %85)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %87 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %88 = call i32 @libinput_device_config_accel_get_profile(%struct.libinput_device* %87)
  switch i32 %88, label %92 [
    i32 150, label %89
    i32 151, label %90
    i32 152, label %91
  ]

89:                                               ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %92

90:                                               ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %92

91:                                               ; preds = %79
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %92

92:                                               ; preds = %79, %91, %90, %89
  %93 = load i32*, i32** %3, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call %struct.json_object* @json_object_new_string(i8* %94)
  %96 = call i32 @json_object_object_add(i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), %struct.json_object* %95)
  br label %97

97:                                               ; preds = %92, %75
  %98 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %99 = call i64 @libinput_device_config_scroll_has_natural_scroll(%struct.libinput_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %102 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %103 = call i64 @libinput_device_config_scroll_get_natural_scroll_enabled(%struct.libinput_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32*, i32** %3, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call %struct.json_object* @json_object_new_string(i8* %108)
  %110 = call i32 @json_object_object_add(i32* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), %struct.json_object* %109)
  br label %111

111:                                              ; preds = %106, %97
  %112 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %113 = call i64 @libinput_device_config_left_handed_is_available(%struct.libinput_device* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %116 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %117 = call i64 @libinput_device_config_left_handed_get(%struct.libinput_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i32*, i32** %3, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call %struct.json_object* @json_object_new_string(i8* %122)
  %124 = call i32 @json_object_object_add(i32* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), %struct.json_object* %123)
  br label %125

125:                                              ; preds = %120, %111
  %126 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %127 = call i32 @libinput_device_config_click_get_methods(%struct.libinput_device* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = and i32 %128, -148
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %132 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %133 = call i32 @libinput_device_config_click_get_method(%struct.libinput_device* %132)
  switch i32 %133, label %137 [
    i32 147, label %134
    i32 149, label %135
    i32 148, label %136
  ]

134:                                              ; preds = %131
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %137

135:                                              ; preds = %131
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %14, align 8
  br label %137

136:                                              ; preds = %131
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %14, align 8
  br label %137

137:                                              ; preds = %131, %136, %135, %134
  %138 = load i32*, i32** %3, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = call %struct.json_object* @json_object_new_string(i8* %139)
  %141 = call i32 @json_object_object_add(i32* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %struct.json_object* %140)
  br label %142

142:                                              ; preds = %137, %125
  %143 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %144 = call i64 @libinput_device_config_middle_emulation_is_available(%struct.libinput_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %147 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %148 = call i32 @libinput_device_config_middle_emulation_get_enabled(%struct.libinput_device* %147)
  switch i32 %148, label %151 [
    i32 139, label %149
    i32 140, label %150
  ]

149:                                              ; preds = %146
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %151

150:                                              ; preds = %146
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %151

151:                                              ; preds = %146, %150, %149
  %152 = load i32*, i32** %3, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = call %struct.json_object* @json_object_new_string(i8* %153)
  %155 = call i32 @json_object_object_add(i32* %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), %struct.json_object* %154)
  br label %156

156:                                              ; preds = %151, %142
  %157 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %158 = call i32 @libinput_device_config_scroll_get_methods(%struct.libinput_device* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, -137
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %156
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %163 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %164 = call i32 @libinput_device_config_scroll_get_method(%struct.libinput_device* %163)
  switch i32 %164, label %169 [
    i32 136, label %165
    i32 138, label %166
    i32 137, label %167
    i32 135, label %168
  ]

165:                                              ; preds = %162
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %169

166:                                              ; preds = %162
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %17, align 8
  br label %169

167:                                              ; preds = %162
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %17, align 8
  br label %169

168:                                              ; preds = %162
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8** %17, align 8
  br label %169

169:                                              ; preds = %162, %168, %167, %166, %165
  %170 = load i32*, i32** %3, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = call %struct.json_object* @json_object_new_string(i8* %171)
  %173 = call i32 @json_object_object_add(i32* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), %struct.json_object* %172)
  %174 = load i32, i32* %16, align 4
  %175 = and i32 %174, 135
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %179 = call i32 @libinput_device_config_scroll_get_button(%struct.libinput_device* %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %18, align 4
  %182 = call %struct.json_object* @json_object_new_int(i32 %181)
  %183 = call i32 @json_object_object_add(i32* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), %struct.json_object* %182)
  br label %184

184:                                              ; preds = %177, %169
  br label %185

185:                                              ; preds = %184, %156
  %186 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %187 = call i64 @libinput_device_config_dwt_is_available(%struct.libinput_device* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %190 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %191 = call i32 @libinput_device_config_dwt_get_enabled(%struct.libinput_device* %190)
  switch i32 %191, label %194 [
    i32 141, label %192
    i32 142, label %193
  ]

192:                                              ; preds = %189
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %194

193:                                              ; preds = %189
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %194

194:                                              ; preds = %189, %193, %192
  %195 = load i32*, i32** %3, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = call %struct.json_object* @json_object_new_string(i8* %196)
  %198 = call i32 @json_object_object_add(i32* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), %struct.json_object* %197)
  br label %199

199:                                              ; preds = %194, %185
  %200 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %201 = call i64 @libinput_device_config_calibration_has_matrix(%struct.libinput_device* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = load %struct.libinput_device*, %struct.libinput_device** %2, align 8
  %205 = getelementptr inbounds [6 x float], [6 x float]* %20, i64 0, i64 0
  %206 = call i32 @libinput_device_config_calibration_get_matrix(%struct.libinput_device* %204, float* %205)
  %207 = call %struct.json_object* (...) @json_object_new_array()
  store %struct.json_object* %207, %struct.json_object** %21, align 8
  store i32 0, i32* %23, align 4
  br label %208

208:                                              ; preds = %220, %203
  %209 = load i32, i32* %23, align 4
  %210 = icmp slt i32 %209, 6
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load i32, i32* %23, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [6 x float], [6 x float]* %20, i64 0, i64 %213
  %215 = load float, float* %214, align 4
  %216 = call %struct.json_object* @json_object_new_double(float %215)
  store %struct.json_object* %216, %struct.json_object** %22, align 8
  %217 = load %struct.json_object*, %struct.json_object** %21, align 8
  %218 = load %struct.json_object*, %struct.json_object** %22, align 8
  %219 = call i32 @json_object_array_add(%struct.json_object* %217, %struct.json_object* %218)
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %23, align 4
  br label %208

223:                                              ; preds = %208
  %224 = load i32*, i32** %3, align 8
  %225 = load %struct.json_object*, %struct.json_object** %21, align 8
  %226 = call i32 @json_object_object_add(i32* %224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), %struct.json_object* %225)
  br label %227

227:                                              ; preds = %223, %199
  %228 = load i32*, i32** %3, align 8
  ret i32* %228
}

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @libinput_device_config_send_events_get_mode(%struct.libinput_device*) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, %struct.json_object*) #1

declare dso_local %struct.json_object* @json_object_new_string(i8*) #1

declare dso_local i64 @libinput_device_config_tap_get_finger_count(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_tap_get_enabled(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_tap_get_button_map(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_tap_get_drag_enabled(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_tap_get_drag_lock_enabled(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_accel_is_available(%struct.libinput_device*) #1

declare dso_local double @libinput_device_config_accel_get_speed(%struct.libinput_device*) #1

declare dso_local %struct.json_object* @json_object_new_double(float) #1

declare dso_local i32 @libinput_device_config_accel_get_profile(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_scroll_has_natural_scroll(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_scroll_get_natural_scroll_enabled(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_left_handed_is_available(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_left_handed_get(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_click_get_methods(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_click_get_method(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_middle_emulation_is_available(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_middle_emulation_get_enabled(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_scroll_get_methods(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_scroll_get_method(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_scroll_get_button(%struct.libinput_device*) #1

declare dso_local %struct.json_object* @json_object_new_int(i32) #1

declare dso_local i64 @libinput_device_config_dwt_is_available(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_dwt_get_enabled(%struct.libinput_device*) #1

declare dso_local i64 @libinput_device_config_calibration_has_matrix(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_calibration_get_matrix(%struct.libinput_device*, float*) #1

declare dso_local %struct.json_object* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(%struct.json_object*, %struct.json_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
