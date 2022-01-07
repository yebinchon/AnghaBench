; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_switch_mode.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32*, i32*, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"rofi - %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@HIGHLIGHT = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_switch_mode(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32* %8, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @rofi_view_update_prompt(%struct.TYPE_7__* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @mode_get_display_name(i32* %26)
  %28 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @rofi_view_set_window_title(i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @g_free(i8* %31)
  br label %35

33:                                               ; preds = %18
  %34 = call i32 @rofi_view_set_window_title(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32* @rofi_get_mode(i32 %48)
  store i32* %49, i32** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* @HIGHLIGHT, align 4
  br label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @NORMAL, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @textbox_font(i32 %56, i32 %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = call i32 @rofi_view_restart(%struct.TYPE_7__* %74)
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @rofi_view_refilter(%struct.TYPE_7__* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = load i8*, i8** @TRUE, align 8
  %86 = call i32 @rofi_view_update(%struct.TYPE_7__* %84, i8* %85)
  ret void
}

declare dso_local i32 @rofi_view_update_prompt(%struct.TYPE_7__*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @mode_get_display_name(i32*) #1

declare dso_local i32 @rofi_view_set_window_title(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @rofi_get_mode(i32) #1

declare dso_local i32 @textbox_font(i32, i32) #1

declare dso_local i32 @rofi_view_restart(%struct.TYPE_7__*) #1

declare dso_local i32 @rofi_view_refilter(%struct.TYPE_7__*) #1

declare dso_local i32 @rofi_view_update(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
