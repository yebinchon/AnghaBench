; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-swap-window.c_cmd_swap_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-swap-window.c_cmd_swap_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.session*, %struct.winlink* }
%struct.session = type { i32 }
%struct.winlink = type { i32, %struct.window* }
%struct.window = type { i32 }
%struct.TYPE_3__ = type { %struct.session*, %struct.winlink* }
%struct.session_group = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"can't move window, sessions are grouped\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@wentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_swap_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_swap_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.session*, align 8
  %8 = alloca %struct.session_group*, align 8
  %9 = alloca %struct.session_group*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.winlink*, align 8
  %12 = alloca %struct.window*, align 8
  %13 = alloca %struct.window*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %14 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %15 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.winlink*, %struct.winlink** %16, align 8
  store %struct.winlink* %17, %struct.winlink** %10, align 8
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.session*, %struct.session** %20, align 8
  store %struct.session* %21, %struct.session** %6, align 8
  %22 = load %struct.session*, %struct.session** %6, align 8
  %23 = call %struct.session_group* @session_group_contains(%struct.session* %22)
  store %struct.session_group* %23, %struct.session_group** %8, align 8
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.winlink*, %struct.winlink** %26, align 8
  store %struct.winlink* %27, %struct.winlink** %11, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.session*, %struct.session** %30, align 8
  store %struct.session* %31, %struct.session** %7, align 8
  %32 = load %struct.session*, %struct.session** %7, align 8
  %33 = call %struct.session_group* @session_group_contains(%struct.session* %32)
  store %struct.session_group* %33, %struct.session_group** %9, align 8
  %34 = load %struct.session*, %struct.session** %6, align 8
  %35 = load %struct.session*, %struct.session** %7, align 8
  %36 = icmp ne %struct.session* %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %2
  %38 = load %struct.session_group*, %struct.session_group** %8, align 8
  %39 = icmp ne %struct.session_group* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.session_group*, %struct.session_group** %9, align 8
  %42 = icmp ne %struct.session_group* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.session_group*, %struct.session_group** %8, align 8
  %45 = load %struct.session_group*, %struct.session_group** %9, align 8
  %46 = icmp eq %struct.session_group* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %49 = call i32 @cmdq_error(%struct.cmdq_item* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %50, i32* %3, align 4
  br label %131

51:                                               ; preds = %43, %40, %37, %2
  %52 = load %struct.winlink*, %struct.winlink** %11, align 8
  %53 = getelementptr inbounds %struct.winlink, %struct.winlink* %52, i32 0, i32 1
  %54 = load %struct.window*, %struct.window** %53, align 8
  %55 = load %struct.winlink*, %struct.winlink** %10, align 8
  %56 = getelementptr inbounds %struct.winlink, %struct.winlink* %55, i32 0, i32 1
  %57 = load %struct.window*, %struct.window** %56, align 8
  %58 = icmp eq %struct.window* %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %60, i32* %3, align 4
  br label %131

61:                                               ; preds = %51
  %62 = load %struct.winlink*, %struct.winlink** %11, align 8
  %63 = getelementptr inbounds %struct.winlink, %struct.winlink* %62, i32 0, i32 1
  %64 = load %struct.window*, %struct.window** %63, align 8
  store %struct.window* %64, %struct.window** %13, align 8
  %65 = load %struct.window*, %struct.window** %13, align 8
  %66 = getelementptr inbounds %struct.window, %struct.window* %65, i32 0, i32 0
  %67 = load %struct.winlink*, %struct.winlink** %11, align 8
  %68 = load i32, i32* @wentry, align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.winlink* %67, i32 %68)
  %70 = load %struct.winlink*, %struct.winlink** %10, align 8
  %71 = getelementptr inbounds %struct.winlink, %struct.winlink* %70, i32 0, i32 1
  %72 = load %struct.window*, %struct.window** %71, align 8
  store %struct.window* %72, %struct.window** %12, align 8
  %73 = load %struct.window*, %struct.window** %12, align 8
  %74 = getelementptr inbounds %struct.window, %struct.window* %73, i32 0, i32 0
  %75 = load %struct.winlink*, %struct.winlink** %10, align 8
  %76 = load i32, i32* @wentry, align 4
  %77 = call i32 @TAILQ_REMOVE(i32* %74, %struct.winlink* %75, i32 %76)
  %78 = load %struct.window*, %struct.window** %12, align 8
  %79 = load %struct.winlink*, %struct.winlink** %11, align 8
  %80 = getelementptr inbounds %struct.winlink, %struct.winlink* %79, i32 0, i32 1
  store %struct.window* %78, %struct.window** %80, align 8
  %81 = load %struct.window*, %struct.window** %12, align 8
  %82 = getelementptr inbounds %struct.window, %struct.window* %81, i32 0, i32 0
  %83 = load %struct.winlink*, %struct.winlink** %11, align 8
  %84 = load i32, i32* @wentry, align 4
  %85 = call i32 @TAILQ_INSERT_TAIL(i32* %82, %struct.winlink* %83, i32 %84)
  %86 = load %struct.window*, %struct.window** %13, align 8
  %87 = load %struct.winlink*, %struct.winlink** %10, align 8
  %88 = getelementptr inbounds %struct.winlink, %struct.winlink* %87, i32 0, i32 1
  store %struct.window* %86, %struct.window** %88, align 8
  %89 = load %struct.window*, %struct.window** %13, align 8
  %90 = getelementptr inbounds %struct.window, %struct.window* %89, i32 0, i32 0
  %91 = load %struct.winlink*, %struct.winlink** %10, align 8
  %92 = load i32, i32* @wentry, align 4
  %93 = call i32 @TAILQ_INSERT_TAIL(i32* %90, %struct.winlink* %91, i32 %92)
  %94 = load %struct.cmd*, %struct.cmd** %4, align 8
  %95 = getelementptr inbounds %struct.cmd, %struct.cmd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @args_has(i32 %96, i8 signext 100)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %61
  %100 = load %struct.session*, %struct.session** %7, align 8
  %101 = load %struct.winlink*, %struct.winlink** %11, align 8
  %102 = getelementptr inbounds %struct.winlink, %struct.winlink* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @session_select(%struct.session* %100, i32 %103)
  %105 = load %struct.session*, %struct.session** %6, align 8
  %106 = load %struct.session*, %struct.session** %7, align 8
  %107 = icmp ne %struct.session* %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.session*, %struct.session** %6, align 8
  %110 = load %struct.winlink*, %struct.winlink** %10, align 8
  %111 = getelementptr inbounds %struct.winlink, %struct.winlink* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @session_select(%struct.session* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %99
  br label %115

115:                                              ; preds = %114, %61
  %116 = load %struct.session*, %struct.session** %6, align 8
  %117 = call i32 @session_group_synchronize_from(%struct.session* %116)
  %118 = load %struct.session*, %struct.session** %6, align 8
  %119 = call i32 @server_redraw_session_group(%struct.session* %118)
  %120 = load %struct.session*, %struct.session** %6, align 8
  %121 = load %struct.session*, %struct.session** %7, align 8
  %122 = icmp ne %struct.session* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load %struct.session*, %struct.session** %7, align 8
  %125 = call i32 @session_group_synchronize_from(%struct.session* %124)
  %126 = load %struct.session*, %struct.session** %7, align 8
  %127 = call i32 @server_redraw_session_group(%struct.session* %126)
  br label %128

128:                                              ; preds = %123, %115
  %129 = call i32 (...) @recalculate_sizes()
  %130 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %59, %47
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.session_group* @session_group_contains(%struct.session*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.winlink*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.winlink*, i32) #1

declare dso_local i64 @args_has(i32, i8 signext) #1

declare dso_local i32 @session_select(%struct.session*, i32) #1

declare dso_local i32 @session_group_synchronize_from(%struct.session*) #1

declare dso_local i32 @server_redraw_session_group(%struct.session*) #1

declare dso_local i32 @recalculate_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
