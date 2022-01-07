; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-attach-session.c_cmd_attach_session_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-attach-session.c_cmd_attach_session_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_attach_session_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_attach_session_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.args*, align 8
  store %struct.cmd* %0, %struct.cmd** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %6 = load %struct.cmd*, %struct.cmd** %3, align 8
  %7 = getelementptr inbounds %struct.cmd, %struct.cmd* %6, i32 0, i32 0
  %8 = load %struct.args*, %struct.args** %7, align 8
  store %struct.args* %8, %struct.args** %5, align 8
  %9 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %10 = load %struct.args*, %struct.args** %5, align 8
  %11 = call i32 @args_get(%struct.args* %10, i8 signext 116)
  %12 = load %struct.args*, %struct.args** %5, align 8
  %13 = call i32 @args_has(%struct.args* %12, i8 signext 100)
  %14 = load %struct.args*, %struct.args** %5, align 8
  %15 = call i32 @args_has(%struct.args* %14, i8 signext 120)
  %16 = load %struct.args*, %struct.args** %5, align 8
  %17 = call i32 @args_has(%struct.args* %16, i8 signext 114)
  %18 = load %struct.args*, %struct.args** %5, align 8
  %19 = call i32 @args_get(%struct.args* %18, i8 signext 99)
  %20 = load %struct.args*, %struct.args** %5, align 8
  %21 = call i32 @args_has(%struct.args* %20, i8 signext 69)
  %22 = call i32 @cmd_attach_session(%struct.cmdq_item* %9, i32 %11, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21)
  ret i32 %22
}

declare dso_local i32 @cmd_attach_session(%struct.cmdq_item*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
