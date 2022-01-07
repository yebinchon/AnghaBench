; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_get_font.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_get_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@output_conv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@PANGO_SCALE = common dso_local global i32 0, align 4
@e_font = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gui_mch_get_font(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %76

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @output_conv, i32 0, i32 0), align 8
  %17 = load i64, i64* @CONV_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @string_convert(%struct.TYPE_4__* @output_conv, i32* %20, i32* null)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32* @pango_font_description_from_string(i8* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @vim_free(i32* %28)
  br label %31

30:                                               ; preds = %19
  store i32* null, i32** %6, align 8
  br label %31

31:                                               ; preds = %30, %24
  br label %36

32:                                               ; preds = %15
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i32* @pango_font_description_from_string(i8* %34)
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @pango_font_description_get_size(i32* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @PANGO_SCALE, align 4
  %46 = mul nsw i32 10, %45
  %47 = call i32 @pango_font_description_set_size(i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32* @pango_context_load_font(i32 %49, i32* %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @pango_font_description_free(i32* %55)
  store i32* null, i32** %6, align 8
  br label %60

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @g_object_unref(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32*, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* @e_font, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @_(i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @EMSG2(i32 %70, i32* %71)
  br label %73

73:                                               ; preds = %67, %64
  store i32* null, i32** %3, align 8
  br label %76

74:                                               ; preds = %61
  %75 = load i32*, i32** %6, align 8
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %74, %73, %14
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32* @string_convert(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32* @pango_font_description_from_string(i8*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i64 @pango_font_description_get_size(i32*) #1

declare dso_local i32 @pango_font_description_set_size(i32*, i32) #1

declare dso_local i32* @pango_context_load_font(i32, i32*) #1

declare dso_local i32 @pango_font_description_free(i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @EMSG2(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
