; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i32 }
%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.environ* }
%struct.environ_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no such session: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@global_environ = common dso_local global %struct.environ* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"no current session\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown variable: %s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_show_environment_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_show_environment_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.environ*, align 8
  %8 = alloca %struct.environ_entry*, align 8
  %9 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %10 = load %struct.cmd*, %struct.cmd** %4, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 0
  %12 = load %struct.args*, %struct.args** %11, align 8
  store %struct.args* %12, %struct.args** %6, align 8
  %13 = load %struct.args*, %struct.args** %6, align 8
  %14 = call i8* @args_get(%struct.args* %13, i8 signext 116)
  store i8* %14, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %108

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.cmd*, %struct.cmd** %4, align 8
  %30 = getelementptr inbounds %struct.cmd, %struct.cmd* %29, i32 0, i32 0
  %31 = load %struct.args*, %struct.args** %30, align 8
  %32 = call i64 @args_has(%struct.args* %31, i8 signext 103)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.environ*, %struct.environ** @global_environ, align 8
  store %struct.environ* %35, %struct.environ** %7, align 8
  br label %63

36:                                               ; preds = %28
  %37 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %38 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.args*, %struct.args** %6, align 8
  %44 = call i8* @args_get(%struct.args* %43, i8 signext 116)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %53 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %108

56:                                               ; preds = %36
  %57 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %58 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.environ*, %struct.environ** %61, align 8
  store %struct.environ* %62, %struct.environ** %7, align 8
  br label %63

63:                                               ; preds = %56, %34
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = getelementptr inbounds %struct.args, %struct.args* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load %struct.environ*, %struct.environ** %7, align 8
  %70 = load %struct.args*, %struct.args** %6, align 8
  %71 = getelementptr inbounds %struct.args, %struct.args* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call %struct.environ_entry* @environ_find(%struct.environ* %69, i8* %74)
  store %struct.environ_entry* %75, %struct.environ_entry** %8, align 8
  %76 = load %struct.environ_entry*, %struct.environ_entry** %8, align 8
  %77 = icmp eq %struct.environ_entry* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %80 = load %struct.args*, %struct.args** %6, align 8
  %81 = getelementptr inbounds %struct.args, %struct.args* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %86, i32* %3, align 4
  br label %108

87:                                               ; preds = %68
  %88 = load %struct.cmd*, %struct.cmd** %4, align 8
  %89 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %90 = load %struct.environ_entry*, %struct.environ_entry** %8, align 8
  %91 = call i32 @cmd_show_environment_print(%struct.cmd* %88, %struct.cmdq_item* %89, %struct.environ_entry* %90)
  %92 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %92, i32* %3, align 4
  br label %108

93:                                               ; preds = %63
  %94 = load %struct.environ*, %struct.environ** %7, align 8
  %95 = call %struct.environ_entry* @environ_first(%struct.environ* %94)
  store %struct.environ_entry* %95, %struct.environ_entry** %8, align 8
  br label %96

96:                                               ; preds = %99, %93
  %97 = load %struct.environ_entry*, %struct.environ_entry** %8, align 8
  %98 = icmp ne %struct.environ_entry* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.cmd*, %struct.cmd** %4, align 8
  %101 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %102 = load %struct.environ_entry*, %struct.environ_entry** %8, align 8
  %103 = call i32 @cmd_show_environment_print(%struct.cmd* %100, %struct.cmdq_item* %101, %struct.environ_entry* %102)
  %104 = load %struct.environ_entry*, %struct.environ_entry** %8, align 8
  %105 = call %struct.environ_entry* @environ_next(%struct.environ_entry* %104)
  store %struct.environ_entry* %105, %struct.environ_entry** %8, align 8
  br label %96

106:                                              ; preds = %96
  %107 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %87, %78, %54, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local %struct.environ_entry* @environ_find(%struct.environ*, i8*) #1

declare dso_local i32 @cmd_show_environment_print(%struct.cmd*, %struct.cmdq_item*, %struct.environ_entry*) #1

declare dso_local %struct.environ_entry* @environ_first(%struct.environ*) #1

declare dso_local %struct.environ_entry* @environ_next(%struct.environ_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
