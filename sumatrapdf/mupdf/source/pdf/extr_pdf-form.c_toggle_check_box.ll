; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_toggle_check_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_toggle_check_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PDF_BTN_FIELD_IS_RADIO = common dso_local global i32 0, align 4
@PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF = common dso_local global i32 0, align 4
@AS = common dso_local global i32 0, align 4
@Off = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*)* @toggle_check_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_check_box(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @pdf_field_flags(i32* %13, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PDF_BTN_FIELD_IS_RADIO, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @find_head_of_field_group(i32* %22, i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %10, align 8
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @AS, align 4
  %33 = call i32* @PDF_NAME(i32 %32)
  %34 = call i32* @pdf_dict_get(i32* %30, i32* %31, i32* %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @Off, align 4
  %40 = call i32* @PDF_NAME(i32 %39)
  %41 = icmp ne i32* %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %70

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @Off, align 4
  %51 = call i32* @PDF_NAME(i32 %50)
  store i32* %51, i32** %12, align 8
  br label %56

52:                                               ; preds = %37, %29
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32* @pdf_button_field_on_state(i32* %53, i32* %54)
  store i32* %55, i32** %12, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @V, align 4
  %60 = call i32* @PDF_NAME(i32 %59)
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @pdf_dict_put(i32* %57, i32* %58, i32* %60, i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @set_check_grp(i32* %63, %struct.TYPE_4__* %64, i32* %65, i32* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %56, %48
  ret void
}

declare dso_local i32 @pdf_field_flags(i32*, i32*) #1

declare dso_local i32* @find_head_of_field_group(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32* @pdf_button_field_on_state(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @set_check_grp(i32*, %struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
