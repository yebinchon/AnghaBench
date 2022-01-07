; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_reset_modifier_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_reset_modifier_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MapLeftShiftMask = common dso_local global i32 0, align 4
@XK_Shift_L = common dso_local global i32 0, align 4
@RDP_KEYRELEASE = common dso_local global i32 0, align 4
@SCANCODE_CHAR_LSHIFT = common dso_local global i32 0, align 4
@MapRightShiftMask = common dso_local global i32 0, align 4
@XK_Shift_R = common dso_local global i32 0, align 4
@SCANCODE_CHAR_RSHIFT = common dso_local global i32 0, align 4
@MapLeftCtrlMask = common dso_local global i32 0, align 4
@XK_Control_L = common dso_local global i32 0, align 4
@SCANCODE_CHAR_LCTRL = common dso_local global i32 0, align 4
@MapRightCtrlMask = common dso_local global i32 0, align 4
@XK_Control_R = common dso_local global i32 0, align 4
@SCANCODE_CHAR_RCTRL = common dso_local global i32 0, align 4
@MapLeftAltMask = common dso_local global i32 0, align 4
@XK_Alt_L = common dso_local global i32 0, align 4
@SCANCODE_CHAR_LALT = common dso_local global i32 0, align 4
@MapRightAltMask = common dso_local global i32 0, align 4
@XK_Alt_R = common dso_local global i32 0, align 4
@XK_Mode_switch = common dso_local global i32 0, align 4
@XK_ISO_Level3_Shift = common dso_local global i32 0, align 4
@SCANCODE_CHAR_RALT = common dso_local global i32 0, align 4
@RDP_INPUT_SYNCHRONIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_modifier_keys(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call i32 @read_keyboard_state(%struct.TYPE_11__* %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MapLeftShiftMask, align 4
  %13 = call i64 @MASK_HAS_BITS(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @XK_Shift_L, align 4
  %19 = call i32 @get_key_state(%struct.TYPE_11__* %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RDP_KEYRELEASE, align 4
  %25 = load i32, i32* @SCANCODE_CHAR_LSHIFT, align 4
  %26 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %15, %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MapRightShiftMask, align 4
  %33 = call i64 @MASK_HAS_BITS(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @XK_Shift_R, align 4
  %39 = call i32 @get_key_state(%struct.TYPE_11__* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RDP_KEYRELEASE, align 4
  %45 = load i32, i32* @SCANCODE_CHAR_RSHIFT, align 4
  %46 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %35, %27
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MapLeftCtrlMask, align 4
  %53 = call i64 @MASK_HAS_BITS(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @XK_Control_L, align 4
  %59 = call i32 @get_key_state(%struct.TYPE_11__* %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RDP_KEYRELEASE, align 4
  %65 = load i32, i32* @SCANCODE_CHAR_LCTRL, align 4
  %66 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %55, %47
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MapRightCtrlMask, align 4
  %73 = call i64 @MASK_HAS_BITS(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @XK_Control_R, align 4
  %79 = call i32 @get_key_state(%struct.TYPE_11__* %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RDP_KEYRELEASE, align 4
  %85 = load i32, i32* @SCANCODE_CHAR_RCTRL, align 4
  %86 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %75, %67
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MapLeftAltMask, align 4
  %93 = call i64 @MASK_HAS_BITS(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @XK_Alt_L, align 4
  %99 = call i32 @get_key_state(%struct.TYPE_11__* %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @RDP_KEYRELEASE, align 4
  %105 = load i32, i32* @SCANCODE_CHAR_LALT, align 4
  %106 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %95, %87
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MapRightAltMask, align 4
  %113 = call i64 @MASK_HAS_BITS(i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %107
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @XK_Alt_R, align 4
  %119 = call i32 @get_key_state(%struct.TYPE_11__* %116, i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @XK_Mode_switch, align 4
  %125 = call i32 @get_key_state(%struct.TYPE_11__* %122, i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @XK_ISO_Level3_Shift, align 4
  %131 = call i32 @get_key_state(%struct.TYPE_11__* %128, i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RDP_KEYRELEASE, align 4
  %137 = load i32, i32* @SCANCODE_CHAR_RALT, align 4
  %138 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %127, %121, %115, %107
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @reset_winkey(%struct.TYPE_11__* %140, i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @RDP_INPUT_SYNCHRONIZE, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @ui_get_numlock_state(%struct.TYPE_11__* %151, i32 %152)
  %154 = call i32 @rdp_send_input(%struct.TYPE_11__* %148, i32 %149, i32 %150, i32 0, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %147, %139
  ret void
}

declare dso_local i32 @read_keyboard_state(%struct.TYPE_11__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @MASK_HAS_BITS(i32, i32) #1

declare dso_local i32 @get_key_state(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rdp_send_scancode(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @reset_winkey(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rdp_send_input(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_get_numlock_state(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
