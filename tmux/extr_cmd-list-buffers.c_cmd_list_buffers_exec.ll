; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-list-buffers.c_cmd_list_buffers_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-list-buffers.c_cmd_list_buffers_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.paste_buffer = type { i32 }
%struct.format_tree = type { i32 }

@LIST_BUFFERS_TEMPLATE = common dso_local global i8* null, align 8
@FORMAT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_list_buffers_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_list_buffers_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca %struct.paste_buffer*, align 8
  %7 = alloca %struct.format_tree*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %10 = load %struct.cmd*, %struct.cmd** %3, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 0
  %12 = load %struct.args*, %struct.args** %11, align 8
  store %struct.args* %12, %struct.args** %5, align 8
  %13 = load %struct.args*, %struct.args** %5, align 8
  %14 = call i8* @args_get(%struct.args* %13, float 7.000000e+01)
  store i8* %14, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** @LIST_BUFFERS_TEMPLATE, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %16, %2
  store %struct.paste_buffer* null, %struct.paste_buffer** %6, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = load %struct.paste_buffer*, %struct.paste_buffer** %6, align 8
  %21 = call %struct.paste_buffer* @paste_walk(%struct.paste_buffer* %20)
  store %struct.paste_buffer* %21, %struct.paste_buffer** %6, align 8
  %22 = icmp ne %struct.paste_buffer* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %28 = load i32, i32* @FORMAT_NONE, align 4
  %29 = call %struct.format_tree* @format_create(i32 %26, %struct.cmdq_item* %27, i32 %28, i32 0)
  store %struct.format_tree* %29, %struct.format_tree** %7, align 8
  %30 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %31 = load %struct.paste_buffer*, %struct.paste_buffer** %6, align 8
  %32 = call i32 @format_defaults_paste_buffer(%struct.format_tree* %30, %struct.paste_buffer* %31)
  %33 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @format_expand(%struct.format_tree* %33, i8* %34)
  store i8* %35, i8** %8, align 8
  %36 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @cmdq_print(%struct.cmdq_item* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %42 = call i32 @format_free(%struct.format_tree* %41)
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %44
}

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local %struct.paste_buffer* @paste_walk(%struct.paste_buffer*) #1

declare dso_local %struct.format_tree* @format_create(i32, %struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @format_defaults_paste_buffer(%struct.format_tree*, %struct.paste_buffer*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
