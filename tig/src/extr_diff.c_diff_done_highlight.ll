; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_done_highlight.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_done_highlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_state = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_done_highlight(%struct.diff_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diff_state*, align 8
  store %struct.diff_state* %0, %struct.diff_state** %3, align 8
  %4 = load %struct.diff_state*, %struct.diff_state** %3, align 8
  %5 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.diff_state*, %struct.diff_state** %3, align 8
  %11 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %10, i32 0, i32 0
  %12 = call i32 @io_kill(i32* %11)
  %13 = load %struct.diff_state*, %struct.diff_state** %3, align 8
  %14 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %13, i32 0, i32 0
  %15 = call i32 @io_done(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @io_kill(i32*) #1

declare dso_local i32 @io_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
