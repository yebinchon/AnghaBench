; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-set-environment.c_cmd_set_environment_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-set-environment.c_cmd_set_environment_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i32 }
%struct.cmd = type { %struct.args* }
%struct.args = type { i8**, i32 }
%struct.cmdq_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.environ* }

@.str = private unnamed_addr constant [20 x i8] c"empty variable name\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"variable name contains =\00", align 1
@global_environ = common dso_local global %struct.environ* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"no such session: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"no current session\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can't specify a value with -u\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't specify a value with -r\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"no value specified\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_set_environment_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_environment_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.environ*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %11 = load %struct.cmd*, %struct.cmd** %4, align 8
  %12 = getelementptr inbounds %struct.cmd, %struct.cmd* %11, i32 0, i32 0
  %13 = load %struct.args*, %struct.args** %12, align 8
  store %struct.args* %13, %struct.args** %6, align 8
  %14 = load %struct.args*, %struct.args** %6, align 8
  %15 = getelementptr inbounds %struct.args, %struct.args* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %25 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %131

27:                                               ; preds = %2
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @strchr(i8* %28, i8 signext 61)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %33 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %131

35:                                               ; preds = %27
  %36 = load %struct.args*, %struct.args** %6, align 8
  %37 = getelementptr inbounds %struct.args, %struct.args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %9, align 8
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.args*, %struct.args** %6, align 8
  %43 = getelementptr inbounds %struct.args, %struct.args* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %41, %40
  %48 = load %struct.cmd*, %struct.cmd** %4, align 8
  %49 = getelementptr inbounds %struct.cmd, %struct.cmd* %48, i32 0, i32 0
  %50 = load %struct.args*, %struct.args** %49, align 8
  %51 = call i64 @args_has(%struct.args* %50, i8 signext 103)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.environ*, %struct.environ** @global_environ, align 8
  store %struct.environ* %54, %struct.environ** %7, align 8
  br label %82

55:                                               ; preds = %47
  %56 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %57 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp eq %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.args*, %struct.args** %6, align 8
  %63 = call i8* @args_get(%struct.args* %62, i8 signext 116)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %72 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %131

75:                                               ; preds = %55
  %76 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %77 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.environ*, %struct.environ** %80, align 8
  store %struct.environ* %81, %struct.environ** %7, align 8
  br label %82

82:                                               ; preds = %75, %53
  %83 = load %struct.cmd*, %struct.cmd** %4, align 8
  %84 = getelementptr inbounds %struct.cmd, %struct.cmd* %83, i32 0, i32 0
  %85 = load %struct.args*, %struct.args** %84, align 8
  %86 = call i64 @args_has(%struct.args* %85, i8 signext 117)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %93 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %94, i32* %3, align 4
  br label %131

95:                                               ; preds = %88
  %96 = load %struct.environ*, %struct.environ** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @environ_unset(%struct.environ* %96, i8* %97)
  br label %129

99:                                               ; preds = %82
  %100 = load %struct.cmd*, %struct.cmd** %4, align 8
  %101 = getelementptr inbounds %struct.cmd, %struct.cmd* %100, i32 0, i32 0
  %102 = load %struct.args*, %struct.args** %101, align 8
  %103 = call i64 @args_has(%struct.args* %102, i8 signext 114)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %110 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %111, i32* %3, align 4
  br label %131

112:                                              ; preds = %105
  %113 = load %struct.environ*, %struct.environ** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @environ_clear(%struct.environ* %113, i8* %114)
  br label %128

116:                                              ; preds = %99
  %117 = load i8*, i8** %9, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %121 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %122, i32* %3, align 4
  br label %131

123:                                              ; preds = %116
  %124 = load %struct.environ*, %struct.environ** %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @environ_set(%struct.environ* %124, i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %123, %112
  br label %129

129:                                              ; preds = %128, %95
  %130 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %119, %108, %91, %73, %31, %23
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @environ_unset(%struct.environ*, i8*) #1

declare dso_local i32 @environ_clear(%struct.environ*, i8*) #1

declare dso_local i32 @environ_set(%struct.environ*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
