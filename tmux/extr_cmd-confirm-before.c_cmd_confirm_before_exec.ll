; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-confirm-before.c_cmd_confirm_before_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-confirm-before.c_cmd_confirm_before_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32* }
%struct.cmdq_item = type { i32 }
%struct.cmd_confirm_before_data = type { i8* }
%struct.client = type { i32 }

@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Confirm '%s'? (y/n) \00", align 1
@cmd_confirm_before_callback = common dso_local global i32 0, align 4
@cmd_confirm_before_free = common dso_local global i32 0, align 4
@PROMPT_SINGLE = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_confirm_before_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_confirm_before_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_confirm_before_data*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 0
  %16 = load %struct.args*, %struct.args** %15, align 8
  store %struct.args* %16, %struct.args** %6, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = load %struct.args*, %struct.args** %6, align 8
  %19 = call i8* @args_get(%struct.args* %18, i8 signext 116)
  %20 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %17, i8* %19, i32 0)
  store %struct.client* %20, %struct.client** %8, align 8
  %21 = icmp eq %struct.client* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.args*, %struct.args** %6, align 8
  %26 = call i8* @args_get(%struct.args* %25, i8 signext 112)
  store i8* %26, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @xasprintf(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.args*, %struct.args** %6, align 8
  %33 = getelementptr inbounds %struct.args, %struct.args* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @xstrdup(i32 %36)
  store i8* %37, i8** %10, align 8
  store i8* %37, i8** %12, align 8
  %38 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @xasprintf(i8** %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %31, %28
  %44 = call %struct.cmd_confirm_before_data* @xmalloc(i32 8)
  store %struct.cmd_confirm_before_data* %44, %struct.cmd_confirm_before_data** %7, align 8
  %45 = load %struct.args*, %struct.args** %6, align 8
  %46 = getelementptr inbounds %struct.args, %struct.args* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @xstrdup(i32 %49)
  %51 = load %struct.cmd_confirm_before_data*, %struct.cmd_confirm_before_data** %7, align 8
  %52 = getelementptr inbounds %struct.cmd_confirm_before_data, %struct.cmd_confirm_before_data* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.client*, %struct.client** %8, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @cmd_confirm_before_callback, align 4
  %56 = load i32, i32* @cmd_confirm_before_free, align 4
  %57 = load %struct.cmd_confirm_before_data*, %struct.cmd_confirm_before_data** %7, align 8
  %58 = load i32, i32* @PROMPT_SINGLE, align 4
  %59 = call i32 @status_prompt_set(%struct.client* %53, i8* %54, i32* null, i32 %55, i32 %56, %struct.cmd_confirm_before_data* %57, i32 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %43, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_confirm_before_data* @xmalloc(i32) #1

declare dso_local i32 @status_prompt_set(%struct.client*, i8*, i32*, i32, i32, %struct.cmd_confirm_before_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
