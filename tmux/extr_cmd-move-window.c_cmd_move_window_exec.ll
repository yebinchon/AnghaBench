; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-move-window.c_cmd_move_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-move-window.c_cmd_move_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.session* }
%struct.session = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.winlink*, %struct.session* }
%struct.winlink = type { i32 }

@CMD_FIND_SESSION = common dso_local global i32 0, align 4
@CMD_FIND_QUIET = common dso_local global i32 0, align 4
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@CMD_FIND_WINDOW = common dso_local global i32 0, align 4
@CMD_FIND_WINDOW_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't link window: %s\00", align 1
@cmd_move_window_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"renumber-windows\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_move_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_move_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %16 = load %struct.cmd*, %struct.cmd** %4, align 8
  %17 = getelementptr inbounds %struct.cmd, %struct.cmd* %16, i32 0, i32 1
  %18 = load %struct.args*, %struct.args** %17, align 8
  store %struct.args* %18, %struct.args** %6, align 8
  %19 = load %struct.args*, %struct.args** %6, align 8
  %20 = call i8* @args_get(%struct.args* %19, i8 signext 116)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.args*, %struct.args** %6, align 8
  %22 = call i32 @args_has(%struct.args* %21, i8 signext 114)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 0
  %27 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @CMD_FIND_SESSION, align 4
  %30 = load i32, i32* @CMD_FIND_QUIET, align 4
  %31 = call i64 @cmd_find_target(%struct.TYPE_4__* %26, %struct.cmdq_item* %27, i8* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %146

35:                                               ; preds = %24
  %36 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %37 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.session*, %struct.session** %38, align 8
  %40 = call i32 @session_renumber_windows(%struct.session* %39)
  %41 = call i32 (...) @recalculate_sizes()
  %42 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %43 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.session*, %struct.session** %44, align 8
  %46 = call i32 @server_status_session(%struct.session* %45)
  %47 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %47, i32* %3, align 4
  br label %146

48:                                               ; preds = %2
  %49 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %50 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %49, i32 0, i32 0
  %51 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @CMD_FIND_WINDOW, align 4
  %54 = load i32, i32* @CMD_FIND_WINDOW_INDEX, align 4
  %55 = call i64 @cmd_find_target(%struct.TYPE_4__* %50, %struct.cmdq_item* %51, i8* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %146

59:                                               ; preds = %48
  %60 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %61 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.session*, %struct.session** %62, align 8
  store %struct.session* %63, %struct.session** %8, align 8
  %64 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %65 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.session*, %struct.session** %66, align 8
  store %struct.session* %67, %struct.session** %9, align 8
  %68 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %69 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.winlink*, %struct.winlink** %70, align 8
  store %struct.winlink* %71, %struct.winlink** %10, align 8
  %72 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %73 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  %76 = load %struct.cmd*, %struct.cmd** %4, align 8
  %77 = getelementptr inbounds %struct.cmd, %struct.cmd* %76, i32 0, i32 1
  %78 = load %struct.args*, %struct.args** %77, align 8
  %79 = call i32 @args_has(%struct.args* %78, i8 signext 107)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.cmd*, %struct.cmd** %4, align 8
  %81 = getelementptr inbounds %struct.cmd, %struct.cmd* %80, i32 0, i32 1
  %82 = load %struct.args*, %struct.args** %81, align 8
  %83 = call i32 @args_has(%struct.args* %82, i8 signext 100)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.cmd*, %struct.cmd** %4, align 8
  %85 = getelementptr inbounds %struct.cmd, %struct.cmd* %84, i32 0, i32 1
  %86 = load %struct.args*, %struct.args** %85, align 8
  %87 = call i32 @args_has(%struct.args* %86, i8 signext 115)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.cmd*, %struct.cmd** %4, align 8
  %89 = getelementptr inbounds %struct.cmd, %struct.cmd* %88, i32 0, i32 1
  %90 = load %struct.args*, %struct.args** %89, align 8
  %91 = call i32 @args_has(%struct.args* %90, i8 signext 97)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %59
  %94 = load %struct.session*, %struct.session** %9, align 8
  %95 = load %struct.session*, %struct.session** %9, align 8
  %96 = getelementptr inbounds %struct.session, %struct.session* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @winlink_shuffle_up(%struct.session* %94, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %146

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %59
  %104 = load %struct.session*, %struct.session** %8, align 8
  %105 = load %struct.winlink*, %struct.winlink** %10, align 8
  %106 = load %struct.session*, %struct.session** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i64 @server_link_window(%struct.session* %104, %struct.winlink* %105, %struct.session* %106, i32 %107, i32 %108, i32 %112, i8** %11)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %103
  %116 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @cmdq_error(%struct.cmdq_item* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %146

122:                                              ; preds = %103
  %123 = load %struct.cmd*, %struct.cmd** %4, align 8
  %124 = getelementptr inbounds %struct.cmd, %struct.cmd* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, @cmd_move_window_entry
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.session*, %struct.session** %8, align 8
  %129 = load %struct.winlink*, %struct.winlink** %10, align 8
  %130 = call i32 @server_unlink_window(%struct.session* %128, %struct.winlink* %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load %struct.session*, %struct.session** %8, align 8
  %136 = getelementptr inbounds %struct.session, %struct.session* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @options_get_number(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.session*, %struct.session** %8, align 8
  %142 = call i32 @session_renumber_windows(%struct.session* %141)
  br label %143

143:                                              ; preds = %140, %134, %131
  %144 = call i32 (...) @recalculate_sizes()
  %145 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %115, %100, %57, %35, %33
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @cmd_find_target(%struct.TYPE_4__*, %struct.cmdq_item*, i8*, i32, i32) #1

declare dso_local i32 @session_renumber_windows(%struct.session*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_status_session(%struct.session*) #1

declare dso_local i32 @winlink_shuffle_up(%struct.session*, i32) #1

declare dso_local i64 @server_link_window(%struct.session*, %struct.winlink*, %struct.session*, i32, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @server_unlink_window(%struct.session*, %struct.winlink*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
