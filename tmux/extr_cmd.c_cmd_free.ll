; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, %struct.cmd*, i32, i32, %struct.cmd* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_free(%struct.cmd* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  store %struct.cmd* %0, %struct.cmd** %2, align 8
  %3 = load %struct.cmd*, %struct.cmd** %2, align 8
  %4 = getelementptr inbounds %struct.cmd, %struct.cmd* %3, i32 0, i32 4
  %5 = load %struct.cmd*, %struct.cmd** %4, align 8
  %6 = call i32 @free(%struct.cmd* %5)
  %7 = load %struct.cmd*, %struct.cmd** %2, align 8
  %8 = getelementptr inbounds %struct.cmd, %struct.cmd* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cmd*, %struct.cmd** %2, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cmd_free_argv(i32 %9, i32 %12)
  %14 = load %struct.cmd*, %struct.cmd** %2, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 1
  %16 = load %struct.cmd*, %struct.cmd** %15, align 8
  %17 = call i32 @free(%struct.cmd* %16)
  %18 = load %struct.cmd*, %struct.cmd** %2, align 8
  %19 = getelementptr inbounds %struct.cmd, %struct.cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @args_free(i32 %20)
  %22 = load %struct.cmd*, %struct.cmd** %2, align 8
  %23 = call i32 @free(%struct.cmd* %22)
  ret void
}

declare dso_local i32 @free(%struct.cmd*) #1

declare dso_local i32 @cmd_free_argv(i32, i32) #1

declare dso_local i32 @args_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
