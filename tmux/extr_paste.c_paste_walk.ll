; ModuleID = '/home/carl/AnghaBench/tmux/extr_paste.c_paste_walk.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_paste.c_paste_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_buffer = type { i32 }

@paste_time_tree = common dso_local global i32 0, align 4
@paste_by_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.paste_buffer* @paste_walk(%struct.paste_buffer* %0) #0 {
  %2 = alloca %struct.paste_buffer*, align 8
  %3 = alloca %struct.paste_buffer*, align 8
  store %struct.paste_buffer* %0, %struct.paste_buffer** %3, align 8
  %4 = load %struct.paste_buffer*, %struct.paste_buffer** %3, align 8
  %5 = icmp eq %struct.paste_buffer* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @paste_time_tree, align 4
  %8 = call %struct.paste_buffer* @RB_MIN(i32 %7, i32* @paste_by_time)
  store %struct.paste_buffer* %8, %struct.paste_buffer** %2, align 8
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @paste_time_tree, align 4
  %11 = load %struct.paste_buffer*, %struct.paste_buffer** %3, align 8
  %12 = call %struct.paste_buffer* @RB_NEXT(i32 %10, i32* @paste_by_time, %struct.paste_buffer* %11)
  store %struct.paste_buffer* %12, %struct.paste_buffer** %2, align 8
  br label %13

13:                                               ; preds = %9, %6
  %14 = load %struct.paste_buffer*, %struct.paste_buffer** %2, align 8
  ret %struct.paste_buffer* %14
}

declare dso_local %struct.paste_buffer* @RB_MIN(i32, i32*) #1

declare dso_local %struct.paste_buffer* @RB_NEXT(i32, i32*, %struct.paste_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
