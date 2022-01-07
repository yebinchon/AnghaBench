; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-bind-key.c_cmd_bind_key_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-bind-key.c_cmd_bind_key_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i8**, i32 }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@KEYC_NONE = common dso_local global i64 0, align 8
@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"unknown key: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"empty command\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_bind_key_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_bind_key_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_parse_result*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %12 = load %struct.cmd*, %struct.cmd** %4, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load %struct.args*, %struct.args** %13, align 8
  store %struct.args* %14, %struct.args** %6, align 8
  %15 = load %struct.args*, %struct.args** %6, align 8
  %16 = getelementptr inbounds %struct.args, %struct.args* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %10, align 8
  %18 = load %struct.args*, %struct.args** %6, align 8
  %19 = getelementptr inbounds %struct.args, %struct.args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @key_string_lookup_string(i8* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @KEYC_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @KEYC_UNKNOWN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %2
  %33 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %28
  %40 = load %struct.args*, %struct.args** %6, align 8
  %41 = call i64 @args_has(%struct.args* %40, i8 signext 84)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.args*, %struct.args** %6, align 8
  %45 = call i8* @args_get(%struct.args* %44, i8 signext 84)
  store i8* %45, i8** %8, align 8
  br label %53

46:                                               ; preds = %39
  %47 = load %struct.args*, %struct.args** %6, align 8
  %48 = call i64 @args_has(%struct.args* %47, i8 signext 110)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %52

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8**, i8*** %10, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %59, i32* null)
  store %struct.cmd_parse_result* %60, %struct.cmd_parse_result** %9, align 8
  br label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i8**, i8*** %10, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = call %struct.cmd_parse_result* @cmd_parse_from_arguments(i32 %63, i8** %65, i32* null)
  store %struct.cmd_parse_result* %66, %struct.cmd_parse_result** %9, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %69 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %87 [
    i32 130, label %71
    i32 129, label %75
    i32 128, label %86
  ]

71:                                               ; preds = %67
  %72 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %73 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %97

75:                                               ; preds = %67
  %76 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %77 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %78 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %82 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %85, i32* %3, align 4
  br label %97

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %67, %86
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.args*, %struct.args** %6, align 8
  %91 = call i64 @args_has(%struct.args* %90, i8 signext 114)
  %92 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %93 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @key_bindings_add(i8* %88, i64 %89, i64 %91, i32 %94)
  %96 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %87, %75, %71, %32
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @key_string_lookup_string(i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_arguments(i32, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @key_bindings_add(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
