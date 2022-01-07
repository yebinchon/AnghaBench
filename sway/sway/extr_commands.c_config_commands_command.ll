; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_config_commands_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_config_commands_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.command_policy** }
%struct.command_policy = type { i8*, i32 }
%struct.cmd_results = type { i32 }
%struct.cmd_handler = type { i32 }
%struct.anon = type { i8*, i32 }

@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@CMD_BLOCK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unknown/invalid command '%s'\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@CONTEXT_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"binding\00", align 1
@CONTEXT_BINDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ipc\00", align 1
@CONTEXT_IPC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"criteria\00", align 1
@CONTEXT_CRITERIA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@CONTEXT_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Invalid command context %s\00", align 1
@config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Unable to allocate security policy\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Set command policy for %s to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @config_commands_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_handler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x %struct.anon], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.command_policy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.command_policy*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i8** @split_args(i8* %15, i32* %4)
  store i8** %16, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @CMD_SUCCESS, align 4
  %21 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %20, i8* null)
  store %struct.cmd_results* %21, %struct.cmd_results** %3, align 8
  br label %175

22:                                               ; preds = %1
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @CMD_BLOCK_END, align 4
  %31 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %30, i8* null)
  store %struct.cmd_results* %31, %struct.cmd_results** %3, align 8
  br label %175

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct.cmd_handler* @find_handler(i8* %33, i32* null, i32 0)
  store %struct.cmd_handler* %34, %struct.cmd_handler** %7, align 8
  %35 = load %struct.cmd_handler*, %struct.cmd_handler** %7, align 8
  %36 = icmp ne %struct.cmd_handler* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @CMD_INVALID, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store %struct.cmd_results* %44, %struct.cmd_results** %3, align 8
  br label %175

45:                                               ; preds = %37, %32
  store i32 0, i32* %8, align 4
  %46 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 0
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 1
  %49 = load i32, i32* @CONTEXT_CONFIG, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %46, i64 1
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  %53 = load i32, i32* @CONTEXT_BINDING, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %50, i64 1
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1
  %57 = load i32, i32* @CONTEXT_IPC, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %54, i64 1
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 1
  %61 = load i32, i32* @CONTEXT_CRITERIA, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %58, i64 1
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 1
  %65 = load i32, i32* @CONTEXT_ALL, align 4
  store i32 %65, i32* %64, align 8
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %109, %45
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %66
  store i64 0, i64* %11, align 8
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %72, 5
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 16
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %78, i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %71

91:                                               ; preds = %86, %71
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 5
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @CMD_INVALID, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  store %struct.cmd_results* %101, %struct.cmd_results** %3, align 8
  br label %175

102:                                              ; preds = %91
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %66

112:                                              ; preds = %66
  store %struct.command_policy* null, %struct.command_policy** %12, align 8
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %113
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load %struct.command_policy**, %struct.command_policy*** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.command_policy*, %struct.command_policy** %126, i64 %128
  %130 = load %struct.command_policy*, %struct.command_policy** %129, align 8
  store %struct.command_policy* %130, %struct.command_policy** %14, align 8
  %131 = load %struct.command_policy*, %struct.command_policy** %14, align 8
  %132 = getelementptr inbounds %struct.command_policy, %struct.command_policy* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @strcmp(i8* %133, i8* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %121
  %138 = load %struct.command_policy*, %struct.command_policy** %14, align 8
  store %struct.command_policy* %138, %struct.command_policy** %12, align 8
  br label %143

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %113

143:                                              ; preds = %137, %113
  %144 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %145 = icmp ne %struct.command_policy* %144, null
  br i1 %145, label %161, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %6, align 8
  %148 = call %struct.command_policy* @alloc_command_policy(i8* %147)
  store %struct.command_policy* %148, %struct.command_policy** %12, align 8
  %149 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %150 = call i32 @sway_assert(%struct.command_policy* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @CMD_INVALID, align 4
  %154 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store %struct.cmd_results* %154, %struct.cmd_results** %3, align 8
  br label %175

155:                                              ; preds = %146
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %160 = call i32 @list_add(%struct.TYPE_3__* %158, %struct.command_policy* %159)
  br label %161

161:                                              ; preds = %155, %143
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %164 = getelementptr inbounds %struct.command_policy, %struct.command_policy* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @SWAY_INFO, align 4
  %166 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %167 = getelementptr inbounds %struct.command_policy, %struct.command_policy* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.command_policy*, %struct.command_policy** %12, align 8
  %170 = getelementptr inbounds %struct.command_policy, %struct.command_policy* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @sway_log(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %168, i32 %171)
  %173 = load i32, i32* @CMD_SUCCESS, align 4
  %174 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %173, i8* null)
  store %struct.cmd_results* %174, %struct.cmd_results** %3, align 8
  br label %175

175:                                              ; preds = %161, %152, %94, %41, %29, %19
  %176 = load i32, i32* %4, align 4
  %177 = load i8**, i8*** %5, align 8
  %178 = call i32 @free_argv(i32 %176, i8** %177)
  %179 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %179
}

declare dso_local i8** @split_args(i8*, i32*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_handler* @find_handler(i8*, i32*, i32) #1

declare dso_local %struct.command_policy* @alloc_command_policy(i8*) #1

declare dso_local i32 @sway_assert(%struct.command_policy*, i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_3__*, %struct.command_policy*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @free_argv(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
