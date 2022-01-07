; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_find_flag.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_find_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_find_state = type { i32 }
%struct.cmd_entry_flag = type { i64, i32, i32 }

@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, %struct.cmd_find_state*, %struct.cmd_entry_flag*)* @cmdq_find_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_find_flag(%struct.cmdq_item* %0, %struct.cmd_find_state* %1, %struct.cmd_entry_flag* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.cmd_find_state*, align 8
  %7 = alloca %struct.cmd_entry_flag*, align 8
  %8 = alloca i8*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %5, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %6, align 8
  store %struct.cmd_entry_flag* %2, %struct.cmd_entry_flag** %7, align 8
  %9 = load %struct.cmd_entry_flag*, %struct.cmd_entry_flag** %7, align 8
  %10 = getelementptr inbounds %struct.cmd_entry_flag, %struct.cmd_entry_flag* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %15 = call i32 @cmd_find_clear_state(%struct.cmd_find_state* %14, i32 0)
  %16 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cmd_entry_flag*, %struct.cmd_entry_flag** %7, align 8
  %24 = getelementptr inbounds %struct.cmd_entry_flag, %struct.cmd_entry_flag* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @args_get(i32 %22, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.cmd_entry_flag*, %struct.cmd_entry_flag** %7, align 8
  %31 = getelementptr inbounds %struct.cmd_entry_flag, %struct.cmd_entry_flag* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cmd_entry_flag*, %struct.cmd_entry_flag** %7, align 8
  %34 = getelementptr inbounds %struct.cmd_entry_flag, %struct.cmd_entry_flag* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @cmd_find_target(%struct.cmd_find_state* %27, %struct.cmdq_item* %28, i8* %29, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %40 = call i32 @cmd_find_clear_state(%struct.cmd_find_state* %39, i32 0)
  %41 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %17
  %43 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %38, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @cmd_find_clear_state(%struct.cmd_find_state*, i32) #1

declare dso_local i8* @args_get(i32, i64) #1

declare dso_local i64 @cmd_find_target(%struct.cmd_find_state*, %struct.cmdq_item*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
