; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_editor_process_sdl_event.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_editor_process_sdl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@edit_map = common dso_local global i32 0, align 4
@editor_scale = common dso_local global float 0.000000e+00, align 4
@in_editor = common dso_local global i32 0, align 4
@STBTE_scroll_right = common dso_local global i32 0, align 4
@STBTE_scroll_left = common dso_local global i32 0, align 4
@STBTE_scroll_up = common dso_local global i32 0, align 4
@STBTE_scroll_down = common dso_local global i32 0, align 4
@STBTE_tool_select = common dso_local global i32 0, align 4
@STBTE_tool_brush = common dso_local global i32 0, align 4
@STBTE_tool_erase = common dso_local global i32 0, align 4
@STBTE_tool_rectangle = common dso_local global i32 0, align 4
@STBTE_tool_eyedropper = common dso_local global i32 0, align 4
@STBTE_tool_link = common dso_local global i32 0, align 4
@STBTE_act_toggle_grid = common dso_local global i32 0, align 4
@KMOD_CTRL = common dso_local global i32 0, align 4
@STBTE_act_cut = common dso_local global i32 0, align 4
@STBTE_act_copy = common dso_local global i32 0, align 4
@STBTE_act_paste = common dso_local global i32 0, align 4
@STBTE_act_undo = common dso_local global i32 0, align 4
@STBTE_act_redo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editor_process_sdl_event(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %105 [
    i32 141, label %6
    i32 143, label %6
    i32 142, label %6
    i32 140, label %6
    i32 144, label %14
  ]

6:                                                ; preds = %1, %1, %1, %1
  %7 = load i32, i32* @edit_map, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = load float, float* @editor_scale, align 4
  %10 = fdiv float 1.000000e+00, %9
  %11 = load float, float* @editor_scale, align 4
  %12 = fdiv float 1.000000e+00, %11
  %13 = call i32 @stbte_mouse_sdl(i32 %7, %struct.TYPE_8__* %8, float %10, float %12, i32 0, i32 0)
  br label %105

14:                                               ; preds = %1
  %15 = load i32, i32* @in_editor, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %104

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 146, label %23
    i32 147, label %26
    i32 145, label %29
    i32 148, label %32
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* @STBTE_scroll_right, align 4
  %25 = call i32 @editor_key(i32 %24)
  br label %35

26:                                               ; preds = %17
  %27 = load i32, i32* @STBTE_scroll_left, align 4
  %28 = call i32 @editor_key(i32 %27)
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* @STBTE_scroll_up, align 4
  %31 = call i32 @editor_key(i32 %30)
  br label %35

32:                                               ; preds = %17
  %33 = load i32, i32* @STBTE_scroll_down, align 4
  %34 = call i32 @editor_key(i32 %33)
  br label %35

35:                                               ; preds = %17, %32, %29, %26, %23
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %62 [
    i32 132, label %41
    i32 139, label %44
    i32 137, label %47
    i32 133, label %50
    i32 135, label %53
    i32 134, label %56
    i32 136, label %59
  ]

41:                                               ; preds = %35
  %42 = load i32, i32* @STBTE_tool_select, align 4
  %43 = call i32 @editor_key(i32 %42)
  br label %62

44:                                               ; preds = %35
  %45 = load i32, i32* @STBTE_tool_brush, align 4
  %46 = call i32 @editor_key(i32 %45)
  br label %62

47:                                               ; preds = %35
  %48 = load i32, i32* @STBTE_tool_erase, align 4
  %49 = call i32 @editor_key(i32 %48)
  br label %62

50:                                               ; preds = %35
  %51 = load i32, i32* @STBTE_tool_rectangle, align 4
  %52 = call i32 @editor_key(i32 %51)
  br label %62

53:                                               ; preds = %35
  %54 = load i32, i32* @STBTE_tool_eyedropper, align 4
  %55 = call i32 @editor_key(i32 %54)
  br label %62

56:                                               ; preds = %35
  %57 = load i32, i32* @STBTE_tool_link, align 4
  %58 = call i32 @editor_key(i32 %57)
  br label %62

59:                                               ; preds = %35
  %60 = load i32, i32* @STBTE_act_toggle_grid, align 4
  %61 = call i32 @editor_key(i32 %60)
  br label %62

62:                                               ; preds = %35, %59, %56, %53, %50, %47, %44, %41
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @KMOD_CTRL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %62
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @KMOD_CTRL, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %102 [
    i32 130, label %87
    i32 138, label %90
    i32 131, label %93
    i32 128, label %96
    i32 129, label %99
  ]

87:                                               ; preds = %81
  %88 = load i32, i32* @STBTE_act_cut, align 4
  %89 = call i32 @editor_key(i32 %88)
  br label %102

90:                                               ; preds = %81
  %91 = load i32, i32* @STBTE_act_copy, align 4
  %92 = call i32 @editor_key(i32 %91)
  br label %102

93:                                               ; preds = %81
  %94 = load i32, i32* @STBTE_act_paste, align 4
  %95 = call i32 @editor_key(i32 %94)
  br label %102

96:                                               ; preds = %81
  %97 = load i32, i32* @STBTE_act_undo, align 4
  %98 = call i32 @editor_key(i32 %97)
  br label %102

99:                                               ; preds = %81
  %100 = load i32, i32* @STBTE_act_redo, align 4
  %101 = call i32 @editor_key(i32 %100)
  br label %102

102:                                              ; preds = %81, %99, %96, %93, %90, %87
  br label %103

103:                                              ; preds = %102, %71, %62
  br label %104

104:                                              ; preds = %103, %14
  br label %105

105:                                              ; preds = %1, %104, %6
  ret void
}

declare dso_local i32 @stbte_mouse_sdl(i32, %struct.TYPE_8__*, float, float, i32, i32) #1

declare dso_local i32 @editor_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
