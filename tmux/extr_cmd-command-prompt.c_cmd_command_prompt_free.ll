; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_command_prompt_cdata = type { %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_command_prompt_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_command_prompt_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmd_command_prompt_cdata*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cmd_command_prompt_cdata*
  store %struct.cmd_command_prompt_cdata* %5, %struct.cmd_command_prompt_cdata** %3, align 8
  %6 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %6, i32 0, i32 2
  %8 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %7, align 8
  %9 = call i32 @free(%struct.cmd_command_prompt_cdata* %8)
  %10 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %3, align 8
  %11 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %10, i32 0, i32 1
  %12 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %11, align 8
  %13 = call i32 @free(%struct.cmd_command_prompt_cdata* %12)
  %14 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %3, align 8
  %15 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %14, i32 0, i32 0
  %16 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %15, align 8
  %17 = call i32 @free(%struct.cmd_command_prompt_cdata* %16)
  %18 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %3, align 8
  %19 = call i32 @free(%struct.cmd_command_prompt_cdata* %18)
  ret void
}

declare dso_local i32 @free(%struct.cmd_command_prompt_cdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
