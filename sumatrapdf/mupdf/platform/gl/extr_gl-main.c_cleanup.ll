; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"FZ_DEBUG_STORE\00", align 1
@ctx = common dso_local global i32 0, align 4
@page_text = common dso_local global i32 0, align 4
@seps = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@fzpage = common dso_local global i32 0, align 4
@outline = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = call i32 (...) @save_history()
  %2 = call i32 (...) @save_accelerator()
  %3 = call i32 (...) @ui_finish()
  %4 = call i32 @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @fz_atoi(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @ctx, align 4
  %9 = call i32 @fz_debug_store(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @ctx, align 4
  %12 = load i32, i32* @page_text, align 4
  %13 = call i32 @fz_drop_stext_page(i32 %11, i32 %12)
  %14 = load i32, i32* @ctx, align 4
  %15 = load i32, i32* @seps, align 4
  %16 = call i32 @fz_drop_separations(i32 %14, i32 %15)
  %17 = load i32, i32* @ctx, align 4
  %18 = load i32, i32* @links, align 4
  %19 = call i32 @fz_drop_link(i32 %17, i32 %18)
  %20 = load i32, i32* @ctx, align 4
  %21 = load i32, i32* @fzpage, align 4
  %22 = call i32 @fz_drop_page(i32 %20, i32 %21)
  %23 = load i32, i32* @ctx, align 4
  %24 = load i32, i32* @outline, align 4
  %25 = call i32 @fz_drop_outline(i32 %23, i32 %24)
  %26 = load i32, i32* @ctx, align 4
  %27 = load i32, i32* @doc, align 4
  %28 = call i32 @fz_drop_document(i32 %26, i32 %27)
  %29 = load i32, i32* @ctx, align 4
  %30 = call i32 @fz_drop_context(i32 %29)
  ret void
}

declare dso_local i32 @save_history(...) #1

declare dso_local i32 @save_accelerator(...) #1

declare dso_local i32 @ui_finish(...) #1

declare dso_local i64 @fz_atoi(i32) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @fz_debug_store(i32) #1

declare dso_local i32 @fz_drop_stext_page(i32, i32) #1

declare dso_local i32 @fz_drop_separations(i32, i32) #1

declare dso_local i32 @fz_drop_link(i32, i32) #1

declare dso_local i32 @fz_drop_page(i32, i32) #1

declare dso_local i32 @fz_drop_outline(i32, i32) #1

declare dso_local i32 @fz_drop_document(i32, i32) #1

declare dso_local i32 @fz_drop_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
