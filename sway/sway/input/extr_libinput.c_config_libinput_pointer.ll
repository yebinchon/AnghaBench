; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_pointer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }
%struct.input_config = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"config_libinput_pointer('%s' on  '%s')\00", align 1
@INT_MIN = common dso_local global i64 0, align 8
@FLT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, %struct.input_config*, i8*)* @config_libinput_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_libinput_pointer(%struct.libinput_device* %0, %struct.input_config* %1, i8* %2) #0 {
  %4 = alloca %struct.libinput_device*, align 8
  %5 = alloca %struct.input_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %4, align 8
  store %struct.input_config* %1, %struct.input_config** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @SWAY_DEBUG, align 4
  %9 = load %struct.input_config*, %struct.input_config** %5, align 8
  %10 = getelementptr inbounds %struct.input_config, %struct.input_config* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sway_log(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  store i32 0, i32* %7, align 4
  %14 = load %struct.input_config*, %struct.input_config** %5, align 8
  %15 = getelementptr inbounds %struct.input_config, %struct.input_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_MIN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %21 = load %struct.input_config*, %struct.input_config** %5, align 8
  %22 = getelementptr inbounds %struct.input_config, %struct.input_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @set_send_events(%struct.libinput_device* %20, i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.input_config*, %struct.input_config** %5, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INT_MIN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %35 = load %struct.input_config*, %struct.input_config** %5, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @set_tap(%struct.libinput_device* %34, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %27
  %42 = load %struct.input_config*, %struct.input_config** %5, align 8
  %43 = getelementptr inbounds %struct.input_config, %struct.input_config* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @INT_MIN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %49 = load %struct.input_config*, %struct.input_config** %5, align 8
  %50 = getelementptr inbounds %struct.input_config, %struct.input_config* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @set_tap_button_map(%struct.libinput_device* %48, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %47, %41
  %56 = load %struct.input_config*, %struct.input_config** %5, align 8
  %57 = getelementptr inbounds %struct.input_config, %struct.input_config* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @INT_MIN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %63 = load %struct.input_config*, %struct.input_config** %5, align 8
  %64 = getelementptr inbounds %struct.input_config, %struct.input_config* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @set_tap_drag(%struct.libinput_device* %62, i64 %65)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %55
  %70 = load %struct.input_config*, %struct.input_config** %5, align 8
  %71 = getelementptr inbounds %struct.input_config, %struct.input_config* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INT_MIN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %77 = load %struct.input_config*, %struct.input_config** %5, align 8
  %78 = getelementptr inbounds %struct.input_config, %struct.input_config* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @set_tap_drag_lock(%struct.libinput_device* %76, i64 %79)
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %75, %69
  %84 = load %struct.input_config*, %struct.input_config** %5, align 8
  %85 = getelementptr inbounds %struct.input_config, %struct.input_config* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FLT_MIN, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %91 = load %struct.input_config*, %struct.input_config** %5, align 8
  %92 = getelementptr inbounds %struct.input_config, %struct.input_config* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @set_accel_speed(%struct.libinput_device* %90, i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %89, %83
  %98 = load %struct.input_config*, %struct.input_config** %5, align 8
  %99 = getelementptr inbounds %struct.input_config, %struct.input_config* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INT_MIN, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %105 = load %struct.input_config*, %struct.input_config** %5, align 8
  %106 = getelementptr inbounds %struct.input_config, %struct.input_config* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @set_accel_profile(%struct.libinput_device* %104, i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.input_config*, %struct.input_config** %5, align 8
  %113 = getelementptr inbounds %struct.input_config, %struct.input_config* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @INT_MIN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %119 = load %struct.input_config*, %struct.input_config** %5, align 8
  %120 = getelementptr inbounds %struct.input_config, %struct.input_config* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @set_natural_scroll(%struct.libinput_device* %118, i64 %121)
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %117, %111
  %126 = load %struct.input_config*, %struct.input_config** %5, align 8
  %127 = getelementptr inbounds %struct.input_config, %struct.input_config* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @INT_MIN, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %133 = load %struct.input_config*, %struct.input_config** %5, align 8
  %134 = getelementptr inbounds %struct.input_config, %struct.input_config* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @set_left_handed(%struct.libinput_device* %132, i64 %135)
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %131, %125
  %140 = load %struct.input_config*, %struct.input_config** %5, align 8
  %141 = getelementptr inbounds %struct.input_config, %struct.input_config* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @INT_MIN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %147 = load %struct.input_config*, %struct.input_config** %5, align 8
  %148 = getelementptr inbounds %struct.input_config, %struct.input_config* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @set_click_method(%struct.libinput_device* %146, i64 %149)
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %145, %139
  %154 = load %struct.input_config*, %struct.input_config** %5, align 8
  %155 = getelementptr inbounds %struct.input_config, %struct.input_config* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @INT_MIN, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %161 = load %struct.input_config*, %struct.input_config** %5, align 8
  %162 = getelementptr inbounds %struct.input_config, %struct.input_config* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @set_middle_emulation(%struct.libinput_device* %160, i64 %163)
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %159, %153
  %168 = load %struct.input_config*, %struct.input_config** %5, align 8
  %169 = getelementptr inbounds %struct.input_config, %struct.input_config* %168, i32 0, i32 11
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @INT_MIN, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %175 = load %struct.input_config*, %struct.input_config** %5, align 8
  %176 = getelementptr inbounds %struct.input_config, %struct.input_config* %175, i32 0, i32 11
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @set_scroll_method(%struct.libinput_device* %174, i64 %177)
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %173, %167
  %182 = load %struct.input_config*, %struct.input_config** %5, align 8
  %183 = getelementptr inbounds %struct.input_config, %struct.input_config* %182, i32 0, i32 12
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @INT_MIN, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %189 = load %struct.input_config*, %struct.input_config** %5, align 8
  %190 = getelementptr inbounds %struct.input_config, %struct.input_config* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @set_scroll_button(%struct.libinput_device* %188, i64 %191)
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %187, %181
  %196 = load %struct.input_config*, %struct.input_config** %5, align 8
  %197 = getelementptr inbounds %struct.input_config, %struct.input_config* %196, i32 0, i32 13
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @INT_MIN, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %203 = load %struct.input_config*, %struct.input_config** %5, align 8
  %204 = getelementptr inbounds %struct.input_config, %struct.input_config* %203, i32 0, i32 13
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @set_dwt(%struct.libinput_device* %202, i64 %205)
  %207 = load i32, i32* %7, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %201, %195
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

declare dso_local i32 @sway_log(i32, i8*, i32, i8*) #1

declare dso_local i32 @set_send_events(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_tap(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_tap_button_map(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_tap_drag(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_tap_drag_lock(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_accel_speed(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_accel_profile(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_natural_scroll(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_left_handed(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_click_method(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_middle_emulation(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_scroll_method(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_scroll_button(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_dwt(%struct.libinput_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
