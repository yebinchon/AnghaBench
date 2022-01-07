; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { i32 }
%struct.client = type { i32*, %struct.session* }
%struct.session = type { i32 }
%struct.cmd_display_panes_data = type { %struct.cmdq_item*, i8* }

@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"delay %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"display-panes-time\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"select-pane -t '%%'\00", align 1
@cmd_display_panes_draw = common dso_local global i32 0, align 4
@cmd_display_panes_key = common dso_local global i32 0, align 4
@cmd_display_panes_free = common dso_local global i32 0, align 4
@CMD_RETURN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_display_panes_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_display_panes_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmd_display_panes_data*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %12 = load %struct.cmd*, %struct.cmd** %4, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load %struct.args*, %struct.args** %13, align 8
  store %struct.args* %14, %struct.args** %6, align 8
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %16 = load %struct.args*, %struct.args** %6, align 8
  %17 = call i32 @args_get(%struct.args* %16, i8 signext 116)
  %18 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %15, i32 %17, i32 0)
  store %struct.client* %18, %struct.client** %7, align 8
  %19 = icmp eq %struct.client* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.client*, %struct.client** %7, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 1
  %25 = load %struct.session*, %struct.session** %24, align 8
  store %struct.session* %25, %struct.session** %8, align 8
  %26 = load %struct.client*, %struct.client** %7, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %22
  %33 = load %struct.args*, %struct.args** %6, align 8
  %34 = call i64 @args_has(%struct.args* %33, i8 signext 100)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.args*, %struct.args** %6, align 8
  %38 = load i32, i32* @UINT_MAX, align 4
  %39 = call i32 @args_strtonum(%struct.args* %37, i8 signext 100, i32 0, i32 %38, i8** %10)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @cmdq_error(%struct.cmdq_item* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %100

49:                                               ; preds = %36
  br label %55

50:                                               ; preds = %32
  %51 = load %struct.session*, %struct.session** %8, align 8
  %52 = getelementptr inbounds %struct.session, %struct.session* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @options_get_number(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = call %struct.cmd_display_panes_data* @xmalloc(i32 16)
  store %struct.cmd_display_panes_data* %56, %struct.cmd_display_panes_data** %11, align 8
  %57 = load %struct.args*, %struct.args** %6, align 8
  %58 = getelementptr inbounds %struct.args, %struct.args* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.args*, %struct.args** %6, align 8
  %63 = getelementptr inbounds %struct.args, %struct.args* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @xstrdup(i8* %66)
  %68 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %11, align 8
  %69 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %55
  %71 = call i8* @xstrdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %11, align 8
  %73 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %61
  %75 = load %struct.args*, %struct.args** %6, align 8
  %76 = call i64 @args_has(%struct.args* %75, i8 signext 98)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %11, align 8
  %80 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %79, i32 0, i32 0
  store %struct.cmdq_item* null, %struct.cmdq_item** %80, align 8
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %83 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %11, align 8
  %84 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %83, i32 0, i32 0
  store %struct.cmdq_item* %82, %struct.cmdq_item** %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.client*, %struct.client** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @cmd_display_panes_draw, align 4
  %89 = load i32, i32* @cmd_display_panes_key, align 4
  %90 = load i32, i32* @cmd_display_panes_free, align 4
  %91 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %11, align 8
  %92 = call i32 @server_client_set_overlay(%struct.client* %86, i32 %87, i32 %88, i32 %89, i32 %90, %struct.cmd_display_panes_data* %91)
  %93 = load %struct.args*, %struct.args** %6, align 8
  %94 = call i64 @args_has(%struct.args* %93, i8 signext 98)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %85
  %99 = load i32, i32* @CMD_RETURN_WAIT, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %96, %42, %30, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local %struct.cmd_display_panes_data* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @server_client_set_overlay(%struct.client*, i32, i32, i32, i32, %struct.cmd_display_panes_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
