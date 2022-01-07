; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_adjust_charheight.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_adjust_charheight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@p_linespace = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_adjust_charheight() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  %3 = call i32 @PfQueryFontInfo(i32 %2, %struct.TYPE_4__* %1)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = sub nsw i32 0, %5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %7, %9
  %11 = load i32, i32* @p_linespace, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 0, %15
  %17 = load i32, i32* @p_linespace, align 4
  %18 = sdiv i32 %17, 2
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %20 = load i32, i32* @OK, align 4
  ret i32 %20
}

declare dso_local i32 @PfQueryFontInfo(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
