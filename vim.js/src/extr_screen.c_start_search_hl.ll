; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_screen.c_start_search_hl.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_screen.c_start_search_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@p_hls = common dso_local global i64 0, align 8
@no_hlsearch = common dso_local global i32 0, align 4
@search_hl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HLF_L = common dso_local global i32 0, align 4
@p_rdt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_search_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_search_hl() #0 {
  %1 = load i64, i64* @p_hls, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @no_hlsearch, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = call i32 @last_pat_prog(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @search_hl, i32 0, i32 2))
  %8 = load i32, i32* @HLF_L, align 4
  %9 = call i32 @hl_attr(i32 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @search_hl, i32 0, i32 1), align 4
  br label %10

10:                                               ; preds = %6, %3, %0
  ret void
}

declare dso_local i32 @last_pat_prog(i32*) #1

declare dso_local i32 @hl_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
