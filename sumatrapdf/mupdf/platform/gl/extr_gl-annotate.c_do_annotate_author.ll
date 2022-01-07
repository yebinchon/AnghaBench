; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_author.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_author.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Author: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_annotate_author to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_annotate_author() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @ctx, align 4
  %3 = load i32, i32* @selected_annot, align 4
  %4 = call i64 @pdf_annot_has_author(i32 %2, i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i32, i32* @ctx, align 4
  %8 = load i32, i32* @selected_annot, align 4
  %9 = call i8* @pdf_annot_author(i32 %7, i32 %8)
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @ui_label(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %6
  br label %17

17:                                               ; preds = %16, %0
  ret void
}

declare dso_local i64 @pdf_annot_has_author(i32, i32) #1

declare dso_local i8* @pdf_annot_author(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ui_label(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
