; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-select-layout.c_cmd_select_layout_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-select-layout.c_cmd_select_layout_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink* }
%struct.window_pane = type { i32 }
%struct.winlink = type { %struct.window* }
%struct.window = type { i8*, i32, i32 }

@cmd_next_layout_entry = common dso_local global i32 0, align 4
@cmd_previous_layout_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't set layout: %s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"window-layout-changed\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_select_layout_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_select_layout_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.window*, align 8
  %9 = alloca %struct.window_pane*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %15 = load %struct.cmd*, %struct.cmd** %4, align 8
  %16 = getelementptr inbounds %struct.cmd, %struct.cmd* %15, i32 0, i32 1
  %17 = load %struct.args*, %struct.args** %16, align 8
  store %struct.args* %17, %struct.args** %6, align 8
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.winlink*, %struct.winlink** %20, align 8
  store %struct.winlink* %21, %struct.winlink** %7, align 8
  %22 = load %struct.winlink*, %struct.winlink** %7, align 8
  %23 = getelementptr inbounds %struct.winlink, %struct.winlink* %22, i32 0, i32 0
  %24 = load %struct.window*, %struct.window** %23, align 8
  store %struct.window* %24, %struct.window** %8, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.window_pane*, %struct.window_pane** %27, align 8
  store %struct.window_pane* %28, %struct.window_pane** %9, align 8
  %29 = load %struct.window*, %struct.window** %8, align 8
  %30 = call i32 @server_unzoom_window(%struct.window* %29)
  %31 = load %struct.cmd*, %struct.cmd** %4, align 8
  %32 = getelementptr inbounds %struct.cmd, %struct.cmd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, @cmd_next_layout_entry
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.args*, %struct.args** %6, align 8
  %37 = call i64 @args_has(%struct.args* %36, i8 signext 110)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.cmd*, %struct.cmd** %4, align 8
  %42 = getelementptr inbounds %struct.cmd, %struct.cmd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, @cmd_previous_layout_entry
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.args*, %struct.args** %6, align 8
  %47 = call i64 @args_has(%struct.args* %46, i8 signext 112)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %13, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.window*, %struct.window** %8, align 8
  %52 = getelementptr inbounds %struct.window, %struct.window* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %11, align 8
  %54 = load %struct.window*, %struct.window** %8, align 8
  %55 = getelementptr inbounds %struct.window, %struct.window* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @layout_dump(i32 %56)
  %58 = load %struct.window*, %struct.window** %8, align 8
  %59 = getelementptr inbounds %struct.window, %struct.window* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62, %50
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.window*, %struct.window** %8, align 8
  %70 = call i32 @layout_set_next(%struct.window* %69)
  br label %74

71:                                               ; preds = %65
  %72 = load %struct.window*, %struct.window** %8, align 8
  %73 = call i32 @layout_set_previous(%struct.window* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %146

75:                                               ; preds = %62
  %76 = load %struct.args*, %struct.args** %6, align 8
  %77 = call i64 @args_has(%struct.args* %76, i8 signext 69)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %81 = call i32 @layout_spread_out(%struct.window_pane* %80)
  br label %146

82:                                               ; preds = %75
  %83 = load %struct.args*, %struct.args** %6, align 8
  %84 = call i64 @args_has(%struct.args* %83, i8 signext 111)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %82
  %87 = load %struct.args*, %struct.args** %6, align 8
  %88 = getelementptr inbounds %struct.args, %struct.args* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.window*, %struct.window** %8, align 8
  %93 = getelementptr inbounds %struct.window, %struct.window* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %14, align 4
  br label %102

95:                                               ; preds = %86
  %96 = load %struct.args*, %struct.args** %6, align 8
  %97 = getelementptr inbounds %struct.args, %struct.args* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @layout_set_lookup(i8* %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.window*, %struct.window** %8, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @layout_set_select(%struct.window* %106, i32 %107)
  br label %146

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %82
  %111 = load %struct.args*, %struct.args** %6, align 8
  %112 = getelementptr inbounds %struct.args, %struct.args* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.args*, %struct.args** %6, align 8
  %117 = getelementptr inbounds %struct.args, %struct.args* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %10, align 8
  br label %129

121:                                              ; preds = %110
  %122 = load %struct.args*, %struct.args** %6, align 8
  %123 = call i64 @args_has(%struct.args* %122, i8 signext 111)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  store i8* %126, i8** %10, align 8
  br label %128

127:                                              ; preds = %121
  store i8* null, i8** %10, align 8
  br label %128

128:                                              ; preds = %127, %125
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.window*, %struct.window** %8, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @layout_parse(%struct.window* %133, i8* %134)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @cmdq_error(%struct.cmdq_item* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %139)
  br label %155

141:                                              ; preds = %132
  br label %146

142:                                              ; preds = %129
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %145, i32* %3, align 4
  br label %164

146:                                              ; preds = %141, %105, %79, %74
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @free(i8* %147)
  %149 = call i32 (...) @recalculate_sizes()
  %150 = load %struct.window*, %struct.window** %8, align 8
  %151 = call i32 @server_redraw_window(%struct.window* %150)
  %152 = load %struct.window*, %struct.window** %8, align 8
  %153 = call i32 @notify_window(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.window* %152)
  %154 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %154, i32* %3, align 4
  br label %164

155:                                              ; preds = %137
  %156 = load %struct.window*, %struct.window** %8, align 8
  %157 = getelementptr inbounds %struct.window, %struct.window* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.window*, %struct.window** %8, align 8
  %162 = getelementptr inbounds %struct.window, %struct.window* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %155, %146, %142
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @layout_dump(i32) #1

declare dso_local i32 @layout_set_next(%struct.window*) #1

declare dso_local i32 @layout_set_previous(%struct.window*) #1

declare dso_local i32 @layout_spread_out(%struct.window_pane*) #1

declare dso_local i32 @layout_set_lookup(i8*) #1

declare dso_local i32 @layout_set_select(%struct.window*, i32) #1

declare dso_local i32 @layout_parse(%struct.window*, i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local i32 @notify_window(i8*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
