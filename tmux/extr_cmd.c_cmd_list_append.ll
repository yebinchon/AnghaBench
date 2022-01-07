; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_list_append.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list = type { i32, i32 }
%struct.cmd = type { i32 }

@qentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_list_append(%struct.cmd_list* %0, %struct.cmd* %1) #0 {
  %3 = alloca %struct.cmd_list*, align 8
  %4 = alloca %struct.cmd*, align 8
  store %struct.cmd_list* %0, %struct.cmd_list** %3, align 8
  store %struct.cmd* %1, %struct.cmd** %4, align 8
  %5 = load %struct.cmd_list*, %struct.cmd_list** %3, align 8
  %6 = getelementptr inbounds %struct.cmd_list, %struct.cmd_list* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cmd*, %struct.cmd** %4, align 8
  %9 = getelementptr inbounds %struct.cmd, %struct.cmd* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cmd_list*, %struct.cmd_list** %3, align 8
  %11 = getelementptr inbounds %struct.cmd_list, %struct.cmd_list* %10, i32 0, i32 0
  %12 = load %struct.cmd*, %struct.cmd** %4, align 8
  %13 = load i32, i32* @qentry, align 4
  %14 = call i32 @TAILQ_INSERT_TAIL(i32* %11, %struct.cmd* %12, i32 %13)
  ret void
}

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
