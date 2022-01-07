; ModuleID = '/home/carl/AnghaBench/sway/common/extr_pango.c_get_pango_layout.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_pango.c_get_pango_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pango_parse_markup '%s' -> error %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_pango_layout(i32* %0, i8* %1, i8* %2, double %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @pango_cairo_create_layout(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @pango_parse_markup(i8* %21, i32 -1, i32 0, i32** %12, i8** %13, i32* null, %struct.TYPE_4__** %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @pango_layout_set_text(i32* %25, i8* %26, i32 -1)
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @free(i8* %28)
  br label %39

30:                                               ; preds = %20
  %31 = load i32, i32* @SWAY_ERROR, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sway_log(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %38 = call i32 @g_error_free(%struct.TYPE_4__* %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %30, %24
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = call i32* (...) @pango_attr_list_new()
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @pango_layout_set_text(i32* %45, i8* %46, i32 -1)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32*, i32** %12, align 8
  %50 = load double, double* %9, align 8
  %51 = call i32 @pango_attr_scale_new(double %50)
  %52 = call i32 @pango_attr_list_insert(i32* %49, i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32* @pango_font_description_from_string(i8* %53)
  store i32* %54, i32** %15, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @pango_layout_set_font_description(i32* %55, i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @pango_layout_set_single_paragraph_mode(i32* %58, i32 1)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @pango_layout_set_attributes(i32* %60, i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @pango_attr_list_unref(i32* %63)
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @pango_font_description_free(i32* %65)
  %67 = load i32*, i32** %11, align 8
  ret i32* %67
}

declare dso_local i32* @pango_cairo_create_layout(i32*) #1

declare dso_local i64 @pango_parse_markup(i8*, i32, i32, i32**, i8**, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @pango_layout_set_text(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

declare dso_local i32* @pango_attr_list_new(...) #1

declare dso_local i32 @pango_attr_list_insert(i32*, i32) #1

declare dso_local i32 @pango_attr_scale_new(double) #1

declare dso_local i32* @pango_font_description_from_string(i8*) #1

declare dso_local i32 @pango_layout_set_font_description(i32*, i32*) #1

declare dso_local i32 @pango_layout_set_single_paragraph_mode(i32*, i32) #1

declare dso_local i32 @pango_layout_set_attributes(i32*, i32*) #1

declare dso_local i32 @pango_attr_list_unref(i32*) #1

declare dso_local i32 @pango_font_description_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
