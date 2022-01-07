; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_handle_special_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_handle_special_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@XK_Alt_L = common dso_local global i32 0, align 4
@XK_Alt_R = common dso_local global i32 0, align 4
@XK_Control_L = common dso_local global i32 0, align 4
@XK_Control_R = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@RDP_KEYPRESS = common dso_local global i32 0, align 4
@SCANCODE_EXTENDED = common dso_local global i32 0, align 4
@RDP_INPUT_SCANCODE = common dso_local global i32 0, align 4
@RDP_KEYRELEASE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@RDP_INPUT_SYNCHRONIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_special_keys(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %165 [
    i32 131, label %13
    i32 139, label %46
    i32 132, label %64
    i32 136, label %106
    i32 130, label %106
    i32 138, label %106
    i32 135, label %113
    i32 129, label %113
    i32 137, label %113
    i32 128, label %120
    i32 134, label %140
    i32 133, label %158
  ]

13:                                               ; preds = %5
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @XK_Alt_L, align 4
  %17 = call i32 @get_key_state(%struct.TYPE_11__* %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @XK_Alt_R, align 4
  %23 = call i32 @get_key_state(%struct.TYPE_11__* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19, %13
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @XK_Control_L, align 4
  %29 = call i32 @get_key_state(%struct.TYPE_11__* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @XK_Control_R, align 4
  %35 = call i32 @get_key_state(%struct.TYPE_11__* %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call i32 @xwin_toggle_fullscreen(%struct.TYPE_11__* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @True, align 4
  store i32 %44, i32* %6, align 4
  br label %167

45:                                               ; preds = %31, %19
  br label %165

46:                                               ; preds = %5
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @RDP_KEYPRESS, align 4
  %53 = load i32, i32* @SCANCODE_EXTENDED, align 4
  %54 = or i32 %53, 70
  %55 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %50, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @RDP_KEYPRESS, align 4
  %59 = load i32, i32* @SCANCODE_EXTENDED, align 4
  %60 = or i32 %59, 198
  %61 = call i32 @rdp_send_scancode(%struct.TYPE_11__* %56, i32 %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %49, %46
  %63 = load i32, i32* @True, align 4
  store i32 %63, i32* %6, align 4
  br label %167

64:                                               ; preds = %5
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %71 = load i32, i32* @RDP_KEYPRESS, align 4
  %72 = call i32 @rdp_send_input(%struct.TYPE_11__* %68, i32 %69, i32 %70, i32 %71, i32 225, i32 0)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %76 = load i32, i32* @RDP_KEYPRESS, align 4
  %77 = call i32 @rdp_send_input(%struct.TYPE_11__* %73, i32 %74, i32 %75, i32 %76, i32 29, i32 0)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %81 = load i32, i32* @RDP_KEYPRESS, align 4
  %82 = call i32 @rdp_send_input(%struct.TYPE_11__* %78, i32 %79, i32 %80, i32 %81, i32 69, i32 0)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %86 = load i32, i32* @RDP_KEYPRESS, align 4
  %87 = call i32 @rdp_send_input(%struct.TYPE_11__* %83, i32 %84, i32 %85, i32 %86, i32 225, i32 0)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %91 = load i32, i32* @RDP_KEYPRESS, align 4
  %92 = call i32 @rdp_send_input(%struct.TYPE_11__* %88, i32 %89, i32 %90, i32 %91, i32 157, i32 0)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %96 = load i32, i32* @RDP_KEYPRESS, align 4
  %97 = call i32 @rdp_send_input(%struct.TYPE_11__* %93, i32 %94, i32 %95, i32 %96, i32 197, i32 0)
  br label %104

98:                                               ; preds = %64
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %102 = load i32, i32* @RDP_KEYRELEASE, align 4
  %103 = call i32 @rdp_send_input(%struct.TYPE_11__* %99, i32 %100, i32 %101, i32 %102, i32 29, i32 0)
  br label %104

104:                                              ; preds = %98, %67
  %105 = load i32, i32* @True, align 4
  store i32 %105, i32* %6, align 4
  br label %167

106:                                              ; preds = %5, %5, %5
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @True, align 4
  %111 = call i32 @send_winkey(%struct.TYPE_11__* %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @True, align 4
  store i32 %112, i32* %6, align 4
  br label %167

113:                                              ; preds = %5, %5, %5
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @False, align 4
  %118 = call i32 @send_winkey(%struct.TYPE_11__* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @True, align 4
  store i32 %119, i32* %6, align 4
  br label %167

120:                                              ; preds = %5
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @XK_Alt_L, align 4
  %129 = call i32 @get_key_state(%struct.TYPE_11__* %126, i32 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @XK_Alt_R, align 4
  %135 = call i32 @get_key_state(%struct.TYPE_11__* %132, i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131, %125
  %138 = load i32, i32* @True, align 4
  store i32 %138, i32* %6, align 4
  br label %167

139:                                              ; preds = %131, %120
  br label %165

140:                                              ; preds = %5
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = load i32, i32* @RDP_INPUT_SYNCHRONIZE, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = call i32 @read_keyboard_state(%struct.TYPE_11__* %152)
  %154 = call i32 @ui_get_numlock_state(%struct.TYPE_11__* %151, i32 %153)
  %155 = call i32 @rdp_send_input(%struct.TYPE_11__* %149, i32 0, i32 %150, i32 0, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %148, %145, %140
  %157 = load i32, i32* @True, align 4
  store i32 %157, i32* %6, align 4
  br label %167

158:                                              ; preds = %5
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = call i32 @ui_seamless_toggle(%struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %5, %164, %139, %45
  %166 = load i32, i32* @False, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %165, %156, %137, %113, %106, %104, %62, %43
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @get_key_state(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @xwin_toggle_fullscreen(%struct.TYPE_11__*) #1

declare dso_local i32 @rdp_send_scancode(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @rdp_send_input(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @send_winkey(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @ui_get_numlock_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @read_keyboard_state(%struct.TYPE_11__*) #1

declare dso_local i32 @ui_seamless_toggle(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
