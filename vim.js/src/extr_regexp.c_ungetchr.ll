; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_regexp.c_ungetchr.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_regexp.c_ungetchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curchr = common dso_local global i32 0, align 4
@nextchr = common dso_local global i32 0, align 4
@prevchr = common dso_local global i32 0, align 4
@prevprevchr = common dso_local global i32 0, align 4
@prev_at_start = common dso_local global i32 0, align 4
@at_start = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@prevchr_len = common dso_local global i64 0, align 8
@regparse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ungetchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ungetchr() #0 {
  %1 = load i32, i32* @curchr, align 4
  store i32 %1, i32* @nextchr, align 4
  %2 = load i32, i32* @prevchr, align 4
  store i32 %2, i32* @curchr, align 4
  %3 = load i32, i32* @prevprevchr, align 4
  store i32 %3, i32* @prevchr, align 4
  %4 = load i32, i32* @prev_at_start, align 4
  store i32 %4, i32* @at_start, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* @prev_at_start, align 4
  %6 = load i64, i64* @prevchr_len, align 8
  %7 = load i32, i32* @regparse, align 4
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @regparse, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
