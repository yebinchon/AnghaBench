; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_mch_new_menu_colors.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_mch_new_menu_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menuBar = common dso_local global i64 0, align 8
@root_menu = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@toolBar = common dso_local global i64 0, align 8
@toolBarFrame = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_new_menu_colors() #0 {
  %1 = load i64, i64* @menuBar, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @menuBar, align 8
  %6 = call i32 @gui_motif_menu_colors(i64 %5)
  %7 = load i32, i32* @root_menu, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @submenu_change(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @gui_motif_menu_colors(i64) #1

declare dso_local i32 @submenu_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
