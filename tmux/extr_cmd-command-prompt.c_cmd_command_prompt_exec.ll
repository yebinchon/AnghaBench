; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { i32 }
%struct.cmd_command_prompt_cdata = type { i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.client = type { i32* }

@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%.*s) \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@PROMPT_SINGLE = common dso_local global i32 0, align 4
@PROMPT_NUMERIC = common dso_local global i32 0, align 4
@PROMPT_INCREMENTAL = common dso_local global i32 0, align 4
@cmd_command_prompt_callback = common dso_local global i32 0, align 4
@cmd_command_prompt_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_command_prompt_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_command_prompt_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_command_prompt_cdata*, align 8
  %10 = alloca %struct.client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %15 = load %struct.cmd*, %struct.cmd** %4, align 8
  %16 = getelementptr inbounds %struct.cmd, %struct.cmd* %15, i32 0, i32 0
  %17 = load %struct.args*, %struct.args** %16, align 8
  store %struct.args* %17, %struct.args** %6, align 8
  store i8* null, i8** %13, align 8
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %19 = load %struct.args*, %struct.args** %6, align 8
  %20 = call i8* @args_get(%struct.args* %19, i8 signext 116)
  %21 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %18, i8* %20, i32 0)
  store %struct.client* %21, %struct.client** %10, align 8
  %22 = icmp eq %struct.client* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %181

25:                                               ; preds = %2
  %26 = load %struct.client*, %struct.client** %10, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %31, i32* %3, align 4
  br label %181

32:                                               ; preds = %25
  %33 = call %struct.cmd_command_prompt_cdata* @xcalloc(i32 1, i32 48)
  store %struct.cmd_command_prompt_cdata* %33, %struct.cmd_command_prompt_cdata** %9, align 8
  %34 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %35 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %37 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %39 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %41 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %43 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %45 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.args*, %struct.args** %6, align 8
  %47 = getelementptr inbounds %struct.args, %struct.args* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %32
  %51 = load %struct.args*, %struct.args** %6, align 8
  %52 = getelementptr inbounds %struct.args, %struct.args* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @xstrdup(i8* %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %59 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  br label %65

60:                                               ; preds = %32
  %61 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %64 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %63, i32 0, i32 6
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.args*, %struct.args** %6, align 8
  %67 = call i8* @args_get(%struct.args* %66, i8 signext 112)
  store i8* %67, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @xstrdup(i8* %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %74 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  br label %100

75:                                               ; preds = %65
  %76 = load %struct.args*, %struct.args** %6, align 8
  %77 = getelementptr inbounds %struct.args, %struct.args* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %82 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @strcspn(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %84, i64* %14, align 8
  %85 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %86 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %85, i32 0, i32 5
  %87 = bitcast i32** %86 to i8**
  %88 = load i64, i64* %14, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %91 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 (i8**, i8*, ...) @xasprintf(i8** %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32* %92)
  br label %99

94:                                               ; preds = %75
  %95 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %98 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %97, i32 0, i32 5
  store i32* %96, i32** %98, align 8
  br label %99

99:                                               ; preds = %94, %80
  br label %100

100:                                              ; preds = %99, %69
  %101 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %102 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %105 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %104, i32 0, i32 4
  store i32* %103, i32** %105, align 8
  %106 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %107 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %106, i32 0, i32 4
  %108 = call i8* @strsep(i32** %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i8*, i8** %12, align 8
  %113 = call i8* @xstrdup(i8* %112)
  store i8* %113, i8** %11, align 8
  br label %117

114:                                              ; preds = %100
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 (i8**, i8*, ...) @xasprintf(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.args*, %struct.args** %6, align 8
  %119 = call i8* @args_get(%struct.args* %118, i8 signext 73)
  store i8* %119, i8** %7, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i8*, i8** %7, align 8
  %123 = call i8* @xstrdup(i8* %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %126 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  %127 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %128 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %131 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %133 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %132, i32 0, i32 2
  %134 = call i8* @strsep(i32** %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %134, i8** %13, align 8
  br label %135

135:                                              ; preds = %121, %117
  %136 = load %struct.args*, %struct.args** %6, align 8
  %137 = call i64 @args_has(%struct.args* %136, i8 signext 49)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* @PROMPT_SINGLE, align 4
  %141 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %142 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %167

145:                                              ; preds = %135
  %146 = load %struct.args*, %struct.args** %6, align 8
  %147 = call i64 @args_has(%struct.args* %146, i8 signext 78)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* @PROMPT_NUMERIC, align 4
  %151 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %152 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %166

155:                                              ; preds = %145
  %156 = load %struct.args*, %struct.args** %6, align 8
  %157 = call i64 @args_has(%struct.args* %156, i8 signext 105)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32, i32* @PROMPT_INCREMENTAL, align 4
  %161 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %162 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %155
  br label %166

166:                                              ; preds = %165, %149
  br label %167

167:                                              ; preds = %166, %139
  %168 = load %struct.client*, %struct.client** %10, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load i32, i32* @cmd_command_prompt_callback, align 4
  %172 = load i32, i32* @cmd_command_prompt_free, align 4
  %173 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %174 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %9, align 8
  %175 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @status_prompt_set(%struct.client* %168, i8* %169, i8* %170, i32 %171, i32 %172, %struct.cmd_command_prompt_cdata* %173, i32 %176)
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %167, %30, %23
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.cmd_command_prompt_cdata* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strcspn(i32*, i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, ...) #1

declare dso_local i8* @strsep(i32**, i8*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @status_prompt_set(%struct.client*, i8*, i8*, i32, i32, %struct.cmd_command_prompt_cdata*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
