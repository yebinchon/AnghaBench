; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-lock-server.c_cmd_lock_server_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-lock-server.c_cmd_lock_server_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.client = type { i32 }

@cmd_lock_server_entry = common dso_local global i32 0, align 4
@cmd_lock_session_entry = common dso_local global i32 0, align 4
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_lock_server_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_lock_server_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %8 = load %struct.cmd*, %struct.cmd** %4, align 8
  %9 = getelementptr inbounds %struct.cmd, %struct.cmd* %8, i32 0, i32 1
  %10 = load %struct.args*, %struct.args** %9, align 8
  store %struct.args* %10, %struct.args** %6, align 8
  %11 = load %struct.cmd*, %struct.cmd** %4, align 8
  %12 = getelementptr inbounds %struct.cmd, %struct.cmd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, @cmd_lock_server_entry
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @server_lock()
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.cmd*, %struct.cmd** %4, align 8
  %19 = getelementptr inbounds %struct.cmd, %struct.cmd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, @cmd_lock_session_entry
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %24 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @server_lock_session(i32 %26)
  br label %39

28:                                               ; preds = %17
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %30 = load %struct.args*, %struct.args** %6, align 8
  %31 = call i32 @args_get(%struct.args* %30, i8 signext 116)
  %32 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %29, i32 %31, i32 0)
  store %struct.client* %32, %struct.client** %7, align 8
  %33 = icmp eq %struct.client* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load %struct.client*, %struct.client** %7, align 8
  %38 = call i32 @server_lock_client(%struct.client* %37)
  br label %39

39:                                               ; preds = %36, %22
  br label %40

40:                                               ; preds = %39, %15
  %41 = call i32 (...) @recalculate_sizes()
  %42 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @server_lock(...) #1

declare dso_local i32 @server_lock_session(i32) #1

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @server_lock_client(%struct.client*) #1

declare dso_local i32 @recalculate_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
