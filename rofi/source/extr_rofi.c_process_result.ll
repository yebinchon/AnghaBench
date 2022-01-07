; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_process_result.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_process_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@curr_switcher = common dso_local global i32 0, align 4
@NEXT_DIALOG = common dso_local global i32 0, align 4
@num_modi = common dso_local global i32 0, align 4
@PREVIOUS_DIALOG = common dso_local global i32 0, align 4
@RELOAD_DIALOG = common dso_local global i32 0, align 4
@RESET_DIALOG = common dso_local global i32 0, align 4
@MODE_EXIT = common dso_local global i32 0, align 4
@modi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_result(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = call i32 @rofi_view_set_active(%struct.TYPE_10__* null)
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %96

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @rofi_view_get_selected_line(%struct.TYPE_10__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i32 @rofi_view_get_return_value(%struct.TYPE_10__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = call i32 @rofi_view_get_user_input(%struct.TYPE_10__* %20)
  %22 = call i8* @g_strdup(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mode_result(i32* %23, i32 %24, i8** %6, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @g_free(i8* %27)
  %29 = load i32, i32* @curr_switcher, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NEXT_DIALOG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @num_modi, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %80

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PREVIOUS_DIALOG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @num_modi, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @num_modi, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %45
  br label %79

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RELOAD_DIALOG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @RESET_DIALOG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = call i32 @rofi_view_clear_input(%struct.TYPE_10__* %64)
  br label %77

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MODE_EXIT, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @num_modi, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %8, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MODE_EXIT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = load i32*, i32** @modi, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rofi_view_switch_mode(%struct.TYPE_10__* %85, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = call i32 @rofi_view_set_active(%struct.TYPE_10__* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* @curr_switcher, align 4
  br label %99

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = call i32 @rofi_view_free(%struct.TYPE_10__* %97)
  br label %99

99:                                               ; preds = %96, %84
  ret void
}

declare dso_local i32 @rofi_view_set_active(%struct.TYPE_10__*) #1

declare dso_local i32 @rofi_view_get_selected_line(%struct.TYPE_10__*) #1

declare dso_local i32 @rofi_view_get_return_value(%struct.TYPE_10__*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @rofi_view_get_user_input(%struct.TYPE_10__*) #1

declare dso_local i32 @mode_result(i32*, i32, i8**, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @rofi_view_clear_input(%struct.TYPE_10__*) #1

declare dso_local i32 @rofi_view_switch_mode(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rofi_view_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
