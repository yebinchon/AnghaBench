; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.cmd_display_panes_data* }
%struct.cmd_display_panes_data = type { %struct.cmd_display_panes_data*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @cmd_display_panes_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_display_panes_free(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.cmd_display_panes_data*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 0
  %6 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %5, align 8
  store %struct.cmd_display_panes_data* %6, %struct.cmd_display_panes_data** %3, align 8
  %7 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %3, align 8
  %8 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %3, align 8
  %13 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @cmdq_continue(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %3, align 8
  %18 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %17, i32 0, i32 0
  %19 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %18, align 8
  %20 = call i32 @free(%struct.cmd_display_panes_data* %19)
  %21 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %3, align 8
  %22 = call i32 @free(%struct.cmd_display_panes_data* %21)
  ret void
}

declare dso_local i32 @cmdq_continue(i32*) #1

declare dso_local i32 @free(%struct.cmd_display_panes_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
