; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-list-keys.c_cmd_list_keys_commands.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-list-keys.c_cmd_list_keys_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_entry = type { i8*, i8*, i8* }
%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.format_tree = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"#{command_list_name}#{?command_list_alias, (#{command_list_alias}),} #{command_list_usage}\00", align 1
@FORMAT_NONE = common dso_local global i32 0, align 4
@cmd_table = common dso_local global %struct.cmd_entry** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"command_list_name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"command_list_alias\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"command_list_usage\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_list_keys_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_list_keys_commands(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca %struct.cmd_entry**, align 8
  %7 = alloca %struct.cmd_entry*, align 8
  %8 = alloca %struct.format_tree*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %12 = load %struct.cmd*, %struct.cmd** %3, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load %struct.args*, %struct.args** %13, align 8
  store %struct.args* %14, %struct.args** %5, align 8
  %15 = load %struct.args*, %struct.args** %5, align 8
  %16 = call i8* @args_get(%struct.args* %15, float 7.000000e+01)
  store i8* %16, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %24 = load i32, i32* @FORMAT_NONE, align 4
  %25 = call %struct.format_tree* @format_create(i32 %22, %struct.cmdq_item* %23, i32 %24, i32 0)
  store %struct.format_tree* %25, %struct.format_tree** %8, align 8
  %26 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %27 = call i32 @format_defaults(%struct.format_tree* %26, i32* null, i32* null, i32* null, i32* null)
  %28 = load %struct.cmd_entry**, %struct.cmd_entry*** @cmd_table, align 8
  store %struct.cmd_entry** %28, %struct.cmd_entry*** %6, align 8
  br label %29

29:                                               ; preds = %81, %19
  %30 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %31 = load %struct.cmd_entry*, %struct.cmd_entry** %30, align 8
  %32 = icmp ne %struct.cmd_entry* %31, null
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %35 = load %struct.cmd_entry*, %struct.cmd_entry** %34, align 8
  store %struct.cmd_entry* %35, %struct.cmd_entry** %7, align 8
  %36 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %37 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %38 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @format_add(%struct.format_tree* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %47 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %10, align 8
  br label %50

49:                                               ; preds = %33
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @format_add(%struct.format_tree* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %55 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %60 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  br label %63

62:                                               ; preds = %50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @format_add(%struct.format_tree* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @format_expand(%struct.format_tree* %67, i8* %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @cmdq_print(%struct.cmdq_item* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %78
  %82 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %83 = getelementptr inbounds %struct.cmd_entry*, %struct.cmd_entry** %82, i32 1
  store %struct.cmd_entry** %83, %struct.cmd_entry*** %6, align 8
  br label %29

84:                                               ; preds = %29
  %85 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %86 = call i32 @format_free(%struct.format_tree* %85)
  %87 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %87
}

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local %struct.format_tree* @format_create(i32, %struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i8*) #1

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
