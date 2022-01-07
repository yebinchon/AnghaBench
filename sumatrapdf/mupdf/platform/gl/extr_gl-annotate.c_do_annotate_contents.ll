; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_contents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32 }

@do_annotate_contents.last_annot = internal global i32* null, align 8
@do_annotate_contents.input = internal global %struct.input zeroinitializer, align 4
@selected_annot = common dso_local global i32* null, align 8
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Contents:\00", align 1
@UI_INPUT_EDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_annotate_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_annotate_contents() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32*, i32** @selected_annot, align 8
  %3 = load i32*, i32** @do_annotate_contents.last_annot, align 8
  %4 = icmp ne i32* %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32*, i32** @selected_annot, align 8
  store i32* %6, i32** @do_annotate_contents.last_annot, align 8
  %7 = load i32, i32* @ctx, align 4
  %8 = load i32*, i32** @selected_annot, align 8
  %9 = call i8* @pdf_annot_contents(i32 %7, i32* %8)
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @ui_input_init(%struct.input* @do_annotate_contents.input, i8* %10)
  br label %12

12:                                               ; preds = %5, %0
  %13 = call i32 @ui_label(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @ui_input(%struct.input* @do_annotate_contents.input, i32 0, i32 5)
  %15 = load i64, i64* @UI_INPUT_EDIT, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @ctx, align 4
  %19 = load i32*, i32** @selected_annot, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.input, %struct.input* @do_annotate_contents.input, i32 0, i32 0), align 4
  %21 = call i32 @pdf_set_annot_contents(i32 %18, i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i8* @pdf_annot_contents(i32, i32*) #1

declare dso_local i32 @ui_input_init(%struct.input*, i8*) #1

declare dso_local i32 @ui_label(i8*) #1

declare dso_local i64 @ui_input(%struct.input*, i32, i32) #1

declare dso_local i32 @pdf_set_annot_contents(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
