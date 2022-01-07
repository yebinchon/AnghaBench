; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_font_dialog.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_font_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@output_conv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" 10\00", align 1
@DEFAULT_FONT = common dso_local global i8* null, align 8
@GTK_RESPONSE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@input_conv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GTK_RESPONSE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @gui_mch_font_dialog(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  store i64* null, i64** %5, align 8
  %10 = call i32* @gtk_font_selection_dialog_new(i32* null)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @GTK_WINDOW(i32* %11)
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %14 = call i32 @GTK_WINDOW(i32* %13)
  %15 = call i32 @gtk_window_set_transient_for(i32 %12, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @GTK_WINDOW(i32* %16)
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @gtk_window_set_destroy_with_parent(i32 %17, i32 %18)
  %20 = load i64*, i64** %2, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %1
  %23 = load i64*, i64** %2, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NUL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @output_conv, i32 0, i32 0), align 8
  %30 = load i64, i64* @CONV_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64*, i64** %2, align 8
  %34 = call i64* @string_convert(%struct.TYPE_5__* @output_conv, i64* %33, i32* null)
  store i64* %34, i64** %6, align 8
  br label %37

35:                                               ; preds = %28
  %36 = load i64*, i64** %2, align 8
  store i64* %36, i64** %6, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i64*, i64** %6, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = call i32 @STRLEN(i64* %39)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @vim_isdigit(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %37
  %48 = load i64*, i64** %6, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = call i32 @STRLEN(i64* %49)
  %51 = add nsw i32 %50, 3
  %52 = call i64* @vim_strnsave(i64* %48, i32 %51)
  store i64* %52, i64** %7, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load i64*, i64** %7, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 @STRLEN(i64* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = call i32 @STRCPY(i64* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %62 = load i64*, i64** %6, align 8
  %63 = load i64*, i64** %2, align 8
  %64 = icmp ne i64* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i64*, i64** %6, align 8
  %67 = call i32 @vim_free(i64* %66)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i64*, i64** %7, align 8
  store i64* %69, i64** %6, align 8
  br label %70

70:                                               ; preds = %68, %47
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @GTK_FONT_SELECTION_DIALOG(i32* %72)
  %74 = load i64*, i64** %6, align 8
  %75 = bitcast i64* %74 to i8*
  %76 = call i32 @gtk_font_selection_dialog_set_font_name(i32 %73, i8* %75)
  %77 = load i64*, i64** %6, align 8
  %78 = load i64*, i64** %2, align 8
  %79 = icmp ne i64* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i64*, i64** %6, align 8
  %82 = call i32 @vim_free(i64* %81)
  br label %83

83:                                               ; preds = %80, %71
  br label %89

84:                                               ; preds = %22, %1
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @GTK_FONT_SELECTION_DIALOG(i32* %85)
  %87 = load i8*, i8** @DEFAULT_FONT, align 8
  %88 = call i32 @gtk_font_selection_dialog_set_font_name(i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @GTK_DIALOG(i32* %90)
  %92 = call i32 @gtk_dialog_run(i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @GTK_RESPONSE_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %89
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @GTK_FONT_SELECTION_DIALOG(i32* %97)
  %99 = call i8* @gtk_font_selection_dialog_get_font_name(i32 %98)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i64*
  %105 = call i64* @vim_strsave_escaped(i64* %104, i64* bitcast ([2 x i8]* @.str.1 to i64*))
  store i64* %105, i64** %9, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @g_free(i8* %106)
  %108 = load i64*, i64** %9, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @input_conv, i32 0, i32 0), align 8
  %112 = load i64, i64* @CONV_NONE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i64*, i64** %9, align 8
  %116 = call i64* @string_convert(%struct.TYPE_5__* @input_conv, i64* %115, i32* null)
  store i64* %116, i64** %5, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = call i32 @vim_free(i64* %117)
  br label %121

119:                                              ; preds = %110, %102
  %120 = load i64*, i64** %9, align 8
  store i64* %120, i64** %5, align 8
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %89
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @GTK_RESPONSE_NONE, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @gtk_widget_destroy(i32* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i64*, i64** %5, align 8
  ret i64* %131
}

declare dso_local i32* @gtk_font_selection_dialog_new(i32*) #1

declare dso_local i32 @gtk_window_set_transient_for(i32, i32) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @gtk_window_set_destroy_with_parent(i32, i32) #1

declare dso_local i64* @string_convert(%struct.TYPE_5__*, i64*, i32*) #1

declare dso_local i32 @vim_isdigit(i64) #1

declare dso_local i32 @STRLEN(i64*) #1

declare dso_local i64* @vim_strnsave(i64*, i32) #1

declare dso_local i32 @STRCPY(i64*, i8*) #1

declare dso_local i32 @vim_free(i64*) #1

declare dso_local i32 @gtk_font_selection_dialog_set_font_name(i32, i8*) #1

declare dso_local i32 @GTK_FONT_SELECTION_DIALOG(i32*) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i8* @gtk_font_selection_dialog_get_font_name(i32) #1

declare dso_local i64* @vim_strsave_escaped(i64*, i64*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
