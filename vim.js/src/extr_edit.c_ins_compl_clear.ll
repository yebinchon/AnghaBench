; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_clear.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compl_cont_status = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@compl_started = common dso_local global i8* null, align 8
@compl_matches = common dso_local global i64 0, align 8
@compl_pattern = common dso_local global i32* null, align 8
@compl_leader = common dso_local global i32* null, align 8
@edit_submode_extra = common dso_local global i32* null, align 8
@compl_orig_text = common dso_local global i32* null, align 8
@compl_enter_selects = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_compl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_compl_clear() #0 {
  store i64 0, i64* @compl_cont_status, align 8
  %1 = load i8*, i8** @FALSE, align 8
  store i8* %1, i8** @compl_started, align 8
  store i64 0, i64* @compl_matches, align 8
  %2 = load i32*, i32** @compl_pattern, align 8
  %3 = call i32 @vim_free(i32* %2)
  store i32* null, i32** @compl_pattern, align 8
  %4 = load i32*, i32** @compl_leader, align 8
  %5 = call i32 @vim_free(i32* %4)
  store i32* null, i32** @compl_leader, align 8
  store i32* null, i32** @edit_submode_extra, align 8
  %6 = load i32*, i32** @compl_orig_text, align 8
  %7 = call i32 @vim_free(i32* %6)
  store i32* null, i32** @compl_orig_text, align 8
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** @compl_enter_selects, align 8
  ret void
}

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
