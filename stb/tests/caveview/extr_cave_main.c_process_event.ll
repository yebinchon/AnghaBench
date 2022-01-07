; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_process_event.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@quit = common dso_local global i32 0, align 4
@screen_x = common dso_local global i32 0, align 4
@screen_y = common dso_local global i32 0, align 4
@SDLK_ESCAPE = common dso_local global i32 0, align 4
@SDL_SCANCODE_D = common dso_local global i32 0, align 4
@SDL_SCANCODE_A = common dso_local global i32 0, align 4
@SDL_SCANCODE_W = common dso_local global i32 0, align 4
@SDLK_SPACE = common dso_local global i32 0, align 4
@SDL_SCANCODE_LCTRL = common dso_local global i32 0, align 4
@global_hack = common dso_local global i32 0, align 4
@GAME_editor = common dso_local global i32 0, align 4
@KMOD_CTRL = common dso_local global i32 0, align 4
@STBTE_act_copy = common dso_local global i32 0, align 4
@STBTE_act_cut = common dso_local global i32 0, align 4
@STBTE_act_paste = common dso_local global i32 0, align 4
@STBTE_act_redo = common dso_local global i32 0, align 4
@STBTE_act_toggle_grid = common dso_local global i32 0, align 4
@STBTE_act_undo = common dso_local global i32 0, align 4
@STBTE_scroll_down = common dso_local global i32 0, align 4
@STBTE_scroll_left = common dso_local global i32 0, align 4
@STBTE_scroll_right = common dso_local global i32 0, align 4
@STBTE_scroll_up = common dso_local global i32 0, align 4
@STBTE_tool_brush = common dso_local global i32 0, align 4
@STBTE_tool_erase = common dso_local global i32 0, align 4
@STBTE_tool_eyedropper = common dso_local global i32 0, align 4
@STBTE_tool_link = common dso_local global i32 0, align 4
@STBTE_tool_rectangle = common dso_local global i32 0, align 4
@STBTE_tool_select = common dso_local global i32 0, align 4
@game_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_event(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %164 [
    i32 143, label %11
    i32 145, label %14
    i32 144, label %14
    i32 142, label %15
    i32 129, label %16
    i32 147, label %32
    i32 146, label %107
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @process_sdl_mouse(%struct.TYPE_10__* %12)
  br label %164

14:                                               ; preds = %1, %1
  br label %164

15:                                               ; preds = %1
  store i32 1, i32* @quit, align 4
  br label %164

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %31 [
    i32 128, label %21
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @screen_x, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @screen_y, align 4
  %30 = call i32 @loopmode(i32 0, i32 1, i32 0)
  br label %31

31:                                               ; preds = %16, %21
  br label %164

32:                                               ; preds = %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = call i32 (...) @SDL_GetModState()
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SDLK_ESCAPE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 1, i32* @quit, align 4
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SDL_SCANCODE_D, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @active_control_set(i32 0)
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SDL_SCANCODE_A, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @active_control_set(i32 1)
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SDL_SCANCODE_W, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @active_control_set(i32 2)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 134
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @active_control_set(i32 3)
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SDLK_SPACE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @active_control_set(i32 4)
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @SDL_SCANCODE_LCTRL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @active_control_set(i32 5)
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 134
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @active_control_set(i32 6)
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SDL_SCANCODE_D, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @active_control_set(i32 7)
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 49
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* @global_hack, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* @global_hack, align 4
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 50
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -1, i32* @global_hack, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %164

107:                                              ; preds = %1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SDL_SCANCODE_D, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = call i32 @active_control_clear(i32 0)
  br label %123

123:                                              ; preds = %121, %107
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SDL_SCANCODE_A, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @active_control_clear(i32 1)
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @SDL_SCANCODE_W, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @active_control_clear(i32 2)
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 134
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @active_control_clear(i32 3)
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @SDLK_SPACE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 @active_control_clear(i32 4)
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SDL_SCANCODE_LCTRL, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 @active_control_clear(i32 5)
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %153, 134
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @active_control_clear(i32 6)
  br label %157

157:                                              ; preds = %155, %152
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SDL_SCANCODE_D, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 @active_control_clear(i32 7)
  br label %163

163:                                              ; preds = %161, %157
  br label %164

164:                                              ; preds = %1, %163, %106, %31, %15, %14, %11
  ret void
}

declare dso_local i32 @process_sdl_mouse(%struct.TYPE_10__*) #1

declare dso_local i32 @loopmode(i32, i32, i32) #1

declare dso_local i32 @SDL_GetModState(...) #1

declare dso_local i32 @active_control_set(i32) #1

declare dso_local i32 @active_control_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
