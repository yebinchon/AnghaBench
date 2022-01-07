; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_normal.c_clear_showcmd.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_normal.c_clear_showcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@p_sc = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@showcmd_buf = common dso_local global i64* null, align 8
@FALSE = common dso_local global i32 0, align 4
@showcmd_visual = common dso_local global i32 0, align 4
@showcmd_is_clear = common dso_local global i64 0, align 8
@Ctrl_V = common dso_local global i8 0, align 1
@SHOWCMD_COLS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VIsual = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_mode = common dso_local global i8 0, align 1
@curwin = common dso_local global %struct.TYPE_11__* null, align 8
@empty_option = common dso_local global i64* null, align 8
@p_sbr = common dso_local global i64* null, align 8
@p_sel = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_showcmd() #0 {
  %1 = load i32, i32* @p_sc, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %14

4:                                                ; preds = %0
  %5 = load i64, i64* @NUL, align 8
  %6 = load i64*, i64** @showcmd_buf, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 %5, i64* %7, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* @showcmd_visual, align 4
  %9 = load i64, i64* @showcmd_is_clear, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %14

12:                                               ; preds = %4
  %13 = call i32 (...) @display_showcmd()
  br label %14

14:                                               ; preds = %12, %11, %3
  ret void
}

declare dso_local i32 @display_showcmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
