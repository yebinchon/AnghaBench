; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_changed_cline_bef_curs.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_changed_cline_bef_curs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VALID_WROW = common dso_local global i32 0, align 4
@VALID_WCOL = common dso_local global i32 0, align 4
@VALID_VIRTCOL = common dso_local global i32 0, align 4
@VALID_CHEIGHT = common dso_local global i32 0, align 4
@VALID_TOPLINE = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @changed_cline_bef_curs() #0 {
  %1 = load i32, i32* @VALID_WROW, align 4
  %2 = load i32, i32* @VALID_WCOL, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @VALID_VIRTCOL, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @VALID_CHEIGHT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VALID_TOPLINE, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
