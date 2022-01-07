; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-respawn-window.c_cmd_respawn_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-respawn-window.c_cmd_respawn_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32, i32 }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.winlink*, %struct.session* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.spawn_context = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.winlink*, %struct.session*, %struct.cmdq_item* }
%struct.args_value = type { i32 }

@SPAWN_RESPAWN = common dso_local global i32 0, align 4
@SPAWN_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"respawn window failed: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_respawn_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_respawn_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.spawn_context, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.args_value*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %13 = load %struct.cmd*, %struct.cmd** %4, align 8
  %14 = getelementptr inbounds %struct.cmd, %struct.cmd* %13, i32 0, i32 0
  %15 = load %struct.args*, %struct.args** %14, align 8
  store %struct.args* %15, %struct.args** %6, align 8
  %16 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %17 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.session*, %struct.session** %18, align 8
  store %struct.session* %19, %struct.session** %8, align 8
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.winlink*, %struct.winlink** %22, align 8
  store %struct.winlink* %23, %struct.winlink** %9, align 8
  store i8* null, i8** %10, align 8
  %24 = call i32 @memset(%struct.spawn_context* %7, i32 0, i32 64)
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 10
  store %struct.cmdq_item* %25, %struct.cmdq_item** %26, align 8
  %27 = load %struct.session*, %struct.session** %8, align 8
  %28 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 9
  store %struct.session* %27, %struct.session** %28, align 8
  %29 = load %struct.winlink*, %struct.winlink** %9, align 8
  %30 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 8
  store %struct.winlink* %29, %struct.winlink** %30, align 8
  %31 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %32 = call i32 @cmd_find_client(%struct.cmdq_item* %31, i32* null, i32 1)
  %33 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 6
  store i32* null, i32** %34, align 8
  %35 = load %struct.args*, %struct.args** %6, align 8
  %36 = getelementptr inbounds %struct.args, %struct.args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load %struct.args*, %struct.args** %6, align 8
  %40 = getelementptr inbounds %struct.args, %struct.args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = call i32 (...) @environ_create()
  %44 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.args*, %struct.args** %6, align 8
  %46 = call i8* @args_first_value(%struct.args* %45, i8 signext 101, %struct.args_value** %12)
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %50, %2
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @environ_put(i32 %52, i8* %53)
  %55 = call i8* @args_next_value(%struct.args_value** %12)
  store i8* %55, i8** %11, align 8
  br label %47

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.args*, %struct.args** %6, align 8
  %59 = call i32 @args_get(%struct.args* %58, i8 signext 99)
  %60 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @SPAWN_RESPAWN, align 4
  %62 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.args*, %struct.args** %6, align 8
  %64 = call i64 @args_has(%struct.args* %63, i8 signext 107)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @SPAWN_KILL, align 4
  %68 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %56
  %72 = call i32* @spawn_window(%struct.spawn_context* %7, i8** %10)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @cmdq_error(%struct.cmdq_item* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %90

81:                                               ; preds = %71
  %82 = load %struct.winlink*, %struct.winlink** %9, align 8
  %83 = getelementptr inbounds %struct.winlink, %struct.winlink* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @server_redraw_window(i32 %84)
  %86 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @environ_free(i32 %87)
  %89 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.spawn_context*, i32, i32) #1

declare dso_local i32 @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i8* @args_first_value(%struct.args*, i8 signext, %struct.args_value**) #1

declare dso_local i32 @environ_put(i32, i8*) #1

declare dso_local i8* @args_next_value(%struct.args_value**) #1

declare dso_local i32 @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32* @spawn_window(%struct.spawn_context*, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @server_redraw_window(i32) #1

declare dso_local i32 @environ_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
