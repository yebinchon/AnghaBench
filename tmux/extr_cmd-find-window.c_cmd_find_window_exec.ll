; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-find-window.c_cmd_find_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-find-window.c_cmd_find_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i8** }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"#{||:#{C:%s},#{||:#{m:*%s*,#{window_name}},#{m:*%s*,#{pane_title}}}}\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"#{||:#{C:%s},#{m:*%s*,#{window_name}}}\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"#{||:#{C:%s},#{m:*%s*,#{pane_title}}}\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"#{||:#{m:*%s*,#{window_name}},#{m:*%s*,#{pane_title}}}\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"#{C:%s}\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"#{m:*%s*,#{window_name}}\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"#{m:*%s*,#{pane_title}}\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"#{||:#{C/r:%s},#{||:#{m/r:%s,#{window_name}},#{m/r:%s,#{pane_title}}}}\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"#{||:#{C/r:%s},#{m/r:%s,#{window_name}}}\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"#{||:#{C/r:%s},#{m/r:%s,#{pane_title}}}\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"#{||:#{m/r:%s,#{window_name}},#{m/r:%s,#{pane_title}}}\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"#{C/r:%s}\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"#{m/r:%s,#{window_name}}\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"#{m/r:%s,#{pane_title}}\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@window_tree_mode = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_find_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_find_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %14 = load %struct.cmd*, %struct.cmd** %3, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 0
  %16 = load %struct.args*, %struct.args** %15, align 8
  store %struct.args* %16, %struct.args** %5, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.window_pane*, %struct.window_pane** %19, align 8
  store %struct.window_pane* %20, %struct.window_pane** %7, align 8
  %21 = load %struct.args*, %struct.args** %5, align 8
  %22 = getelementptr inbounds %struct.args, %struct.args* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %26 = load %struct.args*, %struct.args** %5, align 8
  %27 = call i32 @args_has(%struct.args* %26, i8 signext 67)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.args*, %struct.args** %5, align 8
  %29 = call i32 @args_has(%struct.args* %28, i8 signext 78)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.args*, %struct.args** %5, align 8
  %31 = call i32 @args_has(%struct.args* %30, i8 signext 84)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37, %34, %2
  %42 = load %struct.args*, %struct.args** %5, align 8
  %43 = call i32 @args_has(%struct.args* %42, i8 signext 114)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %110, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56, i8* %57)
  br label %109

59:                                               ; preds = %51, %48, %45
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %67)
  br label %108

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %77)
  br label %107

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %87)
  br label %106

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %105

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  br label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %92
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %75
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108, %54
  br label %175

110:                                              ; preds = %41
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* %120, i8* %121, i8* %122)
  br label %174

124:                                              ; preds = %116, %113, %110
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %131, i8* %132)
  br label %173

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %141, i8* %142)
  br label %172

144:                                              ; preds = %137, %134
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8* %151, i8* %152)
  br label %171

154:                                              ; preds = %147, %144
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %158)
  br label %170

160:                                              ; preds = %154
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %164)
  br label %169

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %157
  br label %171

171:                                              ; preds = %170, %150
  br label %172

172:                                              ; preds = %171, %140
  br label %173

173:                                              ; preds = %172, %130
  br label %174

174:                                              ; preds = %173, %119
  br label %175

175:                                              ; preds = %174, %109
  %176 = call %struct.args* @args_parse(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 1, i8** %10)
  store %struct.args* %176, %struct.args** %6, align 8
  %177 = load %struct.args*, %struct.args** %5, align 8
  %178 = call i32 @args_has(%struct.args* %177, i8 signext 90)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.args*, %struct.args** %6, align 8
  %182 = call i32 @args_set(%struct.args* %181, float 9.000000e+01, i8* null)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load %struct.args*, %struct.args** %6, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @args_set(%struct.args* %184, float 1.020000e+02, i8* %185)
  %187 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %188 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %189 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %188, i32 0, i32 0
  %190 = load %struct.args*, %struct.args** %6, align 8
  %191 = call i32 @window_pane_set_mode(%struct.window_pane* %187, i32* @window_tree_mode, %struct.TYPE_2__* %189, %struct.args* %190)
  %192 = load %struct.args*, %struct.args** %6, align 8
  %193 = call i32 @args_free(%struct.args* %192)
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %196
}

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, ...) #1

declare dso_local %struct.args* @args_parse(i8*, i32, i8**) #1

declare dso_local i32 @args_set(%struct.args*, float, i8*) #1

declare dso_local i32 @window_pane_set_mode(%struct.window_pane*, i32*, %struct.TYPE_2__*, %struct.args*) #1

declare dso_local i32 @args_free(%struct.args*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
