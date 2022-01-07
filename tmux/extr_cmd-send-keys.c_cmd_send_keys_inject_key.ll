; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_inject_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_inject_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.cmd_find_state = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cmdq_item = type { i32, i32 }
%struct.window_mode_entry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.window_mode_entry*)* }
%struct.key_table = type { i32 }
%struct.key_binding = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"xterm-keys\00", align 1
@KEYC_XTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmdq_item* (%struct.client*, %struct.cmd_find_state*, %struct.cmdq_item*, i32)* @cmd_send_keys_inject_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmdq_item* @cmd_send_keys_inject_key(%struct.client* %0, %struct.cmd_find_state* %1, %struct.cmdq_item* %2, i32 %3) #0 {
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.client*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.cmdq_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.window_mode_entry*, align 8
  %11 = alloca %struct.key_table*, align 8
  %12 = alloca %struct.key_binding*, align 8
  store %struct.client* %0, %struct.client** %6, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %7, align 8
  store %struct.cmdq_item* %2, %struct.cmdq_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %14 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %16)
  store %struct.window_mode_entry* %17, %struct.window_mode_entry** %10, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  %19 = icmp eq %struct.window_mode_entry* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  %22 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.window_mode_entry*)*, i32 (%struct.window_mode_entry*)** %24, align 8
  %26 = icmp eq i32 (%struct.window_mode_entry*)* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %20, %4
  %28 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %29 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @options_get_number(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* @KEYC_XTERM, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %43 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %46 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %49 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %52 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @window_pane_key(%struct.TYPE_6__* %44, i32 %47, i32 %50, i32 %53, i32 %54, i32* null)
  %56 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  store %struct.cmdq_item* %56, %struct.cmdq_item** %5, align 8
  br label %89

57:                                               ; preds = %20
  %58 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  %59 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.window_mode_entry*)*, i32 (%struct.window_mode_entry*)** %61, align 8
  %63 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  %64 = call i32 %62(%struct.window_mode_entry* %63)
  %65 = call %struct.key_table* @key_bindings_get_table(i32 %64, i32 1)
  store %struct.key_table* %65, %struct.key_table** %11, align 8
  %66 = load %struct.key_table*, %struct.key_table** %11, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @KEYC_XTERM, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call %struct.key_binding* @key_bindings_get(%struct.key_table* %66, i32 %70)
  store %struct.key_binding* %71, %struct.key_binding** %12, align 8
  %72 = load %struct.key_binding*, %struct.key_binding** %12, align 8
  %73 = icmp ne %struct.key_binding* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %57
  %75 = load %struct.key_table*, %struct.key_table** %11, align 8
  %76 = getelementptr inbounds %struct.key_table, %struct.key_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.key_binding*, %struct.key_binding** %12, align 8
  %80 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %81 = load %struct.client*, %struct.client** %6, align 8
  %82 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %83 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %82, i32 0, i32 0
  %84 = call %struct.cmdq_item* @key_bindings_dispatch(%struct.key_binding* %79, %struct.cmdq_item* %80, %struct.client* %81, i32* null, i32* %83)
  store %struct.cmdq_item* %84, %struct.cmdq_item** %8, align 8
  %85 = load %struct.key_table*, %struct.key_table** %11, align 8
  %86 = call i32 @key_bindings_unref_table(%struct.key_table* %85)
  br label %87

87:                                               ; preds = %74, %57
  %88 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  store %struct.cmdq_item* %88, %struct.cmdq_item** %5, align 8
  br label %89

89:                                               ; preds = %87, %41
  %90 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  ret %struct.cmdq_item* %90
}

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @window_pane_key(%struct.TYPE_6__*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.key_table* @key_bindings_get_table(i32, i32) #1

declare dso_local %struct.key_binding* @key_bindings_get(%struct.key_table*, i32) #1

declare dso_local %struct.cmdq_item* @key_bindings_dispatch(%struct.key_binding*, %struct.cmdq_item*, %struct.client*, i32*, i32*) #1

declare dso_local i32 @key_bindings_unref_table(%struct.key_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
